load ('D:\dataSet\dataSet\6channels_test.mat');
nfft=1024;
fs=256;
nw=3;
for h=1:293  %提取cueN1的power并做出矩阵
        expmtm_test=channe1_test(h,:);
        [nxxmtm_test,fmtm_test]=pmtm(expmtm_test,nw,nfft,fs);
        Nxxmtm_test=10*log10(nxxmtm_test);
        Nxxmtm_test=Nxxmtm_test';
        powermtm1_test(h,:)=Nxxmtm_test;
end
Nx1mtm_test=mean(powermtm1_test,1);
for h=1:293  %提取cueN2的power并做出矩阵
        expmtm_test=channe2_test(h,:);
        [nxxmtm_test,fmtm_test]=pmtm(expmtm_test,nw,nfft,fs);
        Nxxmtm_test=10*log10(nxxmtm_test);
        Nxxmtm_test=Nxxmtm_test';
        powermtm2_test(h,:)=Nxxmtm_test;
end
Nx2mtm_test=mean(powermtm2_test,1);
for h=1:293  %提取cueN3的power并做出矩阵
        expmtm_test=channe3_test(h,:);
        [nxxmtm_test,fmtm_test]=pmtm(expmtm_test,nw,nfft,fs);
        Nxxmtm_test=10*log10(nxxmtm_test);
        Nxxmtm_test=Nxxmtm_test';
        powermtm3_test(h,:)=Nxxmtm_test;
end
Nx3mtm_test=mean(powermtm3_test,1);
for h=1:293  %提取cueN4的power并做出矩阵
        expmtm_test=channe4_test(h,:);
        [nxxmtm_test,fmtm_test]=pmtm(expmtm_test,nw,nfft,fs);
        Nxxmtm_test=10*log10(nxxmtm_test);
        Nxxmtm_test=Nxxmtm_test';
        powermtm4_test(h,:)=Nxxmtm_test;
end
Nx4mtm_test=mean(powermtm4_test,1);
for h=1:293  %提取cueN5的power并做出矩阵
        expmtm_test=channe5_test(h,:);
        [nxxmtm_test,fmtm_test]=pmtm(expmtm_test,nw,nfft,fs);
        Nxxmtm_test=10*log10(nxxmtm_test);
        Nxxmtm_test=Nxxmtm_test';
        powermtm5_test(h,:)=Nxxmtm_test;
end
Nx5mtm_test=mean(powermtm5_test,1);
for h=1:293  %提取cueN6的power并做出矩阵
        expmtm_test=channe6_test(h,:);
        [nxxmtm_test,fmtm_test]=pmtm(expmtm_test,nw,nfft,fs);
        Nxxmtm_test=10*log10(nxxmtm_test);
        Nxxmtm_test=Nxxmtm_test';
        powermtm6_test(h,:)=Nxxmtm_test;
end
Nx6mtm_test=mean(powermtm6_test,1);

for h=1:293  %提取cueN1的power并做出矩阵
        expwelch_test=channe1_test(h,:);
        [nxxwelch_test,fwelch_test]=pmtm(expwelch_test,nw,nfft,fs);
        Nxxwelch_test=10*log10(nxxwelch_test);
        Nxxwelch_test=Nxxwelch_test';
        powerwelch1_test(h,:)=Nxxwelch_test;
end
Nx1welch_test=mean(powerwelch1_test,1);
for h=1:293  %提取cueN2的power并做出矩阵
        expwelch_test=channe2_test(h,:);
        [nxxwelch_test,fwelch_test]=pmtm(expwelch_test,nw,nfft,fs);
        Nxxwelch_test=10*log10(nxxwelch_test);
        Nxxwelch_test=Nxxwelch_test';
        powerwelch2_test(h,:)=Nxxwelch_test;
end
Nx2welch_test=mean(powerwelch2_test,1);
for h=1:293  %提取cueN3的power并做出矩阵
        expwelch_test=channe3_test(h,:);
        [nxxwelch_test,fwelch_test]=pmtm(expwelch_test,nw,nfft,fs);
        Nxxwelch_test=10*log10(nxxwelch_test);
        Nxxwelch_test=Nxxwelch_test';
        powerwelch3_test(h,:)=Nxxwelch_test;
end
Nx3welch_test=mean(powerwelch3_test,1);
for h=1:293  %提取cueN4的power并做出矩阵
        expwelch_test=channe4_test(h,:);
        [nxxwelch_test,fwelch_test]=pmtm(expwelch_test,nw,nfft,fs);
        Nxxwelch_test=10*log10(nxxwelch_test);
        Nxxwelch_test=Nxxwelch_test';
        powerwelch4_test(h,:)=Nxxwelch_test;
end
Nx4welch_test=mean(powerwelch4_test,1);
for h=1:293  %提取cueN5的power并做出矩阵
        expwelch_test=channe5_test(h,:);
        [nxxwelch_test,fwelch_test]=pmtm(expwelch_test,nw,nfft,fs);
        Nxxwelch_test=10*log10(nxxwelch_test);
        Nxxwelch_test=Nxxwelch_test';
        powerwelch5_test(h,:)=Nxxwelch_test;
end
Nx5welch_test=mean(powerwelch5_test,1);
for h=1:293  %提取cueN6的power并做出矩阵
        expwelch_test=channe6_test(h,:);
        [nxxwelch_test,fwelch_test]=pmtm(expwelch_test,nw,nfft,fs);
        Nxxwelch_test=10*log10(nxxwelch_test);
        Nxxwelch_test=Nxxwelch_test';
        powerwelch6_test(h,:)=Nxxwelch_test;
end
Nx6welch_test=mean(powerwelch6_test,1);

save PowerValue_Test.mat
