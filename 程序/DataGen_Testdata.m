%function 
% 说明将各个通道的脑电数据从原始文本文件中分离出来
% 该数据为两个类别的测试数据集，
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1  分离通道
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n=1024;
Fs=256;  
fid = fopen('D:\dataSet\dataSet\Testdata\Testdata.txt','r');
t1 = fscanf(fid, '%g %g', [5377 293]);
t1=t1';
%calculate the scp of channel1_test
for j =1:896 
    for i=1:293
        channe1_test(i,j) = t1(i,j+1);
    end
end
%extract the scp of channel2_test
for j =1:896 
    for i=1:293
        channe2_test(i,j) = t1(i,j+897);
    end
end
%extract the scp of channel3_1

for j =1:896 
    for i=1:293
        channe3_test(i,j) =  t1(i,j+1793);
    end
end
%extract the scp of channel4_1

for j =1:896 
    for i=1:293
        channe4_test(i,j) =  t1(i,j+2689);
    end
end
%channe4_cueN = channe4_cueN';
%the result of the command above is 896*896-----wrong. 
%extract the scp of channel5_1
for j =1:896 
    for i=1:293
        channe5_test(i,j) =  t1(i,j+3585);
    end
end
%extract the scp of channel6_1

for j =1:896 
    for i=1:293
        channe6_test(i,j) = t1(i,j+4481);
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2  取测试集SCP特征值，进行分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
feat_c1_test=mean(channe1_test,2);
feat_c2_test=mean(channe2_test,2);
feat_c3_test=mean(channe3_test,2);
feat_c4_test=mean(channe4_test,2);
feat_c5_test=mean(channe5_test,2);
feat_c6_test=mean(channe6_test,2);

feat_SCP_test=zeros(293,2);
for i=1:293
    feat_SCP_test(i,1)=feat_c1_test(i,1);
    feat_SCP_test(i,2)=feat_c2_test(i,1);
end
feat_SCP_test = [ones(size(feat_SCP_test,1),1) feat_SCP_test];
load ('D:\dataSet\dataSet\mat\weight_SCP.mat');
for i=1:293
    testData(i,:)=sum(thetaSCP*feat_SCP_test(i,:));
    prob=sigmoid(testData(i,:));
    if prob>0.5
        label_test_SCP(i,1)=0;
    else
        label_test_SCP(i,1)=1;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3  SCP分类标签与真实标签比较，求得正确率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
fidComp = fopen('D:\dataSet\dataSet\test_labels_data_set_ia.txt','r');
t1Comp= fscanf(fidComp, '%g %g', [1 293]);
t1Comp=t1Comp';
num=0;
for i=1:293
    if label_test_SCP(i,:)==t1Comp(i,:)
        num=num+1;
    end
    dao=1/293;
    correct=num*dao;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4  取测试集POWER特征值，进行分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load ('D:\dataSet\dataSet\mat\class_mtm.mat');
Frefeat_c1_test=mean(powerTest1,2);
Frefeat_c2_test=mean(powerTest2,2);
Frefeat_c3_test=mean(powerTest3,2);
Frefeat_c4_test=mean(powerTest4,2);
Frefeat_c5_test=mean(powerTest5,2);
Frefeat_c6_test=mean(powerTest6,2);

feat_PowerMTM_test=zeros(293,2);
for i=1:293
    feat_PowerMTM_test(i,1)=Frefeat_c4_test(i,1);
    feat_PowerMTM_test(i,2)=Frefeat_c6_test(i,1);
end
feat_PowerMTM_test = [ones(size(feat_PowerMTM_test,1),1) feat_PowerMTM_test];

for i=1:293
    testDataMTM(i,:)=sum(thetaPOWERmtm*feat_PowerMTM_test(i,:));
    probMTM=sigmoid(testDataMTM(i,:));
    if probMTM>0.5
        label_test_PowerMTM(i,1)=0;
    else
        label_test_PowerMTM(i,1)=1;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5  POWER mtm分类标签与真实标签比较，求得正确率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
numMTM=0;
for i=1:293
    if label_test_PowerMTM(i,:)==t1Comp(i,:)
        numMTM=numMTM+1;
    end
    dao=1/293;
    correctMTM=numMTM*dao;
end