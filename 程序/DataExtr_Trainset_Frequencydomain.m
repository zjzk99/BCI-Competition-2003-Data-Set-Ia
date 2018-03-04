%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % 根据分析计算训练数据frequency domain特征值 %
        % 取24-37Hz的fd特征值，设定f（24：0.125：37）%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  生成通道4  cueN 和cueP 的power特征值
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
%2.1  生成通道4  cueN cueP的power特征值
Frefeat_channe4_cueN = Frefeat_channe4_cueN*intermF;
Frefeat_channe4_cueP = Frefeat_channe4_cueP*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)

%  生成通道6  cueN 和cueP 的power特征值
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
%2.2  生成通道6  cueN cueP的power特征值
Frefeat_channe6_cueN = Frefeat_channe6_cueN*intermF;
Frefeat_channe6_cueP = Frefeat_channe6_cueP*intermF;
% To calculate the features for each trial of channel2 (135-cueN, 133-cueP)
