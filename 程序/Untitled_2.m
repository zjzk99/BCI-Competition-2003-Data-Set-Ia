load ('D:\dataSet\dataSet\6channels.mat');
load ('D:\dataSet\dataSet\6channels.mat');
A5_5_c1_cueN=zeros(135,896);
D5_5_c1_cueN=zeros(135,896);
D4_5_c1_cueN=zeros(135,896);
D3_5_c1_cueN=zeros(135,896);
D2_5_c1_cueN=zeros(135,896);
D1_5_c1_cueN=zeros(135,896);
for i=1:135
    [C,L]=wavedec(channe2_cueN(i,:),5,'db4');
     %C_Haar_3_c1_cueN(i,:)=C;
     A5=wrcoef('a',C,L,'db4',5);
     A5_5_c1_cueN(i,:)=A5;
     D5=wrcoef('d',C,L,'db4',5);
     D5_5_c1_cueN(i,:)=D5;
     D4=wrcoef('d',C,L,'db4',4);
     D4_5_c1_cueN(i,:)=D4;
     D3=wrcoef('d',C,L,'db4',3);
     D3_5_c1_cueN(i,:)=D3;
     D2=wrcoef('d',C,L,'db4',2);
     D2_5_c1_cueN(i,:)=D2;
     D1=wrcoef('d',C,L,'db4',1);
     D1_5_c1_cueN(i,:)=D1;
end
A5_5_c1_cueN=mean(A5_5_c1_cueN,1);
D5_5_c1_cueN=mean(D5_5_c1_cueN,1);
D4_5_c1_cueN=mean(D4_5_c1_cueN,1);
D3_5_c1_cueN=mean(D3_5_c1_cueN,1);
D2_5_c1_cueN=mean(D2_5_c1_cueN,1);
D1_5_c1_cueN=mean(D1_5_c1_cueN,1);

A5_5_c1_cueP=zeros(133,896);
D5_5_c1_cueP=zeros(133,896);
D4_5_c1_cueP=zeros(133,896);
D3_5_c1_cueP=zeros(133,896);
D2_5_c1_cueP=zeros(133,896);
D1_5_c1_cueP=zeros(133,896);
for i=1:133
    [C,L]=wavedec(channe2_cueP(i,:),5,'db4');
     %C_Haar_3_c1_cueN(i,:)=C;
     A5=wrcoef('a',C,L,'db4',5);
     A5_5_c1_cueP(i,:)=A5;
     D5=wrcoef('d',C,L,'db4',5);
     D5_5_c1_cueP(i,:)=D5;
     D4=wrcoef('d',C,L,'db4',4);
     D4_5_c1_cueP(i,:)=D4;
     D3=wrcoef('d',C,L,'db4',3);
     D3_5_c1_cueP(i,:)=D3;
     D2=wrcoef('d',C,L,'db4',2);
     D2_5_c1_cueP(i,:)=D2;
     D1=wrcoef('d',C,L,'db4',1);
     D1_5_c1_cueP(i,:)=D1;
end
A5_5_c1_cueP=mean(A5_5_c1_cueP,1);
D5_5_c1_cueP=mean(D5_5_c1_cueP,1);
D4_5_c1_cueP=mean(D4_5_c1_cueP,1);
D3_5_c1_cueP=mean(D3_5_c1_cueP,1);
D2_5_c1_cueP=mean(D2_5_c1_cueP,1);
D1_5_c1_cueP=mean(D1_5_c1_cueP,1);

subplot(231);
plot(A5_5_c1_cueN,'r');
hold on;
plot(A5_5_c1_cueP,'b');

subplot(232);
plot(D5_5_c1_cueN,'r');
hold on;
plot(D5_5_c1_cueP,'b');

subplot(233);
plot(D4_5_c1_cueN,'r');
hold on;
plot(D4_5_c1_cueP,'b');

subplot(234);
plot(D3_5_c1_cueN,'r');
hold on;
plot(D3_5_c1_cueP,'b');

subplot(235);
plot(D2_5_c1_cueN,'r');
hold on;
plot(D2_5_c1_cueP,'b');

subplot(236);
plot(D1_5_c1_cueN,'r');
hold on;
plot(D1_5_c1_cueP,'b');


%X=mean( C_Haar_3_c1_cueN,1);
%C_Haar_3_c1_cueP=zeros(133,896);
%for i=1:133
%    [C,L]=wavedec(channe6_cueP(i,:),3,'haar');
%     C_Haar_3_c1_cueP(i,:)=C;
%end
%Y=mean( C_Haar_3_c1_cueP,1);
%plot(X,'r');
%hold on;
%plot(Y,'b');
