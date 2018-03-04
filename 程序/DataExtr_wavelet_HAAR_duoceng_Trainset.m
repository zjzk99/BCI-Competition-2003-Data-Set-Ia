load ('D:\dataSet\dataSet\6channels.mat');
%C_Haar_3_c1_cueN=zeros(135,896);
A3_3_c6_cueN=zeros(135,896);
D3_3_c6_cueN=zeros(135,896);
D2_3_c6_cueN=zeros(135,896);
D1_3_c6_cueN=zeros(135,896);
for i=1:135
    [C,L]=wavedec(channe3_cueN(i,:),3,'haar');
     %C_Haar_3_c1_cueN(i,:)=C;
     A3=wrcoef('a',C,L,'haar',3);
     A3_3_c6_cueN(i,:)=A3;
     D3=wrcoef('d',C,L,'haar',3);
     D3_3_c6_cueN(i,:)=D3;
     D2=wrcoef('d',C,L,'haar',2);
     D2_3_c6_cueN(i,:)=D2;
     D1=wrcoef('d',C,L,'haar',1);
     D1_3_c6_cueN(i,:)=D1;
end
A3_3_c6_cueN=mean(A3_3_c6_cueN,1);
D3_3_c6_cueN=mean(D3_3_c6_cueN,1);
D2_3_c6_cueN=mean(D2_3_c6_cueN,1);
D1_3_c6_cueN=mean(D1_3_c6_cueN,1);

A3_3_c6_cueP=zeros(133,896);
D3_3_c6_cueP=zeros(133,896);
D2_3_c6_cueP=zeros(133,896);
D1_3_c6_cueP=zeros(133,896);
for i=1:133
    [C,L]=wavedec(channe3_cueP(i,:),3,'haar');
     %C_Haar_3_c1_cueN(i,:)=C;
     A3=wrcoef('a',C,L,'haar',3);
     A3_3_c6_cueP(i,:)=A3;
     D3=wrcoef('d',C,L,'haar',3);
     D3_3_c6_cueP(i,:)=D3;
     D2=wrcoef('d',C,L,'haar',2);
     D2_3_c6_cueP(i,:)=D2;
     D1=wrcoef('d',C,L,'haar',1);
     D1_3_c6_cueP(i,:)=D1;
end
A3_3_c6_cueP=mean(A3_3_c6_cueP,1);
D3_3_c6_cueP=mean(D3_3_c6_cueP,1);
D2_3_c6_cueP=mean(D2_3_c6_cueP,1);
D1_3_c6_cueP=mean(D1_3_c6_cueP,1);

subplot(121);
plot(A3_3_c6_cueN,'r');
hold on;
plot(A3_3_c6_cueP,'b');

subplot(122);
plot(D3_3_c6_cueN,'r');
hold on;
plot(D3_3_c6_cueP,'b');




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
