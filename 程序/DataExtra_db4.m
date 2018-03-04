%     2 for use in the classification algorithm by averaging the SCP voltage 
%     from 0.5 to 3.5 s after the beginning of the feedback phase."

load ('D:\dataSet\dataSet\6channels.mat');

A5_5_c1_cueN=zeros(135,896);
for i=1:135
    [C,L]=wavedec(channe1_cueN(i,:),5,'db4');
     A5=wrcoef('a',C,L,'db4',5);
     A5_5_c1_cueN(i,:)=A5;
end

A5_5_c1_cueP=zeros(133,896);
for i=1:133
    [C,L]=wavedec(channe1_cueP(i,:),5,'db4');
     A5=wrcoef('a',C,L,'db4',5);
     A5_5_c1_cueP(i,:)=A5;
end

feat_A5_train_c1_cueN=zeros(135,1);
for i =1:135 
    for j=128:896
        feat_A5_train_c1_cueN(i,1) = A5_5_c1_cueN(i,j)+ feat_A5_train_c1_cueN(i,1);
    end
end
feat_A5_train_c1_cueP = zeros(133,1);
for i =1:133 
    for j=128:896
        feat_A5_train_c1_cueP(i) = A5_5_c1_cueP(i,j)+ feat_A5_train_c1_cueP(i,1);
    end
end
s3 = 1/769;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.1  生成通道1  cueN cueP的SCP特征值
feat_A5_train_c1_cueN = feat_A5_train_c1_cueN*s3;
feat_A5_train_c1_cueP = feat_A5_train_c1_cueP*s3;


A5_5_c2_cueN=zeros(135,896);
for i=1:135
    [C,L]=wavedec(channe2_cueN(i,:),5,'db4');
     A5=wrcoef('a',C,L,'db4',5);
     A5_5_c2_cueN(i,:)=A5;
end

A5_5_c2_cueP=zeros(133,896);
for i=1:133
    [C,L]=wavedec(channe2_cueP(i,:),5,'db4');
     A5=wrcoef('a',C,L,'db4',5);
     A5_5_c2_cueP(i,:)=A5;
end

feat_A5_train_c2_cueN=zeros(135,1);
for i =1:135 
    for j=128:896
        feat_A5_train_c2_cueN(i,1) = A5_5_c2_cueN(i,j)+ feat_A5_train_c2_cueN(i,1);
    end
end
feat_A5_train_c2_cueP = zeros(133,1);
for i =1:133 
    for j=128:896
        feat_A5_train_c2_cueP(i) = A5_5_c2_cueP(i,j)+ feat_A5_train_c2_cueP(i,1);
    end
end
s3 = 1/769;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.2  生成通道2  cueN cueP的小波低频特征值
feat_A5_train_c2_cueN = feat_A5_train_c2_cueN*s3;
feat_A5_train_c2_cueP = feat_A5_train_c2_cueP*s3;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.3  生成通道2  cueN cueP的小波低频特征值
feature_A5_train=zeros(268,2);
for k=1:135
    feature_A5_train(k,1)=feat_A5_train_c1_cueN(k,1);
    feature_A5_train(k,2)=feat_A5_train_c2_cueN(k,1);
end
for k=136:268
    feature_A5_train(k,1)=feat_A5_train_c1_cueP(k-135,1);
    feature_A5_train(k,2)=feat_A5_train_c2_cueP(k-135,1);
end