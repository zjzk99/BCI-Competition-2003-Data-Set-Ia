load ('D:\dataSet\dataSet\6channels.mat');
n=3;
energy_train_c4_cueN=zeros(135,1);
pro_train_c4_cueN=zeros(135,8);
for i=1:135
    wpt_c4_cueN(i)=wpdec(channe4_cueN(i,:),3,'db2');
    for j=1:2^n %wpcoef(wpt1,[n,i-1])是求第n层第i个节点的系数
        E(j)=norm(wpcoef(wpt_c4_cueN(i),[n,j-1]),2);%求第i个节点的范数平方，其实也就是平方和
        E_total=sum(E); %求总能量
        pfir(j)= E(j)/E_total;%求每个节点的概率
    end
    energy_train_c4_cueN(i,1)=E_total;
    pro_train_c4_cueN(i,:)=pfir;
    T=besttree(wpt_c4_cueN(i));
end

energy_train_c4_cueP=zeros(133,1);
pro_train_c4_cueP=zeros(133,8);
for i=1:133
    wpt_c4_cueP(i)=wpdec(channe4_cueP(i,:),3,'db2');
    for j=1:2^n %wpcoef(wpt1,[n,i-1])是求第n层第i个节点的系数
        E(j)=norm(wpcoef(wpt_c4_cueP(i),[n,j-1]),2);%求第i个节点的范数平方，其实也就是平方和
        E_total=sum(E); %求总能量
        pfir(j)= E(j)/E_total;%求每个节点的概率
    end
    energy_train_c4_cueP(i,:)=E_total;
    pro_train_c4_cueP(i,:)=pfir;
    T=besttree(wpt_c4_cueP(i));
end

energy_train_c6_cueN=zeros(135,1);
pro_train_c6_cueN=zeros(135,8);
for i=1:135
    wpt_c6_cueN(i)=wpdec(channe6_cueN(i,:),3,'db2');
    for j=1:2^n %wpcoef(wpt1,[n,i-1])是求第n层第i个节点的系数
        E(j)=norm(wpcoef(wpt_c6_cueN(i),[n,j-1]),2);%求第i个节点的范数平方，其实也就是平方和
        E_total=sum(E); %求总能量
        pfir(j)= E(j)/E_total;%求每个节点的概率
    end
    energy_train_c6_cueN(i,:)=E_total;
    pro_train_c6_cueN(i,:)=pfir;
    T=besttree(wpt_c6_cueN(i));
end

energy_train_c6_cueP=zeros(133,1);
pro_train_c6_cueP=zeros(133,8);
for i=1:133
    wpt_c6_cueP(i)=wpdec(channe6_cueP(i,:),3,'db2');
    for j=1:2^n %wpcoef(wpt1,[n,i-1])是求第n层第i个节点的系数
        E(j)=norm(wpcoef(wpt_c6_cueP(i),[n,j-1]),2);%求第i个节点的范数平方，其实也就是平方和
        E_total=sum(E); %求总能量
        pfir(j)= E(j)/E_total;%求每个节点的概率
    end
    energy_train_c6_cueP(i,:)=E_total;
    pro_train_c6_cueP(i,:)=pfir;
    T=besttree(wpt_c6_cueP(i));
end

plot(wpt_c4_cueN(1));

%wpviewcf(wpt_c4_cueN(1),1);
%xlabel('时间或空值');
%ylabel('终端节点');

%s130=wprcoef(wpt_c4_cueN(1),[3,0]);
%s131=wprcoef(wpt_c4_cueN(1),[3,1]);
%s132=wprcoef(wpt_c4_cueN(1),[3,2]);
%s133=wprcoef(wpt_c4_cueN(1),[3,3]);
%s134=wprcoef(wpt_c4_cueN(1),[3,4]);
%s135=wprcoef(wpt_c4_cueN(1),[3,5]);
%s136=wprcoef(wpt_c4_cueN(1),[3,6]);
%s137=wprcoef(wpt_c4_cueN(1),[3,7]);

%plot(s137);
%ylabel('S137幅值');
%xlabel('样本序号');
%title('通道4 cueN S137特征值效果图');