%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2   首先根据分析计算训练数据时域特征值
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% To calculate the features for each trial of channel1 (135-cueN, 133-cueP)
%忽略了0.5s前的采样数据，即将1-127采样点数据舍去
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
%2.1  生成通道1  cueN cueP的SCP特征值
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
%2.2  生成通道2  cueN cueP的SCP特征值
feat_SCP_test_c2 = feat_SCP_test_c2*s1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % 3根据分析计算训练数据frequency domain特征值 %
    % 取24-37Hz的fd特征值，设定f（24：0.25：37）%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load ('D:\dataSet\dataSet\PowerValue_Test.mat');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Multitaper Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  生成通道4  cueN 和cueP 的power值累加
feat_POWmtm_test_c4=zeros(293,1);
for i = 1:293
    for j = 97:149
        feat_POWmtm_test_c4(i,1) = powermtm4_test(i,j)+feat_POWmtm_test_c4(i,1);
    end
end
intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.1  生成通道4  cueN cueP的power特征值
feat_POWmtm_test_c4 = feat_POWmtm_test_c4*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%  生成通道6  cueN 和cueP 的power值累加
feat_POWmtm_test_c6=zeros(293,1);
for i = 1:293
    for j = 97:149
        feat_POWmtm_test_c6(i,1) = powermtm6_test(i,j)+feat_POWmtm_test_c6(i,1);
    end
end
intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.2  生成通道6  cueN cueP的power特征值
feat_POWmtm_test_c6 = feat_POWmtm_test_c6*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               Welch Method
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  生成通道4  cueN 和cueP 的power值累加
feat_POWwelch_test_c4=zeros(293,1);
for i = 1:293
    for j = 97:149
        feat_POWwelch_test_c4(i,1) = powerwelch4_test(i,j)+feat_POWwelch_test_c4(i,1);
    end
end
intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%4.1  生成通道4  cueN cueP的power特征值
feat_POWwelch_test_c4 = feat_POWwelch_test_c4*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%  生成通道6  cueN 和cueP 的power值累加
feat_POWwelch_test_c6=zeros(293,1);
for i = 1:293
    for j = 97:149
        feat_POWwelch_test_c6(i,1) = powerwelch6_test(i,j)+feat_POWwelch_test_c6(i,1);
    end
end

intermF=1/53;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%4.2  生成通道6  cueN cueP的power特征值
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
    for j=1:2^n %wpcoef(wpt1,[n,i-1])是求第n层第i个节点的系数
        E(j)=norm(wpcoef(wpt_test_c4(i),[n,j-1]),2);%求第i个节点的范数平方，其实也就是平方和
        E_total=sum(E); %求总能量
        pfir(j)= E(j)/E_total;%求每个节点的概率
    end
    energy_test_c4(i,1)=E_total;
    pro_test_c4(i,:)=pfir;
    T=besttree(wpt_test_c4(i));
end

energy_test_c6=zeros(293,1);
pro_test_c6=zeros(293,8);
for i=1:293
    wpt_test_c6(i)=wpdec(channe6_test(i,:),3,'db2');
    for j=1:2^n %wpcoef(wpt1,[n,i-1])是求第n层第i个节点的系数
        E(j)=norm(wpcoef(wpt_test_c6(i),[n,j-1]),2);%求第i个节点的范数平方，其实也就是平方和
        E_total=sum(E); %求总能量
        pfir(j)= E(j)/E_total;%求每个节点的概率
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