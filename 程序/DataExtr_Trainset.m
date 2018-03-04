%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2   ���ȸ��ݷ�������ѵ������ʱ������ֵ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% To calculate the features for each trial of channel1 (135-cueN, 133-cueP)
%������0.5sǰ�Ĳ������ݣ�����1-127������������ȥ
% paper"extracted two features from each trial (one from each of channels 1 and
%     2 for use in the classification algorithm by averaging the SCP voltage 
%     from 0.5 to 3.5 s after the beginning of the feedback phase."

load ('D:\dataSet\dataSet\6channels.mat');

feat_SCP_train_c1_cueN=zeros(135,1);
for i =1:135 
    for j=128:896
        feat_SCP_train_c1_cueN(i,1) = channe1_cueN(i,j)+ feat_SCP_train_c1_cueN(i,1);
    end
end
feat_SCP_train_c1_cueP = zeros(133,1);
for i =1:133 
    for j=128:896
        feat_SCP_train_c1_cueP(i) = channe1_cueP(i,j)+ feat_SCP_train_c1_cueP(i,1);
    end
end
s3 = 1/769;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.1  ����ͨ��1  cueN cueP��SCP����ֵ
feat_SCP_train_c1_cueN = feat_SCP_train_c1_cueN*s3;
feat_SCP_train_c1_cueP = feat_SCP_train_c1_cueP*s3;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)
feat_SCP_train_c2_cueN=zeros(135,1);
for i =1:135 
    for j=128:896
        feat_SCP_train_c2_cueN(i,1) = channe2_cueN(i,j)+ feat_SCP_train_c2_cueN(i,1);
    end
end

feat_SCP_train_c2_cueP=zeros(133,1);
for i =1:133 
    for j=128:896
        feat_SCP_train_c2_cueP(i) = channe2_cueP(i,j)+ feat_SCP_train_c2_cueP(i,1);
    end
end
s3 = 1/769;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.2  ����ͨ��2  cueN cueP��SCP����ֵ
feat_SCP_train_c2_cueN = feat_SCP_train_c2_cueN*s3;
feat_SCP_train_c2_cueP = feat_SCP_train_c2_cueP*s3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % 3���ݷ�������ѵ������frequency domain����ֵ %
    % ȡ24-37Hz��fd����ֵ���趨f��24��0.25��37��%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load ('D:\dataSet\dataSet\PowerValue.mat');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Multitaper Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ����ͨ��4  cueN ��cueP ��powerֵ�ۼ�
feat_POWmtm_train_c4_cueN=zeros(135,1);
for i = 1:135
    for j = 97:149
        feat_POWmtm_train_c4_cueN(i,1) = powerNmtm4(i,j)+feat_POWmtm_train_c4_cueN(i,1);
    end
end
feat_POWmtm_train_c4_cueP = zeros(133,1);
for i =1:133 
    for j = 97:149
        feat_POWmtm_train_c4_cueP(i,1) = powerPmtm4(i,j)+feat_POWmtm_train_c4_cueP(i,1);
    end
end
intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.1  ����ͨ��4  cueN cueP��power����ֵ
feat_POWmtm_train_c4_cueN = feat_POWmtm_train_c4_cueN*intermF;
feat_POWmtm_train_c4_cueP = feat_POWmtm_train_c4_cueP*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%  ����ͨ��6  cueN ��cueP ��powerֵ�ۼ�
feat_POWmtm_train_c6_cueN=zeros(135,1);
for i = 1:135
    for j = 97:149
        feat_POWmtm_train_c6_cueN(i,1) = powerNmtm6(i,j)+feat_POWmtm_train_c6_cueN(i,1);
    end
end
feat_POWmtm_train_c6_cueP = zeros(133,1);
for i =1:133 
    for j = 97:149
        feat_POWmtm_train_c6_cueP(i,1) = powerPmtm6(i,j)+feat_POWmtm_train_c6_cueP(i,1);
    end
end
intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.2  ����ͨ��6  cueN cueP��power����ֵ
feat_POWmtm_train_c6_cueN = feat_POWmtm_train_c6_cueN*intermF;
feat_POWmtm_train_c6_cueP = feat_POWmtm_train_c6_cueP*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Welch Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ����ͨ��4  cueN ��cueP ��powerֵ�ۼ�
feat_POWwelch_train_c4_cueN=zeros(135,1);
for i = 1:135
    for j = 97:149
        feat_POWwelch_train_c4_cueN(i,1) = powerNwelch4(i,j)+feat_POWwelch_train_c4_cueN(i,1);
    end
end
feat_POWwelch_train_c4_cueP = zeros(133,1);
for i =1:133 
    for j = 97:149
        feat_POWwelch_train_c4_cueP(i,1) = powerPwelch4(i,j)+feat_POWwelch_train_c4_cueP(i,1);
    end
end
intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%4.1  ����ͨ��4  cueN cueP��power����ֵ
feat_POWwelch_train_c4_cueN = feat_POWwelch_train_c4_cueN*intermF;
feat_POWwelch_train_c4_cueP = feat_POWwelch_train_c4_cueP*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%  ����ͨ��6  cueN ��cueP ��powerֵ�ۼ�
feat_POWwelch_train_c6_cueN=zeros(135,1);
for i = 1:135
    for j = 97:149
        feat_POWwelch_train_c6_cueN(i,1) = powerNwelch6(i,j)+feat_POWwelch_train_c6_cueN(i,1);
    end
end
feat_POWwelch_train_c6_cueP = zeros(133,1);
for i =1:133 
    for j=97:149
        feat_POWwelch_train_c6_cueP(i,1) = powerPwelch6(i,j)+feat_POWwelch_train_c6_cueP(i,1);
    end
end
intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%4.2  ����ͨ��6  cueN cueP��power����ֵ
feat_POWwelch_train_c6_cueN = feat_POWwelch_train_c6_cueN*intermF;
feat_POWwelch_train_c6_cueP = feat_POWwelch_train_c6_cueP*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Wavelet Analysis db4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i=1:135
    [C,L]=wavedec(channe1_cueN(i,:),5,'db4');
    for j=1:34
        feat_A5_train_c1_cueN(i,:)=sum(C(1,j),2)/L(1,1);
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
        feat_A5_train_c1_cueP(i,:)=sum(C(1,j),2)/L(1,1);
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

for i=1:135
    [C,L]=wavedec(channe2_cueN(i,:),5,'db4');
    for j=1:34
        feat_A5_train_c2_cueN(i,:)=sum(C(1,j),2)/L(1,1);
    end
end

for i=1:133
    [C,L]=wavedec(channe2_cueP(i,:),5,'db4');
    for j=1:34
        feat_A5_train_c2_cueP(i,:)=sum(C(1,j),2)/L(1,1);
    end
end

load ('D:\dataSet\dataSet\Energy_Train.mat');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Wavelet PACT Analysis db4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
feat_energy_train_c4_cueN=zeros(135,1);
feat_energy_train_c4_cueP=zeros(133,1);
feat_energy_train_c6_cueN=zeros(135,1);
feat_energy_train_c6_cueP=zeros(133,1);

for i=1:135
    feat_energy_train_c4_cueN(i,1)=energy_train_c4_cueN(i,1)*pro_train_c4_cueN(i,1);
    feat_energy_train_c6_cueN(i,1)=energy_train_c6_cueN(i,1)*pro_train_c6_cueN(i,1);
end
for i=1:133
    feat_energy_train_c4_cueP(i,1)=energy_train_c4_cueP(i,1)*pro_train_c4_cueP(i,1);
    feat_energy_train_c6_cueP(i,1)=energy_train_c6_cueP(i,1)*pro_train_c6_cueP(i,1);
end


save FeatureValue.mat
