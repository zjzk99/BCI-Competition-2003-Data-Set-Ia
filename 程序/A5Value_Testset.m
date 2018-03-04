load ('D:\dataSet\dataSet\6channels_test.mat');

A5_5_c1_test=zeros(293,896);
for i=1:293
    [C,L]=wavedec(channe1_test(i,:),5,'db4');
     A5=wrcoef('a',C,L,'db4',5);
     A5_5_c1_test(i,:)=A5;
end

A5_5_c2_test=zeros(293,896);
for i=1:293
    [C,L]=wavedec(channe2_test(i,:),5,'db4');
     A5=wrcoef('a',C,L,'db4',5);
     A5_5_c2_test(i,:)=A5;
end

save A5Value_Test.mat