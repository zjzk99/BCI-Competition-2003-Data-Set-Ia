%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Wavelet Analysis
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
feat_SCP_test_c1=zeros(293,1);
for i =1:293 
    for j=128:896
        feat_SCP_test_c1(i,1) = channe1_test(i,j)+ feat_SCP_test_c1(i,1);
    end
end
s1 = 1/769;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5.1  生成通道1  cueN cueP的A5特征值
feat_SCP_test_c1 = feat_SCP_test_c1*s1;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)
feat_SCP_test_c2=zeros(293,1);
for i =1:293 
    for j=128:896
        feat_SCP_test_c2(i,1) = channe2_test(i,j)+ feat_SCP_test_c2(i,1);
    end
end
s1 = 1/769;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5.2  生成通道2  cueN cueP的A5特征值
feat_SCP_test_c2 = feat_SCP_test_c2*s1;