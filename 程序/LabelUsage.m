%���ò�ͬ����������FDA����ʵ��
% D:\Keling\Codes\BCI2003 DataSetI\classifi_using_FDA.m
%Author:Keling Fei
%First Written: 04/07/2012
%Last updated:  xx/xx/2013
%--------------------------------------------------------------------------
%��3�����ĸ�����ֵ��Ϊ��������ѧϰ����
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\feature4_all_train.txt','r');
Features = fscanf(fid, '%g %g %g %g', [4 268]);
X = normalize(Features);   %��Ϊǰ��������ֵΪscp,������������ֵΪ��������ֵ��������й�һ������
X = X';
fid = fopen('ClassResult_train_all.txt','r');
Y = fscanf(fid, '%g %g', [1 268]);
[WEIGHTS,INTERCEPT]=FDA_TRAIN(X,Y);
% ���÷������Բ������ݽ��з���
fid = fopen('feature4_test.txt','r');
FeaturesT = fscanf(fid, '%g %g %g %g', [4 293]);
Xt = normalize(FeaturesT); 
Xt =Xt'; 
LABEL_TEST=FDA_TEST(Xt,WEIGHTS,INTERCEPT);
LABEL_TEST = LABEL_TEST';
%ԭ������
%[percent_contr] = Result(LABEL_TEST);
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\test_labels_data_set_ia.txt','r');
LABEL_TRUE= fscanf(fid, '%g %g', [293 1]);
%��test_labels_data_set_ia.txt�У�0--cueN,1--cueP,����FDA�㷨�й涨0-->-1
%�����FDA�㷨�����жϷ�����ȷ��ʱ�������������
 LABEL_TRUE(find(LABEL_TRUE==0))=-1;
[correct]=stat_class_percent(LABEL_TEST,LABEL_TRUE);
corr_percent=correct*100%;
warning('classification finished!')
%--------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%��1��������ѵ�����ݣ�һ�����ݣ�����ȡ��������1��2��FDA������ѵ��
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\train_part1.txt','r');
X = fscanf(fid, '%g %g', [2 134]);
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\ClassResult_train_part1.txt','r');
Y = fscanf(fid, '%g %g', [1 134]);
[WEIGHTS,INTERCEPT]=FDA_TRAIN(X,Y);
% ����FDA������������һ��ѵ�����ݽ��з��࣬�Ա������֤
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\train_part2.txt','r');
Xt = fscanf(fid, '%g %g', [2 134]);
LABEL_TEST=FDA_TEST(Xt,WEIGHTS,INTERCEPT);
LABEL_TEST = LABEL_TEST';
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\ClassResult_train_part1.txt','r');
LABEL_TRUE= fscanf(fid, '%g %g', [134 1]);
[correct]=stat_class_percent(LABEL_TEST,LABEL_TRUE);
corr_percent=correct*100%;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%��2����ȫ��ѵ�����ݣ�����������ֵ������Ϊ��������ѧϰ����
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\feature1_2_train.txt','r');
X = fscanf(fid, '%g %g', [2 268]);
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\ClassResult_train_all.txt','r');
Y = fscanf(fid, '%g %g', [1 268]);
[WEIGHTS,INTERCEPT]=FDA_TRAIN(X,Y);
% ���÷������Բ������ݽ��з���
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\feature1_2_test.txt','r');
Xt = fscanf(fid, '%g %g', [2 293]);
LABEL_TEST=FDA_TEST(Xt,WEIGHTS,INTERCEPT);
LABEL_TEST = LABEL_TEST';
%ԭ������
%[percent] = Result(LABEL_TEST);
%����ʹ�÷���
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\test_labels_data_set_ia.txt','r');
LABEL_TRUE= fscanf(fid, '%g %g', [293 1]);
%��test_labels_data_set_ia.txt�У�0--cueN,1--cueP,����FDA�㷨�й涨0-->-1
%�����FDA�㷨�����жϷ�����ȷ��ʱ�������������
 LABEL_TRUE(find(LABEL_TRUE==0))=-1;
[correct]=stat_class_percent(LABEL_TEST,LABEL_TRUE);
