load ('D:\dataSet\dataSet\6channels.mat');
n=3;
energy_train_c4_cueN=zeros(135,1);
pro_train_c4_cueN=zeros(135,8);
for i=1:135
    wpt_c4_cueN(i)=wpdec(channe4_cueN(i,:),3,'db2');
    for j=1:2^n %wpcoef(wpt1,[n,i-1])�����n���i���ڵ��ϵ��
        E(j)=norm(wpcoef(wpt_c4_cueN(i),[n,j-1]),2);%���i���ڵ�ķ���ƽ������ʵҲ����ƽ����
        E_total=sum(E); %��������
        pfir(j)= E(j)/E_total;%��ÿ���ڵ�ĸ���
    end
    energy_train_c4_cueN(i,1)=E_total;
    pro_train_c4_cueN(i,:)=pfir;
    T=besttree(wpt_c4_cueN(i));
end

energy_train_c4_cueP=zeros(133,1);
pro_train_c4_cueP=zeros(133,8);
for i=1:133
    wpt_c4_cueP(i)=wpdec(channe4_cueP(i,:),3,'db2');
    for j=1:2^n %wpcoef(wpt1,[n,i-1])�����n���i���ڵ��ϵ��
        E(j)=norm(wpcoef(wpt_c4_cueP(i),[n,j-1]),2);%���i���ڵ�ķ���ƽ������ʵҲ����ƽ����
        E_total=sum(E); %��������
        pfir(j)= E(j)/E_total;%��ÿ���ڵ�ĸ���
    end
    energy_train_c4_cueP(i,:)=E_total;
    pro_train_c4_cueP(i,:)=pfir;
    T=besttree(wpt_c4_cueP(i));
end

energy_train_c6_cueN=zeros(135,1);
pro_train_c6_cueN=zeros(135,8);
for i=1:135
    wpt_c6_cueN(i)=wpdec(channe6_cueN(i,:),3,'db2');
    for j=1:2^n %wpcoef(wpt1,[n,i-1])�����n���i���ڵ��ϵ��
        E(j)=norm(wpcoef(wpt_c6_cueN(i),[n,j-1]),2);%���i���ڵ�ķ���ƽ������ʵҲ����ƽ����
        E_total=sum(E); %��������
        pfir(j)= E(j)/E_total;%��ÿ���ڵ�ĸ���
    end
    energy_train_c6_cueN(i,:)=E_total;
    pro_train_c6_cueN(i,:)=pfir;
    T=besttree(wpt_c6_cueN(i));
end

energy_train_c6_cueP=zeros(133,1);
pro_train_c6_cueP=zeros(133,8);
for i=1:133
    wpt_c6_cueP(i)=wpdec(channe6_cueP(i,:),3,'db2');
    for j=1:2^n %wpcoef(wpt1,[n,i-1])�����n���i���ڵ��ϵ��
        E(j)=norm(wpcoef(wpt_c6_cueP(i),[n,j-1]),2);%���i���ڵ�ķ���ƽ������ʵҲ����ƽ����
        E_total=sum(E); %��������
        pfir(j)= E(j)/E_total;%��ÿ���ڵ�ĸ���
    end
    energy_train_c6_cueP(i,:)=E_total;
    pro_train_c6_cueP(i,:)=pfir;
    T=besttree(wpt_c6_cueP(i));
end

plot(wpt_c4_cueN(1));

%wpviewcf(wpt_c4_cueN(1),1);
%xlabel('ʱ����ֵ');
%ylabel('�ն˽ڵ�');

%s130=wprcoef(wpt_c4_cueN(1),[3,0]);
%s131=wprcoef(wpt_c4_cueN(1),[3,1]);
%s132=wprcoef(wpt_c4_cueN(1),[3,2]);
%s133=wprcoef(wpt_c4_cueN(1),[3,3]);
%s134=wprcoef(wpt_c4_cueN(1),[3,4]);
%s135=wprcoef(wpt_c4_cueN(1),[3,5]);
%s136=wprcoef(wpt_c4_cueN(1),[3,6]);
%s137=wprcoef(wpt_c4_cueN(1),[3,7]);

%plot(s137);
%ylabel('S137��ֵ');
%xlabel('�������');
%title('ͨ��4 cueN S137����ֵЧ��ͼ');