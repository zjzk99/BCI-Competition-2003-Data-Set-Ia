%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1  取测试集SCP特征值，进行分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load ('D:\dataSet\dataSet\FeatureSet_Test.mat');
feat_SCP_test = [ones(size(feat_SCP_test,1),1) feat_SCP_test];
load ('D:\dataSet\dataSet\Theta_Trainset.mat');
for i=1:293
    testDataSCP(i,:)=sum(dot(theta_SCP_Trainset',feat_SCP_test(i,:)));
    prob=sigmoid(testDataSCP(i,:));
    if prob>0.5
        label_test_SCP(i,1)=1;
    else
        label_test_SCP(i,1)=0;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2  SCP分类标签与真实标签比较，求得正确率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
fidComp = fopen('D:\dataSet\dataSet\labels_data_set_ia.txt','r');
t1Comp= fscanf(fidComp, '%g %g', [1 293]);
t1Comp=t1Comp';
num=0;
for i=1:293
    if label_test_SCP(i,:)==t1Comp(i,:)
        num=num+1;
    end
    dao=1/293;
    correct_test_SCP=num*dao;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3  取测试集POWER MTM特征值，进行分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
feat_POWmtm_test = [ones(size(feat_POWmtm_test,1),1) feat_POWmtm_test];

for i=1:293
    testDataMTM(i,:)=sum(dot(theta_POWmtm_Trainset,feat_POWmtm_test(i,:)',3));
    probMTM=sigmoid(testDataMTM(i,:));
    if probMTM>0.5
        label_test_PowerMTM(i,1)=1;
    else
        label_test_PowerMTM(i,1)=0;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4  POWER mtm分类标签与真实标签比较，求得正确率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
fidComp = fopen('D:\dataSet\dataSet\labels_data_set_ia.txt','r');
t1Comp= fscanf(fidComp, '%g %g', [1 293]);
t1Comp=t1Comp';
numMTM=0;
for i=1:293
    if label_test_PowerMTM(i,:)==t1Comp(i,:)
        numMTM=numMTM+1;
    end
    dao=1/293;
    correct_test_MTM=numMTM*dao;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5  取测试集POWER WELCH特征值，进行分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
feat_POWwelch_test = [ones(size(feat_POWwelch_test,1),1) feat_POWwelch_test];

for i=1:293
    testDataWELCH(i,:)=sum(dot(theta_POWwelch_Trainset,feat_POWwelch_test(i,:)',3));
    probWELCH=sigmoid(testDataWELCH(i,:));
    if probWELCH>0.5
        label_test_PowerWELCH(i,1)=1;
    else
        label_test_PowerWELCH(i,1)=0;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6  POWER WELCH分类标签与真实标签比较，求得正确率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
fidComp = fopen('D:\dataSet\dataSet\labels_data_set_ia.txt','r');
t1Comp= fscanf(fidComp, '%g %g', [1 293]);
t1Comp=t1Comp';
numWELCH=0;
for i=1:293
    if label_test_PowerWELCH(i,:)==t1Comp(i,:)
        numWELCH=numWELCH+1;
    end
    dao=1/293;
    correct_test_WELCH=numWELCH*dao;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7  取测试集四维MTM特征值，进行分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
feat_POWandMTM_test = [ones(size(feat_POWandMTM_test,1),1) feat_POWandMTM_test];

for i=1:293
    testDataPOWandMTM(i,:)=sum(dot(theta_POWandMTM_Trainset,feat_POWandMTM_test(i,:)'));
    probPOWandMTM=sigmoid(testDataPOWandMTM(i,:));
    if probPOWandMTM>0.5
        label_test_POWandMTM(i,1)=1;
    else
        label_test_POWandMTM(i,1)=0;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 8  四维MTM分类标签与真实标签比较，求得正确率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
fidComp = fopen('D:\dataSet\dataSet\labels_data_set_ia.txt','r');
t1Comp= fscanf(fidComp, '%g %g', [1 293]);
t1Comp=t1Comp';
numPOWandMTM=0;
for i=1:293
    if label_test_POWandMTM(i,:)==t1Comp(i,:)
        numPOWandMTM=numPOWandMTM+1;
    end
    dao=1/293;
    correct_test_POWandMTM=numPOWandMTM*dao;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 9  取测试集四维WELCH特征值，进行分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
feat_POWandWELCH_test = [ones(size(feat_POWandWELCH_test,1),1) feat_POWandWELCH_test];

for i=1:293
    testDataPOWandWELCH(i,:)=sum(dot(theta_POWandWELCH_Trainset,feat_POWandWELCH_test(i,:)'));
    probPOWandWELCH=sigmoid(testDataPOWandWELCH(i,:));
    if probPOWandWELCH>0.5
        label_test_POWandWELCH(i,1)=1;
    else
        label_test_POWandWELCH(i,1)=0;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 10  四维WELCH分类标签与真实标签比较，求得正确率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
fidComp = fopen('D:\dataSet\dataSet\labels_data_set_ia.txt','r');
t1Comp= fscanf(fidComp, '%g %g', [1 293]);
t1Comp=t1Comp';
numPOWandWELCH=0;
for i=1:293
    if label_test_POWandWELCH(i,:)==t1Comp(i,:)
        numPOWandWELCH=numPOWandWELCH+1;
    end
    dao=1/293;
    correct_test_POWandWELCH=numPOWandWELCH*dao;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 11  取测试集A5特征值，进行分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load ('D:\dataSet\dataSet\FeatureSet_Test.mat');
feat_A5_test = [ones(size(feat_A5_test,1),1) feat_A5_test];
load ('D:\dataSet\dataSet\Theta_Trainset.mat');
for i=1:293
    testDataA5(i,:)=sum(dot(theta_A5_Trainset',feat_A5_test(i,:)));
    prob=sigmoid(testDataA5(i,:));
    if prob>0.5
        label_test_A5(i,1)=1;
    else
        label_test_A5(i,1)=0;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 12  A5分类标签与真实标签比较，求得正确率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
fidComp = fopen('D:\dataSet\dataSet\labels_data_set_ia.txt','r');
t1Comp= fscanf(fidComp, '%g %g', [1 293]);
t1Comp=t1Comp';
num=0;
for i=1:293
    if label_test_A5(i,:)==t1Comp(i,:)
        num=num+1;
    end
    dao=1/293;
    correct_test_A5=num*dao;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 13  取测试集6D特征值，进行分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load ('D:\dataSet\dataSet\FeatureSet_Test.mat');
feat_6D_test = [ones(size(feat_6D_test,1),1) feat_6D_test];
load ('D:\dataSet\dataSet\Theta_Trainset.mat');
for i=1:293
    testData6D(i,:)=sum(dot(theta_6D_Trainset',feat_6D_test(i,:)));
    prob=sigmoid(testData6D(i,:));
    if prob>0.5
        label_test_6D(i,1)=1;
    else
        label_test_6D(i,1)=0;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 14  6D分类标签与真实标签比较，求得正确率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
fidComp = fopen('D:\dataSet\dataSet\labels_data_set_ia.txt','r');
t1Comp= fscanf(fidComp, '%g %g', [1 293]);
t1Comp=t1Comp';
num=0;
for i=1:293
    if label_test_6D(i,:)==t1Comp(i,:)
        num=num+1;
    end
    dao=1/293;
    correct_test_6D=num*dao;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 15  取测试集energy特征值，进行分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load ('D:\dataSet\dataSet\FeatureSet_Test.mat');
feat_energy_test = [ones(size(feat_energy_test,1),1) feat_energy_test];
load ('D:\dataSet\dataSet\Theta_Trainset.mat');
for i=1:293
    testDataenergy(i,:)=sum(dot(theta_energy_Trainset',feat_energy_test(i,:)));
    prob=sigmoid(testDataenergy(i,:));
    if prob>0.5
        label_test_energy(i,1)=1;
    else
        label_test_energy(i,1)=0;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 16  energy分类标签与真实标签比较，求得正确率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
fidComp = fopen('D:\dataSet\dataSet\labels_data_set_ia.txt','r');
t1Comp= fscanf(fidComp, '%g %g', [1 293]);
t1Comp=t1Comp';
num=0;
for i=1:293
    if label_test_energy(i,:)==t1Comp(i,:)
        num=num+1;
    end
    dao=1/293;
    correct_test_energy=num*dao;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 17  取测试集8D特征值，进行分类
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load ('D:\dataSet\dataSet\FeatureSet_Test.mat');
feat_8D_test = [ones(size(feat_8D_test,1),1) feat_8D_test];
load ('D:\dataSet\dataSet\Theta_Trainset.mat');
for i=1:293
    testData8D(i,:)=sum(dot(theta_8D_Trainset',feat_8D_test(i,:)));
    prob=sigmoid(testData8D(i,:));
    if prob>0.5
        label_test_8D(i,1)=1;
    else
        label_test_8D(i,1)=0;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 18  8D分类标签与真实标签比较，求得正确率
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   
fidComp = fopen('D:\dataSet\dataSet\labels_data_set_ia.txt','r');
t1Comp= fscanf(fidComp, '%g %g', [1 293]);
t1Comp=t1Comp';
num=0;
for i=1:293
    if label_test_8D(i,:)==t1Comp(i,:)
        num=num+1;
    end
    dao=1/293;
    correct_test_8D=num*dao;
end
