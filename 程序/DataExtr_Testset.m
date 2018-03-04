%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2   ���ȸ��ݷ�������ѵ������ʱ������ֵ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% To calculate the features for each trial of channel1 (135-cueN, 133-cueP)
%������0.5sǰ�Ĳ������ݣ�����1-127������������ȥ
% paper"extracted two features from each trial (one from each of channels 1 and
%     2 for use in the classification algorithm by averaging the SCP voltage 
%     from 0.5 to 3.5 s after the beginning of the feedback phase."

load ('D:\dataSet\dataSet\6channels_test.mat');

feat_SCP_test_c1=zeros(293,1);
for i =1:293 
    for j=128:896
        feat_SCP_test_c1(i,1) = channe1_test(i,j)+ feat_SCP_test_c1(i,1);
    end
end
s1 = 1/769;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.1  ����ͨ��1  cueN cueP��SCP����ֵ
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
%2.2  ����ͨ��2  cueN cueP��SCP����ֵ
feat_SCP_test_c2 = feat_SCP_test_c2*s1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % 3���ݷ�������ѵ������frequency domain����ֵ %
    % ȡ24-37Hz��fd����ֵ���趨f��24��0.25��37��%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load ('D:\dataSet\dataSet\PowerValue_Test.mat');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Multitaper Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ����ͨ��4  cueN ��cueP ��powerֵ�ۼ�
feat_POWmtm_test_c4=zeros(293,1);
for i = 1:293
    for j = 97:149
        feat_POWmtm_test_c4(i,1) = powermtm4_test(i,j)+feat_POWmtm_test_c4(i,1);
    end
end
intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.1  ����ͨ��4  cueN cueP��power����ֵ
feat_POWmtm_test_c4 = feat_POWmtm_test_c4*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%  ����ͨ��6  cueN ��cueP ��powerֵ�ۼ�
feat_POWmtm_test_c6=zeros(293,1);
for i = 1:293
    for j = 97:149
        feat_POWmtm_test_c6(i,1) = powermtm6_test(i,j)+feat_POWmtm_test_c6(i,1);
    end
end
intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.2  ����ͨ��6  cueN cueP��power����ֵ
feat_POWmtm_test_c6 = feat_POWmtm_test_c6*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Welch Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ����ͨ��4  cueN ��cueP ��powerֵ�ۼ�
feat_POWwelch_test_c4=zeros(293,1);
for i = 1:293
    for j = 97:149
        feat_POWwelch_test_c4(i,1) = powerwelch4_test(i,j)+feat_POWwelch_test_c4(i,1);
    end
end
intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%4.1  ����ͨ��4  cueN cueP��power����ֵ
feat_POWwelch_test_c4 = feat_POWwelch_test_c4*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%  ����ͨ��6  cueN ��cueP ��powerֵ�ۼ�
feat_POWwelch_test_c6=zeros(293,1);
for i = 1:293
    for j = 97:149
        feat_POWwelch_test_c6(i,1) = powerwelch6_test(i,j)+feat_POWwelch_test_c6(i,1);
    end
end

intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%4.2  ����ͨ��6  cueN cueP��power����ֵ
feat_POWwelch_test_c6 = feat_POWwelch_test_c6*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Wavelet Analysis
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:293
    [C,L]=wavedec(channe1_test(i,:),5,'db4');
    for j=1:34
       feat_A5_test_c1(i,:)=sum(C(1,j),2)/L(1,1);
    end
end
for i =1:293 
   [C,L]=wavedec(channe2_test(i,:),5,'db4');
    for j=1:34
       feat_A5_test_c2(i,:)=sum(C(1,j),2)/L(1,1);
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Wavelet PACT Analysis
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n=3;

energy_test_c4=zeros(293,1);
pro_test_c4=zeros(293,8);
for i=1:293
    wpt_test_c4(i)=wpdec(channe4_test(i,:),3,'db2');
    for j=1:2^n %wpcoef(wpt1,[n,i-1])�����n���i���ڵ��ϵ��
        E(j)=norm(wpcoef(wpt_test_c4(i),[n,j-1]),2);%���i���ڵ�ķ���ƽ������ʵҲ����ƽ����
        E_total=sum(E); %��������
        pfir(j)= E(j)/E_total;%��ÿ���ڵ�ĸ���
    end
    energy_test_c4(i,1)=E_total;
    pro_test_c4(i,:)=pfir;
    T=besttree(wpt_test_c4(i));
end

energy_test_c6=zeros(293,1);
pro_test_c6=zeros(293,8);
for i=1:293
    wpt_test_c6(i)=wpdec(channe6_test(i,:),3,'db2');
    for j=1:2^n %wpcoef(wpt1,[n,i-1])�����n���i���ڵ��ϵ��
        E(j)=norm(wpcoef(wpt_test_c6(i),[n,j-1]),2);%���i���ڵ�ķ���ƽ������ʵҲ����ƽ����
        E_total=sum(E); %��������
        pfir(j)= E(j)/E_total;%��ÿ���ڵ�ĸ���
    end
    energy_test_c6(i,1)=E_total;
    pro_test_c6(i,:)=pfir;
    T=besttree(wpt_test_c6(i));
end

feat_energy_test_c4=zeros(293,1);
feat_energy_test_c6=zeros(293,1);

for i=1:293
    feat_energy_test_c4(i,1)=energy_test_c4(i,1)*pro_test_c4(i,1);
    feat_energy_test_c6(i,1)=energy_test_c6(i,1)*pro_test_c6(i,1);
end


save FeatureValue_Test.mat