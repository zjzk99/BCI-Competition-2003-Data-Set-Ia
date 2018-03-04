load ('D:\dataSet\dataSet\mat\6channels.mat');
window=hamming(256);
noverlap=128;
nfft=2048;
fs=256;
for h=1:135  %��ȡcueN1��power����������
        expwelch=channe1_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
        Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx1welch=mean(powerNwelch,1);
for h=1:135  %��ȡcueN2��power����������
        expwelch=channe2_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
        Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx2welch=mean(powerNwelch,1);
for h=1:135  %��ȡcueN3��power����������
        expwelch=channe3_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
        Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx3welch=mean(powerNwelch,1);
for h=1:135  %��ȡcueN4��power����������
        expwelch=channe4_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
         Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx4welch=mean(powerNwelch,1);
for h=1:135  %��ȡcueN5��power����������
        expwelch=channe5_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
        Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx5welch=mean(powerNwelch,1);
for h=1:135  %��ȡcueN6��power����������
        expwelch=channe6_cueN(h,:);
        [nxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Nxxwelch=10*log10(nxxwelch);
        Nxxwelch=Nxxwelch';
        powerNwelch(h,:)=Nxxwelch;
end
Nx6welch=mean(powerNwelch,1);

for h=1:133  %��ȡcueP1��power����������
        expwelch=channe1_cueP(h,:);
        [pxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Pxxwelch=10*log10(pxxwelch);
        Pxxwelch=Pxxwelch';
        powerPwelch(h,:)=Pxxwelch;
end
Px1welch=mean(powerPwelch,1);
for h=1:133  %��ȡcueP2��power����������
        expwelch=channe2_cueP(h,:);
        [pxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Pxxwelch=10*log10(pxxwelch);
        Pxxwelch=Pxxwelch';
        powerPwelch(h,:)=Pxxwelch;
end
Px2welch=mean(powerPwelch,1);
for h=1:133  %��ȡcueP3��power����������
        expwelch=channe4_cueP(h,:);
        [pxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Pxxwelch=10*log10(pxxwelch);
        Pxxwelch=Pxxwelch';
        powerPwelch(h,:)=Pxxwelch;
end
Px3welch=mean(powerPwelch,1);
for h=1:133  %��ȡcueP4��power����������
        expwelch=channe4_cueP(h,:);
        [pxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Pxxwelch=10*log10(pxxwelch);
        Pxxwelch=Pxxwelch';
        powerPwelch(h,:)=Pxxwelch;
end
Px4welch=mean(powerPwelch,1);
for h=1:133  %��ȡcueP5��power����������
        expwelch=channe5_cueP(h,:);
        [pxxwelch,fwelch]=pwelch(expwelch,window,noverlap,nfft,fs);
        Pxxwelch=10*log10(pxxwelch);
        Pxxwelch=Pxxwelch';
        powerPwelch(h,:)=Pxxwelch;
end
Px5welch=mean(powerPwelch,1);
for h=1:133  %��ȡcueP6��power����������
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

