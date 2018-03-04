%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % ���ݷ�������ѵ������frequency domain����ֵ %
        % ȡ24-37Hz��fd����ֵ���趨f��24��0.125��37��%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ����ͨ��4  cueN ��cueP ��power����ֵ
Frefeat_channe4_cueN=zeros(135,1);
for i = 1:135;
    for j = 193:297;
        Frefeat_channe4_cueN(i,1) = powerNmtm4(i,j)+Frefeat_channe4_cueN(i,1);
    end
end
Frefeat_channe4_cueP = zeros(133,1);
for i =1:133 
    for j=193:297;
        Frefeat_channe4_cueP(i,1) = powerPmtm4(i,j)+Frefeat_channe4_cueP(i,1);
    end
end
intermF=1/105;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.1  ����ͨ��4  cueN cueP��power����ֵ
Frefeat_channe4_cueN = Frefeat_channe4_cueN*intermF;
Frefeat_channe4_cueP = Frefeat_channe4_cueP*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%  ����ͨ��6  cueN ��cueP ��power����ֵ
Frefeat_channe6_cueN=zeros(135,1);
for i = 1:135;
    for j = 193:297;
        Frefeat_channe6_cueN(i,1) = powerNmtm6(i,j)+Frefeat_channe6_cueN(i,1);
    end
end
Frefeat_channe6_cueP = zeros(133,1);
for i =1:133 
    for j=193:297;
        Frefeat_channe6_cueP(i,1) = powerPmtm6(i,j)+Frefeat_channe6_cueP(i,1);
    end
end
intermF=1/105;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.2  ����ͨ��6  cueN cueP��power����ֵ
Frefeat_channe6_cueN = Frefeat_channe6_cueN*intermF;
Frefeat_channe6_cueP = Frefeat_channe6_cueP*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)
