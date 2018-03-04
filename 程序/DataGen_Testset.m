%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1  分离测试集通道
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n=1024;
Fs=256;  
fid = fopen('D:\dataSet\dataSet\Testdata\Testdata.txt','r');
t1 = fscanf(fid, '%g %g', [5376 293]);
t1=t1';
%calculate the scp of channel1_test
for j =1:896 
    for i=1:293
        channe1_test(i,j) = t1(i,j);
    end
end
%extract the scp of channel2_test
for j =1:896 
    for i=1:293
        channe2_test(i,j) = t1(i,j+896);
    end
end
%extract the scp of channel3_1

for j =1:896 
    for i=1:293
        channe3_test(i,j) =  t1(i,j+1792);
    end
end
%extract the scp of channel4_1

for j =1:896 
    for i=1:293
        channe4_test(i,j) =  t1(i,j+2688);
    end
end
%channe4_cueN = channe4_cueN';
%the result of the command above is 896*896-----wrong. 
%extract the scp of channel5_1
for j =1:896 
    for i=1:293
        channe5_test(i,j) =  t1(i,j+3584);
    end
end
%extract the scp of channel6_1

for j =1:896 
    for i=1:293
        channe6_test(i,j) = t1(i,j+4480);
    end
end
