%function 
% ˵��������ͨ�����Ե����ݴ�ԭʼ�ı��ļ��з������
% ������Ϊ��������ѵ�����ݼ���
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1  ����ͨ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n=1024;
Fs=256;  
fid1 = fopen('D:\dataSet\dataSet\Traindata_0\Traindata_0.txt','r');
a = fscanf(fid1, '%g %g', [5377 135]);
a=a';
%calculate the scp of channel1_cueN
for j =1:896 
    for i=1:135
        channe1_cueN(i,j) = a(i,j+1);
    end
end
%extract the scp of channel2_cueN
for j =1:896 
    for i=1:135
        channe2_cueN(i,j) = a(i,j+897);
    end
end
%extract the scp of channel3_cueN

for j =1:896 
    for i=1:135
        channe3_cueN(i,j) =  a(i,j+1793);
    end
end
%extract the scp of channel4_cueN

for j =1:896 
    for i=1:135
        channe4_cueN(i,j) =  a(i,j+2689);
    end
end
%channe4_cueN = channe4_cueN';
%the result of the command above is 896*896-----wrong. 
%extract the scp of channel5_cueN
for j =1:896 
    for i=1:135
        channe5_cueN(i,j) =  a(i,j+3585);
    end
end
%extract the scp of channel6_cueN

for j =1:896 
    for i=1:135
        channe6_cueN(i,j) = a(i,j+4481);
    end
end

fid2 = fopen('D:\dataSet\dataSet\Traindata_1\Traindata_1.txt','r');
a2 = fscanf(fid2, '%g %g', [5377 133]);
a2=a2';
%extract the scp of channel1_cueP
for j =1:896 
    for i=1:133
        channe1_cueP(i,j) = a2(i,j+1);
    end
end
%extract the scp of channel2_cueP

for j =1:896 
    for i=1:133
        channe2_cueP(i,j) = a2(i,j+897);
    end
end
%extract the scp of channel3_cueP

for j =1:896 
    for i=1:133
        channe3_cueP(i,j) = a2(i,j+1793);
    end
end
%extract the scp of channel4_cueP

for j =1:896 
    for i=1:133
        channe4_cueP(i,j) = a2(i,j+2689);
    end
end
%extract the scp of channel5_cueP
for j =1:896 
    for i=1:133
        channe5_cueP(i,j) = a2(i,j+3585);
    end
end
%extract the scp of channel6_cueP

for j =1:896 
    for i=1:133
        channe6_cueP(i,j) = a2(i,j+4481);
    end
end

X=mean(channe1_cueN,1);
Y=mean(channe1_cueP,1);
subplot(121);
plot(X,'r');
hold on;
plot(Y,'b');


X=mean(channe2_cueN,1);
Y=mean(channe2_cueP,1);
subplot(122);
plot(X,'r');
hold on;
plot(Y,'b');




save 6channels.mat
%% ��һ�����裬�������ݵ�˵���������������ķ�����ʵ�飬
%%1�� ����
%  ͨ��������ͨ����ͳ������mean SCP���ڸ����������ϵ���ֵͼ����ʾ����
%  �õ�����Ϣ�ǹ�����������Ч�����������ȡ������
%  we extracted two features from each trial ��  (one from each of channels 1 and channels 2��
%   by averaging the SCP voltage from 0.5 to 3.5 s after the beginning of
%  the feedback  phase.