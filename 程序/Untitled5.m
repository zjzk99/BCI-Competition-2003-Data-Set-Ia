load ('D:\dataSet\dataSet\6channels.mat');
X=mean(channe6_cueN,1);
Y=mean(channe6_cueP,1);

wpt_N=wpdec(X,4,'db4');
wpt_P=wpdec(Y,4,'db4');

plot(wpt_N);
hold on;
plot(wpt_P);


