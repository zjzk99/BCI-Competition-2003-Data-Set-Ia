%利用不同的特征进行FDA分类实验
% D:\Keling\Codes\BCI2003 DataSetI\classifi_using_FDA.m
%Author:Keling Fei
%First Written: 04/07/2012
%Last updated:  xx/xx/2013
%--------------------------------------------------------------------------
%（3）以四个特征值作为分类器的学习依据
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\feature4_all_train.txt','r');
Features = fscanf(fid, '%g %g %g %g', [4 268]);
X = normalize(Features);   %因为前两个特征值为scp,而后两个特征值为功率谱数值，故需进行归一化处理
X = X';
fid = fopen('ClassResult_train_all.txt','r');
Y = fscanf(fid, '%g %g', [1 268]);
[WEIGHTS,INTERCEPT]=FDA_TRAIN(X,Y);
% 利用分类器对测试数据进行分类
fid = fopen('feature4_test.txt','r');
FeaturesT = fscanf(fid, '%g %g %g %g', [4 293]);
Xt = normalize(FeaturesT); 
Xt =Xt'; 
LABEL_TEST=FDA_TEST(Xt,WEIGHTS,INTERCEPT);
LABEL_TEST = LABEL_TEST';
%原来方法
%[percent_contr] = Result(LABEL_TEST);
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\test_labels_data_set_ia.txt','r');
LABEL_TRUE= fscanf(fid, '%g %g', [293 1]);
%在test_labels_data_set_ia.txt中，0--cueN,1--cueP,因在FDA算法中规定0-->-1
%因此在FDA算法结束判断分类正确率时，须有以下语句
 LABEL_TRUE(find(LABEL_TRUE==0))=-1;
[correct]=stat_class_percent(LABEL_TEST,LABEL_TRUE);
corr_percent=correct*100%;
warning('classification finished!')
%--------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%（1）根据在训练数据（一半数据）中提取出的特征1、2对FDA分类器训练
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\train_part1.txt','r');
X = fscanf(fid, '%g %g', [2 134]);
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\ClassResult_train_part1.txt','r');
Y = fscanf(fid, '%g %g', [1 134]);
[WEIGHTS,INTERCEPT]=FDA_TRAIN(X,Y);
% 利用FDA分类器对另外一半训练数据进行分类，以便进行验证
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\train_part2.txt','r');
Xt = fscanf(fid, '%g %g', [2 134]);
LABEL_TEST=FDA_TEST(Xt,WEIGHTS,INTERCEPT);
LABEL_TEST = LABEL_TEST';
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\ClassResult_train_part1.txt','r');
LABEL_TRUE= fscanf(fid, '%g %g', [134 1]);
[correct]=stat_class_percent(LABEL_TEST,LABEL_TRUE);
corr_percent=correct*100%;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%（2）以全部训练数据（以两个特征值）来作为分类器的学习依据
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\feature1_2_train.txt','r');
X = fscanf(fid, '%g %g', [2 268]);
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\ClassResult_train_all.txt','r');
Y = fscanf(fid, '%g %g', [1 268]);
[WEIGHTS,INTERCEPT]=FDA_TRAIN(X,Y);
% 利用分类器对测试数据进行分类
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\feature1_2_test.txt','r');
Xt = fscanf(fid, '%g %g', [2 293]);
LABEL_TEST=FDA_TEST(Xt,WEIGHTS,INTERCEPT);
LABEL_TEST = LABEL_TEST';
%原来方法
%[percent] = Result(LABEL_TEST);
%后来使用方法
fid = fopen('D:\Keling\Codes\BCI2003 DataSetI\test_labels_data_set_ia.txt','r');
LABEL_TRUE= fscanf(fid, '%g %g', [293 1]);
%在test_labels_data_set_ia.txt中，0--cueN,1--cueP,因在FDA算法中规定0-->-1
%因此在FDA算法结束判断分类正确率时，须有以下语句
 LABEL_TRUE(find(LABEL_TRUE==0))=-1;
[correct]=stat_class_percent(LABEL_TEST,LABEL_TRUE);
