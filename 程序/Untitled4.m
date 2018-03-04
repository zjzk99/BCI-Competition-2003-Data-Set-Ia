
load ('D:\dataSet\dataSet\6channels.mat');
for i=1:135
    [C_cueN,L]=wavedec(channe2_cueN(i,:),5,'db4');
    temp_cueN(i,:)=C_cueN;
    f_cueN=mean(temp_cueN(i,:),1);
end
plot(f_cueN,'r');
hold on;
for i=1:133
    [C_cueP,L]=wavedec(channe2_cueP(i,:),5,'db4');
    temp_cueP(i,:)=C_cueP;
    f_cueP=mean(temp_cueP(i,:),1);
end
plot(f_cueP,'b');