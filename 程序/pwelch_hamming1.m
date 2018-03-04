%取出各个通道的脑电数据，并画出平均功率谱
load('D:\dataSet\dataSet\mat\6channels.mat')
window=hamming(256);
noverlap=128;
nfft=896;
fs=256;
%for h=1:135
    %for l=1:896
        exp=channe4_cueN(1,:);
        c=exp;
        [nxx,f]=pwelch(c,window,noverlap,nfft,fs);
        Nxx=10*log10(nxx);
        Nxx=Nxx';
        power(h,:)=Nxx;
        %end
%end
        
        