load ('D:\dataSet\dataSet\mat\6channels.mat');
window=hamming(256);
noverlap=128;
nfft=2048;
fs=256;
for h=1:135  %提取cueN1的power并做出矩阵
        expwelch=channe1_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
        Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx1welch=mean(powerNwelch,1);
for h=1:135  %提取cueN2的power并做出矩阵
        expwelch=channe2_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
        Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx2welch=mean(powerNwelch,1);
for h=1:135  %提取cueN3的power并做出矩阵
        expwelch=channe3_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
        Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx3welch=mean(powerNwelch,1);
for h=1:135  %提取cueN4的power并做出矩阵
        expwelch=channe4_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
         Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx4welch=mean(powerNwelch,1);
for h=1:135  %提取cueN5的power并做出矩阵
        expwelch=channe5_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
        Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx5welch=mean(powerNwelch,1);
for h=1:135  %提取cueN6的power并做出矩阵
        expwelch=channe6_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
        Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx6welch=mean(powerNwelch,1);

for h=1:133  %提取cueP1的power并做出矩阵
        expwelch=channe1_cueP(h,:);
        [pxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Pxxwelch=10*log10(pxxwelch);
        Pxxwelch=Pxxwelch';
        powerPwelch(h,:)=Pxxwelch;
end
Px1welch=mean(powerPwelch,1);
for h=1:133  %提取cueP2的power并做出矩阵
        expwelch=channe2_cueP(h,:);
        [pxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Pxxwelch=10*log10(pxxwelch);
        Pxxwelch=Pxxwelch';
        powerPwelch(h,:)=Pxxwelch;
end
Px2welch=mean(powerPwelch,1);
for h=1:133  %提取cueP3的power并做出矩阵
        expwelch=channe4_cueP(h,:);
        [pxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Pxxwelch=10*log10(pxxwelch);
        Pxxwelch=Pxxwelch';
        powerPwelch(h,:)=Pxxwelch;
end
Px3welch=mean(powerPwelch,1);
for h=1:133  %提取cueP4的power并做出矩阵
        expwelch=channe4_cueP(h,:);
        [pxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Pxxwelch=10*log10(pxxwelch);
        Pxxwelch=Pxxwelch';
        powerPwelch(h,:)=Pxxwelch;
end
Px4welch=mean(powerPwelch,1);
for h=1:133  %提取cueP5的power并做出矩阵
        expwelch=channe5_cueP(h,:);
        [pxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Pxxwelch=10*log10(pxxwelch);
        Pxxwelch=Pxxwelch';
        powerPwelch(h,:)=Pxxwelch;
end
Px5welch=mean(powerPwelch,1);
for h=1:133  %提取cueP6的power并做出矩阵
        expwelch=channe6_cueP(h,:);
        [pxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Pxxwelch=10*log10(pxxwelch);
        Pxxwelch=Pxxwelch';
        powerPwelch(h,:)=Pxxwelch;
end
Px6welch=mean(powerPwelch,1);



X=Nx4welch;
Y=Px4welch;
subplot(121);
plot(fwelch,X,'r');
hold on;
plot(fwelch,Y,'b');
hold on;


X=Nx6welch;
Y=Px6welch;
subplot(122);
plot(fwelch,X,'r');
hold on;
plot(fwelch,Y,'b');
hold on;

