load ('D:\dataSet\dataSet\mat\6channels_test.mat');
nfft=2048;
fs=256;
nw=3;
for h=1:293  %��ȡcueN1��power����������
        exp=channe1_test(h,:);
        [nxx,f]=pmtm(exp,nw,nfft,fs);
        NXX=10*log10(nxx);
        NXX=NXX';
        powerTest1(h,:)=NXX;
end
T1mtm=mean(powerTest1,2);
for h=1:293  %��ȡcueN2��power����������
        exp=channe2_test(h,:);
        [nxx,f]=pmtm(exp,nw,nfft,fs);
        NXX=10*log10(nxx);
        NXX=NXX';
        powerTest2(h,:)=NXX;
end
T2mtm=mean(powerTest2,2);
for h=1:293  %��ȡcueN3��power����������
        exp=channe3_test(h,:);
        [nxx,f]=pmtm(exp,nw,nfft,fs);
        NXX=10*log10(nxx);
        NXX=NXX';
        powerTest3(h,:)=NXX;
end
T3mtm=mean(powerTest3,2);
for h=1:293  %��ȡcueN4��power����������
        exp=channe4_test(h,:);
        [nxx,f]=pmtm(exp,nw,nfft,fs);
        NXX=10*log10(nxx);
        NXX=NXX';
        powerTest4(h,:)=NXX;
end
T4mtm=mean(powerTest4,2);
for h=1:293  %��ȡcueN5��power����������
        exp=channe5_test(h,:);
        [nxx,f]=pmtm(exp,nw,nfft,fs);
        NXX=10*log10(nxx);
        NXX=NXX';
        powerTest5(h,:)=NXX;
end
T5mtm=mean(powerTest5,2);
for h=1:293  %��ȡcueN6��power����������
        exp=channe6_test(h,:);
        [nxx,f]=pmtm(exp,nw,nfft,fs);
        NXX=10*log10(nxx);
        NXX=NXX';
        powerTest6(h,:)=NXX;
end
T6mtm=mean(powerTest6,2);