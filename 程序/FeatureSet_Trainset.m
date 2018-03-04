load ('D:\dataSet\dataSet\FeatureValue.mat');

%1.1 形成channel 1 和 channel 2 的SCP 特征集合
feature_SCP_train=zeros(268,2);
for k=1:135
    feature_SCP_train(k,1)=feat_SCP_train_c1_cueN(k,1);
    feature_SCP_train(k,2)=feat_SCP_train_c2_cueN(k,1);
end
for k=136:268
    feature_SCP_train(k,1)=feat_SCP_train_c1_cueP(k-135,1);
    feature_SCP_train(k,2)=feat_SCP_train_c2_cueP(k-135,1);
end

%1.2 形成channel 4 和 channel 6 的POWER 特征集合
feat_POWmtm_train=zeros(268,2); 
for k=1:135
    feat_POWmtm_train(k,1)=feat_POWmtm_train_c4_cueN(k,1);
    feat_POWmtm_train(k,2)=feat_POWmtm_train_c6_cueN(k,1);
end
for k=136:268
    feat_POWmtm_train(k,1)=feat_POWmtm_train_c4_cueP(k-135,1);
    feat_POWmtm_train(k,2)=feat_POWmtm_train_c6_cueP(k-135,1);
end

feat_POWwelch_train=zeros(268,2); 
for k=1:135
    feat_POWwelch_train(k,1)=feat_POWwelch_train_c4_cueN(k,1);
    feat_POWwelch_train(k,2)=feat_POWwelch_train_c6_cueN(k,1);
end
for k=136:268
    feat_POWwelch_train(k,1)=feat_POWwelch_train_c4_cueP(k-135,1);
    feat_POWwelch_train(k,2)=feat_POWwelch_train_c6_cueP(k-135,1);
end

%1.3 形成channel 1 和 channel 2 的小波低频特征集合
feature_A5_train=zeros(268,2);
for k=1:135
    feature_A5_train(k,1)=feat_A5_train_c1_cueN(k,1);
    feature_A5_train(k,2)=feat_A5_train_c2_cueN(k,1);
end
for k=136:268
    feature_A5_train(k,1)=feat_A5_train_c1_cueP(k-135,1);
    feature_A5_train(k,2)=feat_A5_train_c2_cueP(k-135,1);
end

%1.4 形成channel 4 和 channel 6 的小波包能量特征集合
feature_energy_train=zeros(268,2);
for k=1:135
    feature_energy_train(k,1)=feat_energy_train_c4_cueN(k,1);
    feature_energy_train(k,2)=feat_energy_train_c6_cueN(k,1);
end
for k=136:268
    feature_energy_train(k,1)=feat_energy_train_c4_cueP(k-135,1);
    feature_energy_train(k,2)=feat_energy_train_c6_cueP(k-135,1);
end

%2.1 形成 four channels 1 colum
feat_SCP_train_c1=zeros(268,1);
for k=1:268
    feat_SCP_train_c1(k,1)=feature_SCP_train(k,1);
end
feat_SCP_train_c2=zeros(268,1);
for k=1:268
    feat_SCP_train_c2(k,1)=feature_SCP_train(k,2);
end

feat_POWmtm_train_c4=zeros(268,1);
for k=1:268
    feat_POWmtm_train_c4(k,1)=feat_POWmtm_train(k,1);
end
feat_POWmtm_train_c6=zeros(268,1);
for k=1:268
    feat_POWmtm_train_c6(k,1)=feat_POWmtm_train(k,2);
end

feat_POWwelch_train_c4=zeros(268,1);
for k=1:268
    feat_POWwelch_train_c4(k,1)=feat_POWwelch_train(k,1);
end
feat_POWwelch_train_c6=zeros(268,1);
for k=1:268
    feat_POWwelch_train_c6(k,1)=feat_POWwelch_train(k,2);
end

feat_A5_train_c1=zeros(268,1);
for k=1:268
    feat_A5_train_c1(k,1)=feature_A5_train(k,1);
end
feat_A5_train_c2=zeros(268,1);
for k=1:268
    feat_A5_train_c2(k,1)=feature_A5_train(k,2);
end

feat_energy_train_c4=zeros(268,1);
for k=1:268
    feat_energy_train_c4(k,1)=feature_energy_train(k,1);
end
feat_energy_train_c6=zeros(268,1);
for k=1:268
    feat_energy_train_c6(k,1)=feature_energy_train(k,2);
end

%2.2 形成归一化四维特征集合
feat_SCP_train_c1_norm=normalize_train(feat_SCP_train_c1);
feat_SCP_train_c2_norm=normalize_train(feat_SCP_train_c2);
feat_POWmtm_train_c4_norm=normalize_train(feat_POWmtm_train_c4);
feat_POWmtm_train_c6_norm=normalize_train(feat_POWmtm_train_c6);
feat_POWwelch_train_c4_norm=normalize_train(feat_POWwelch_train_c4);
feat_POWwelch_train_c6_norm=normalize_train(feat_POWwelch_train_c6);


feat_POWandMTM_train=zeros(268,4);
for k=1:268
    feat_POWandMTM_train(k,1)=feat_SCP_train_c1_norm(k,1);
    feat_POWandMTM_train(k,2)=feat_SCP_train_c2_norm(k,1);
    feat_POWandMTM_train(k,3)=feat_POWmtm_train_c4_norm(k,1);
    feat_POWandMTM_train(k,4)=feat_POWmtm_train_c6_norm(k,1);
end

feat_POWandWELCH_train=zeros(268,4);
for k=1:268
    feat_POWandWELCH_train(k,1)=feat_SCP_train_c1_norm(k,1);
    feat_POWandWELCH_train(k,2)=feat_SCP_train_c2_norm(k,1);
    feat_POWandWELCH_train(k,3)=feat_POWwelch_train_c4_norm(k,1);
    feat_POWandWELCH_train(k,4)=feat_POWwelch_train_c6_norm(k,1);
end

%2.3 形成归一化六维特征集合
feat_A5_train_c1_norm=normalize_train(feat_A5_train_c1);
feat_A5_train_c2_norm=normalize_train(feat_A5_train_c2);

feat_6D_train=zeros(268,6);
for k=1:268
    feat_6D_train(k,1)=feat_SCP_train_c1_norm(k,1);
    feat_6D_train(k,2)=feat_SCP_train_c2_norm(k,1);
    feat_6D_train(k,3)=feat_POWmtm_train_c4_norm(k,1);
    feat_6D_train(k,4)=feat_POWmtm_train_c6_norm(k,1);
    feat_6D_train(k,5)=feat_A5_train_c1_norm(k,1);
    feat_6D_train(k,6)=feat_A5_train_c2_norm(k,1);
end

%2.4 形成归一化八维特征集合
feat_energy_train_c4_norm=normalize_train(feat_energy_train_c4);
feat_energy_train_c6_norm=normalize_train(feat_energy_train_c6);

feat_8D_train=zeros(268,8);
for k=1:268
    feat_8D_train(k,1)=feat_SCP_train_c1_norm(k,1);
    feat_8D_train(k,2)=feat_SCP_train_c2_norm(k,1);
    feat_8D_train(k,3)=feat_POWmtm_train_c4_norm(k,1);
    feat_8D_train(k,4)=feat_POWmtm_train_c6_norm(k,1);
    feat_8D_train(k,5)=feat_A5_train_c1_norm(k,1);
    feat_8D_train(k,6)=feat_A5_train_c2_norm(k,1);
    feat_8D_train(k,7)=feat_energy_train_c4_norm(k,1);
    feat_8D_train(k,8)=feat_energy_train_c6_norm(k,1);
end

save FeatureSet_Train.mat