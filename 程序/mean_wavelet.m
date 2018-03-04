load ('D:\dataSet\dataSet\6channels.mat');


for i=1:135
    [C,L]=wavedec(channe1_cueN(i,:),5,'db4');
    for j=1:34
        CA5_c1_cueN(i,:)=sum(C(1,j),2)/L(1,1);
    end
    for j=35:68
        CD5_c1_cueN(i,:)=sum(C(1,j),2)/L(1,2);
    end
    for j=69:130
         CD4_c1_cueN(i,:)=sum(C(1,j),2)/L(1,3);
    end
    for j=131:248
         CD3_c1_cueN(i,:)=sum(C(1,j),2)/L(1,4);
    end
    for j=249:477
         CD2_c1_cueN(i,:)=sum(C(1,j),2)/L(1,5);
    end
    for j=478:928
         CD1_c1_cueN(i,:)=sum(C(1,j),2)/L(1,6);
    end
end

for i=1:133
    [C,L]=wavedec(channe1_cueP(i,:),5,'db4');
    for j=1:34
        CA5_c1_cueP(i,:)=sum(C(1,j),2)/L(1,1);
    end
    for j=35:68
        CD5_c1_cueP(i,:)=sum(C(1,j),2)/L(1,2);
    end
    for j=69:130
         CD4_c1_cueP(i,:)=sum(C(1,j),2)/L(1,3);
    end
    for j=131:248
         CD3_c1_cueP(i,:)=sum(C(1,j),2)/L(1,4);
    end
    for j=249:477
         CD2_c1_cueP(i,:)=sum(C(1,j),2)/L(1,5);
    end
    for j=478:928
         CD1_c1_cueP(i,:)=sum(C(1,j),2)/L(1,6);
    end
end

feat_A5_test_c1=zeros(293,1);
for i =1:293 
    for j=128:896
        feat_A5_test_c1(i,1) = channe1_test(i,j)+ feat_A5_test_c1(i,1);
    end
end
s1 = 1/769;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5.1  生成通道1  cueN cueP的A5特征值
feat_A5_test_c1 = feat_A5_test_c1*s1;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)
feat_A5_test_c2=zeros(293,1);
for i =1:293 
    for j=128:896
        feat_A5_test_c2(i,1) = channe2_test(i,j)+ feat_A5_test_c2(i,1);
    end
end
s1 = 1/769;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5.2  生成通道2  cueN cueP的A5特征值
feat_A5_test_c2 = feat_A5_test_c2*s1;
