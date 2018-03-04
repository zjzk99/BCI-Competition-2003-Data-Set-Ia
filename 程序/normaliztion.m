%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          归一化处理
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load ('D:\dataSet\dataSet\mat\feature_1246.mat');

%1.1 channel1 和 channel2 SCP特征值的归一化处理
mean_channel1_cueN=mean(feat_channe1_cueN,1);
stand_channel1_cueN=std(feat_channe1_cueN,1);
mean_channel1_cueP=mean(feat_channe1_cueP,1);
stand_channel1_cueP=std(feat_channe1_cueP,1);
mean_channel2_cueN=mean(feat_channe2_cueN,1);
stand_channel2_cueN=std(feat_channe2_cueN,1);
mean_channel2_cueP=mean(feat_channe2_cueP,1);
stand_channel2_cueP=std(feat_channe2_cueP,1);
for i=1:135
    norm_feat_channe1_cueN(i,1)=(feat_channe1_cueN(i,1)-mean_channel1_cueN)/stand_channel1_cueN;
    norm_feat_channe2_cueN(i,1)=(feat_channe2_cueN(i,1)-mean_channel2_cueN)/stand_channel2_cueN;
end
for j=1:133
     norm_feat_channe1_cueP(j,1)=(feat_channe1_cueP(j,1)-mean_channel1_cueP)/stand_channel1_cueP;
     norm_feat_channe2_cueP(j,1)=(feat_channe2_cueP(j,1)-mean_channel2_cueP)/stand_channel2_cueP;
end
%1.2 channel4 和 channel6 power特征值的归一化处理
mean_channel4_cueN=mean(Frefeat_channe4_cueN,1);
stand_channel4_cueN=std(Frefeat_channe4_cueN,1);
mean_channel4_cueP=mean(Frefeat_channe4_cueP,1);
stand_channel4_cueP=std(Frefeat_channe4_cueP,1);
mean_channel6_cueN=mean(Frefeat_channe6_cueN,1);
stand_channel6_cueN=std(Frefeat_channe6_cueN,1);
mean_channel6_cueP=mean(Frefeat_channe6_cueP,1);
stand_channel6_cueP=std(Frefeat_channe6_cueP,1);
for i=1:135
    norm_Frefeat_channe4_cueN(i,1)=(Frefeat_channe4_cueN(i,1)-mean_channel4_cueN)/stand_channel4_cueN;
    norm_Frefeat_channe6_cueN(i,1)=(Frefeat_channe6_cueN(i,1)-mean_channel6_cueN)/stand_channel6_cueN;
end
for j=1:133
     norm_Frefeat_channe4_cueP(j,1)=(Frefeat_channe4_cueP(j,1)-mean_channel4_cueP)/stand_channel4_cueP;
     norm_Frefeat_channe6_cueP(j,1)=(Frefeat_channe6_cueP(j,1)-mean_channel6_cueP)/stand_channel6_cueP;
end

featureSCP=zeros(268,2); %两个SCP归一化特征值
for k=1:135
    featureSCP(k,1)=norm_feat_channe1_cueN(k,1);
    featureSCP(k,2)=norm_feat_channe2_cueN(k,1);
end
for k=136:268
    featureSCP(k,1)=norm_feat_channe1_cueP(k-135,1);
    featureSCP(k,2)=norm_feat_channe2_cueP(k-135,1);
end
featurePOWER=zeros(268,2); %两个power归一化特征值
for k=1:135
    featurePOWER(k,1)=norm_Frefeat_channe4_cueN(k,1);
    featurePOWER(k,2)=norm_Frefeat_channe6_cueN(k,1);
end
for k=136:268
    featurePOWER(k,1)=norm_Frefeat_channe4_cueP(k-135,1);
    featurePOWER(k,2)=norm_Frefeat_channe6_cueP(k-135,1);
end
feature_4D=zeros(268,4); %四维特征值
for k=1:135
    feature_4D(k,1)=norm_feat_channe1_cueN(k,1);
    feature_4D(k,2)=norm_feat_channe2_cueN(k,1);
    feature_4D(k,3)=norm_Frefeat_channe4_cueN(k,1);
    feature_4D(k,4)=norm_Frefeat_channe6_cueN(k,1);
end
for k=136:268
    feature_4D(k,1)=norm_feat_channe1_cueP(k-135,1);
    feature_4D(k,2)=norm_feat_channe2_cueP(k-135,1);
    feature_4D(k,3)=norm_Frefeat_channe4_cueP(k-135,1);
    feature_4D(k,4)=norm_Frefeat_channe6_cueP(k-135,1);
end
for k=1:135
    label_classification(k,1)=0;
end
for k=136:268
    label_classification(k,1)=1;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          常规处理
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

feature_SCP=zeros(268,2); %两个SCP归一化特征值
for k=1:135
    feature_SCP(k,1)=feat_channe1_cueN(k,1);
    feature_SCP(k,2)=feat_channe2_cueN(k,1);
end
for k=136:268
    feature_SCP(k,1)=feat_channe1_cueP(k-135,1);
    feature_SCP(k,2)=feat_channe2_cueP(k-135,1);
end
feature_POWER=zeros(268,2); %两个power归一化特征值
for k=1:135
    feature_POWER(k,1)=Frefeat_channe4_cueN(k,1);
    feature_POWER(k,2)=Frefeat_channe6_cueN(k,1);
end
for k=136:268
    feature_POWER(k,1)=Frefeat_channe4_cueP(k-135,1);
    feature_POWER(k,2)=Frefeat_channe6_cueP(k-135,1);
end
feature_4D_usual=zeros(268,4); %四维特征值
for k=1:135
    feature_4D_usual(k,1)=feat_channe1_cueN(k,1);
    feature_4D_usual(k,2)=feat_channe2_cueN(k,1);
    feature_4D_usual(k,3)=Frefeat_channe4_cueN(k,1);
    feature_4D_usual(k,4)=Frefeat_channe6_cueN(k,1);
end
for k=136:268
    feature_4D_usual(k,1)=feat_channe1_cueP(k-135,1);
    feature_4D_usual(k,2)=feat_channe2_cueP(k-135,1);
    feature_4D_usual(k,3)=Frefeat_channe4_cueP(k-135,1);
    feature_4D_usual(k,4)=Frefeat_channe6_cueP(k-135,1);
end

