load ('D:\dataSet\dataSet\FeatureValue_Test.mat');

%1.1 形成channel 1 和 channel 2 的SCP 特征集合
feat_SCP_test=zeros(293,2);
for k=1:293
    feat_SCP_test(k,1)=feat_SCP_test_c1(k,1);
    feat_SCP_test(k,2)=feat_SCP_test_c2(k,1);
end

%1.2 形成channel 4 和 channel 6 的POWER 特征集合
feat_POWmtm_test=zeros(293,2); 
for k=1:293
    feat_POWmtm_test(k,1)=feat_POWmtm_test_c4(k,1);
    feat_POWmtm_test(k,2)=feat_POWmtm_test_c6(k,1);
end

feat_POWwelch_test=zeros(293,2); 
for k=1:293
    feat_POWwelch_test(k,1)=feat_POWwelch_test_c4(k,1);
    feat_POWwelch_test(k,2)=feat_POWwelch_test_c6(k,1);
end

%2.1 形成归一化四维特征集合
feat_SCP_test_c1_norm=normalize_test(feat_SCP_test_c1);
feat_SCP_test_c2_norm=normalize_test(feat_SCP_test_c2);
feat_POWmtm_test_c4_norm=normalize_test(feat_POWmtm_test_c4);
feat_POWmtm_test_c6_norm=normalize_test(feat_POWmtm_test_c6);
feat_POWwelch_test_c4_norm=normalize_test(feat_POWwelch_test_c4);
feat_POWwelch_test_c6_norm=normalize_test(feat_POWwelch_test_c6);

feat_POWandMTM_test=zeros(293,4);
for k=1:293
    feat_POWandMTM_test(k,1)=feat_SCP_test_c1_norm(k,1);
    feat_POWandMTM_test(k,2)=feat_SCP_test_c2_norm(k,1);
    feat_POWandMTM_test(k,3)=feat_POWmtm_test_c4_norm(k,1);
    feat_POWandMTM_test(k,4)=feat_POWmtm_test_c6_norm(k,1);
end

feat_POWandWELCH_test=zeros(293,4);
for k=1:293
    feat_POWandWELCH_test(k,1)=feat_SCP_test_c1_norm(k,1);
    feat_POWandWELCH_test(k,2)=feat_SCP_test_c2_norm(k,1);
    feat_POWandWELCH_test(k,3)=feat_POWwelch_test_c4_norm(k,1);
    feat_POWandWELCH_test(k,4)=feat_POWwelch_test_c6_norm(k,1);
end

%2.2 形成归一化六维特征集合
feat_A5_test_c1_norm=normalize_test(feat_A5_test_c1);
feat_A5_test_c2_norm=normalize_test(feat_A5_test_c2);

feat_6D_test=zeros(293,6);
for k=1:293
    feat_6D_test(k,1)=feat_SCP_test_c1_norm(k,1);
    feat_6D_test(k,2)=feat_SCP_test_c2_norm(k,1);
    feat_6D_test(k,3)=feat_POWmtm_test_c4_norm(k,1);
    feat_6D_test(k,4)=feat_POWmtm_test_c6_norm(k,1);
    feat_6D_test(k,5)=feat_A5_test_c1_norm(k,1);
    feat_6D_test(k,6)=feat_A5_test_c2_norm(k,1);
end

%2.3 形成channel 1 和 channel 2 的A5 特征集合
feat_A5_test=zeros(293,2);
for k=1:293
    feat_A5_test(k,1)=feat_A5_test_c1(k,1);
    feat_A5_test(k,2)=feat_A5_test_c2(k,1);
end

%2.4 形成channel 4 和 channel 6 小波包子带能量特征
feat_energy_test=zeros(293,2);
for k=1:293
    feat_energy_test(k,1)=feat_energy_test_c4(k,1);
    feat_energy_test(k,2)=feat_energy_test_c6(k,1);
end

%2.5 形成归一化八维特征集合
feat_energy_test_c4_norm=normalize_test(feat_energy_test_c4);
feat_energy_test_c6_norm=normalize_test(feat_energy_test_c6);

feat_8D_test=zeros(293,8);
for k=1:293
    feat_8D_test(k,1)=feat_SCP_test_c1_norm(k,1);
    feat_8D_test(k,2)=feat_SCP_test_c2_norm(k,1);
    feat_8D_test(k,3)=feat_POWmtm_test_c4_norm(k,1);
    feat_8D_test(k,4)=feat_POWmtm_test_c6_norm(k,1);
    feat_8D_test(k,5)=feat_A5_test_c1_norm(k,1);
    feat_8D_test(k,6)=feat_A5_test_c2_norm(k,1);
    feat_8D_test(k,7)=feat_energy_test_c4_norm(k,1);
    feat_8D_test(k,8)=feat_energy_test_c6_norm(k,1);
end

save FeatureSet_Test.mat