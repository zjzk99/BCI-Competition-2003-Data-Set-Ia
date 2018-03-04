%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2   首先根据分析计算训练数据时域特征值
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% To calculate the features for each trial of channel1 (135-cueN, 133-cueP)
%忽略了0.5s前的采样数据，即将1-127采样点数据舍去
% paper"extracted two features from each trial (one from each of channels 1 and
%     2 for use in the classification algorithm by averaging the SCP voltage 
%     from 0.5 to 3.5 s after the beginning of the feedback phase."
feat_channe1_cueN=zeros(135,1);
for i =1:135 
    for j=128:896
        feat_channe1_cueN(i,1) = channe1_cueN(i,j)+ feat_channe1_cueN(i,1);
    end
end
feat_channe1_cueP = zeros(133,1);
for i =1:133 
    for j=128:896
        feat_channe1_cueP(i) = channe1_cueP(i,j)+ feat_channe1_cueP(i,1);
    end
end
s3 = 1/769;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.1  生成通道1  cueN cueP的SCP特征值
feat_channe1_cueN = feat_channe1_cueN*s3;
feat_channe1_cueP = feat_channe1_cueP*s3;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)
feat_channe2_cueN=zeros(135,1);
for i =1:135 
    for j=128:896
        feat_channe2_cueN(i,1) = channe2_cueN(i,j)+ feat_channe2_cueN(i,1);
    end
end

feat_channe2_cueP=zeros(133,1);
for i =1:133 
    for j=128:896
        feat_channe2_cueP(i) = channe2_cueP(i,j)+ feat_channe2_cueP(i,1);
    end
end
s3 = 1/769;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.2  生成通道2  cueN cueP的SCP特征值
feat_channe2_cueN = feat_channe2_cueN*s3;
feat_channe2_cueP = feat_channe2_cueP*s3;