load ('D:\dataSet\dataSet\mat\6channels.mat');
nfft=2048;
fs=256;
nw=3;
for h=1:135  %提取cueN1的power并做出矩阵
        expmtm=channe1_cueN(h,:);
        [nxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Nxxmtm=10*log10(nxxmtm);
        Nxxmtm=Nxxmtm';
        powerNmtm1(h,:)=Nxxmtm;
end
Nx1mtm=mean(powerNmtm1,1);
for h=1:135  %提取cueN2的power并做出矩阵
        expmtm=channe2_cueN(h,:);
        [nxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Nxxmtm=10*log10(nxxmtm);
        Nxxmtm=Nxxmtm';
        powerNmtm2(h,:)=Nxxmtm;
end
Nx2mtm=mean(powerNmtm2,1);
for h=1:135  %提取cueN3的power并做出矩阵
        expmtm=channe3_cueN(h,:);
        [nxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Nxxmtm=10*log10(nxxmtm);
        Nxxmtm=Nxxmtm';
        powerNmtm3(h,:)=Nxxmtm;
end
Nx3mtm=mean(powerNmtm3,1);
for h=1:135  %提取cueN4的power并做出矩阵
        expmtm=channe4_cueN(h,:);
        [nxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Nxxmtm=10*log10(nxxmtm);
         Nxxmtm=Nxxmtm';
        powerNmtm4(h,:)=Nxxmtm;
end
Nx4mtm=mean(powerNmtm4,1);
for h=1:135  %提取cueN5的power并做出矩阵
        expmtm=channe5_cueN(h,:);
        [nxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Nxxmtm=10*log10(nxxmtm);
        Nxxmtm=Nxxmtm';
        powerNmtm5(h,:)=Nxxmtm;
end
Nx5mtm=mean(powerNmtm5,1);
for h=1:135  %提取cueN6的power并做出矩阵
        expmtm=channe6_cueN(h,:);
        [nxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Nxxmtm=10*log10(nxxmtm);
        Nxxmtm=Nxxmtm';
        powerNmtm6(h,:)=Nxxmtm;
end
Nx6mtm=mean(powerNmtm6,1);

for h=1:133  %提取cueP1的power并做出矩阵
        expmtm=channe1_cueP(h,:);
        [pxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Pxxmtm=10*log10(pxxmtm);
        Pxxmtm=Pxxmtm';
        powerPmtm1(h,:)=Pxxmtm;
end
Px1mtm=mean(powerPmtm1,1);
for h=1:133  %提取cueP2的power并做出矩阵
        expmtm=channe2_cueP(h,:);
        [pxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Pxxmtm=10*log10(pxxmtm);
        Pxxmtm=Pxxmtm';
        powerPmtm2(h,:)=Pxxmtm;
end
Px2mtm=mean(powerPmtm2,1);
for h=1:133  %提取cueP3的power并做出矩阵
        expmtm=channe4_cueP(h,:);
        [pxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Pxxmtm=10*log10(pxxmtm);
        Pxxmtm=Pxxmtm';
        powerPmtm3(h,:)=Pxxmtm;
end
Px3mtm=mean(powerPmtm3,1);
for h=1:133  %提取cueP4的power并做出矩阵
        expmtm=channe4_cueP(h,:);
        [pxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Pxxmtm=10*log10(pxxmtm);
        Pxxmtm=Pxxmtm';
        powerPmtm4(h,:)=Pxxmtm;
end
Px4mtm=mean(powerPmtm4,1);
for h=1:133  %提取cueP5的power并做出矩阵
        expmtm=channe5_cueP(h,:);
        [pxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Pxxmtm=10*log10(pxxmtm);
        Pxxmtm=Pxxmtm';
        powerPmtm5(h,:)=Pxxmtm;
end
Px5mtm=mean(powerPmtm5,1);
for h=1:133  %提取cueP6的power并做出矩阵
        expmtm=channe6_cueP(h,:);
        [pxxmtm,fmtm]=pmtm(expmtm,nw,nfft,fs);
        Pxxmtm=10*log10(pxxmtm);
        Pxxmtm=Pxxmtm';
        powerPmtm6(h,:)=Pxxmtm;
end
Px6mtm=mean(powerPmtm6,1);

X=Nx4mtm;
Y=Px4mtm;
subplot(121);
plot(fmtm,X,'r');
hold on;
plot(fmtm,Y,'b');
hold on;


X=Nx6mtm;
Y=Px6mtm;
subplot(122);
plot(fmtm,X,'r');
hold on;
plot(fmtm,Y,'b');
hold on;
