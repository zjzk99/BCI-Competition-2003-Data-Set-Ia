load ('D:\dataSet\dataSet\6channels.mat');
for i=1:135
    wpt_c4_cueN(i)=wpdec(channe4_cueN(i,:),3,'db2');
end
wpviewcf(wpt_c4_cueN(1),1);
xlabel('时间或空值');
ylabel('终端节点');

s130=wprcoef(wpt_c4_cueN(1),[3,0]);
s131=wprcoef(wpt_c4_cueN(1),[3,1]);
s132=wprcoef(wpt_c4_cueN(1),[3,2]);
s133=wprcoef(wpt_c4_cueN(1),[3,3]);
s134=wprcoef(wpt_c4_cueN(1),[3,4]);
s135=wprcoef(wpt_c4_cueN(1),[3,5]);
s136=wprcoef(wpt_c4_cueN(1),[3,6]);
s137=wprcoef(wpt_c4_cueN(1),[3,7]);

plot(s137);
ylabel('S137幅值');
xlabel('样本序号');
title('通道4 cueN S137特征值效果图');