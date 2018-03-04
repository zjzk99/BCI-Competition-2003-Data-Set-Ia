load ('D:\dataSet\dataSet\FeatureValue_Test.mat');

%1.1 �γ�channel 1 �� channel 2 ��SCP ��������
feat_SCP_test=zeros(293,2);
for k=1:293
    feat_SCP_test(k,1)=feat_SCP_test_c1(k,1);
    feat_SCP_test(k,2)=feat_SCP_test_c2(k,1);
end

%1.2 �γ�channel 4 �� channel 6 ��POWER ��������
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

%2.1 �γɹ�һ����ά��������
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

%2.2 �γɹ�һ����ά��������
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

%2.3 �γ�channel 1 �� channel 2 ��A5 ��������
feat_A5_test=zeros(293,2);
for k=1:293
    feat_A5_test(k,1)=feat_A5_test_c1(k,1);
    feat_A5_test(k,2)=feat_A5_test_c2(k,1);
end

%2.4 �γ�channel 4 �� channel 6 С�����Ӵ���������
feat_energy_test=zeros(293,2);
for k=1:293
    feat_energy_test(k,1)=feat_energy_test_c4(k,1);
    feat_energy_test(k,2)=feat_energy_test_c6(k,1);
end

%2.5 �γɹ�һ����ά��������
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