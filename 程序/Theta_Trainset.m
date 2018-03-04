load ('D:\dataSet\dataSet\FeatureSet_Train.mat');
load ('D:\dataSet\dataSet\Labels_Trainset.mat');

a=size(feature_SCP_train,1);
feat_SCP_Trainset = [ones(size(feature_SCP_train,1),1) feature_SCP_train];
[theta_SCP_Trainset, ll_SCP] = log_regression(feat_SCP_Trainset,label_classification);
m=size(feat_SCP_Trainset,1);

%figure; hold on;
%
%for i=1:m
    %if(label_classification(i)==0)
    %plot(feature_SCP_Trainset(i,2),feature_SCP_Trainset(i,3),'rx');
    %else
    %plot(feature_SCP_Trainset(i,2),feature_SCP_Trainset(i,3),'go');
    %end
%end
%
%x = min(feature_SCP_Trainset(:,2)):.01:max(feature_SCP_Trainset(:,2));
%y = -theta_SCP_Trainset(1)/theta_SCP_Trainset(3)-theta_SCP_Trainset(2)/theta_SCP_Trainset(3)*x;
%plot(x,y);

b=size(feat_POWmtm_train,1);
feat_POWmtm_train = [ones(size(feat_POWmtm_train,1),1) feat_POWmtm_train];
[theta_POWmtm_Trainset, ll_POWmtm] = log_regression(feat_POWmtm_train,label_classification);
m=size(feat_POWmtm_train,1);

%figure; hold on;
%
%for i=1:m
    %if(label_classification(i)==0)
    %plot(feature_POWmtm_train(i,2),feature_POWmtm_train(i,3),'rx');
    %else
    %plot(feature_POWmtm_train(i,2),feature_POWmtm_train(i,3),'go');
    %end
%end
%
%x = min(feature_POWmtm_train(:,2)):.01:max(feature_POWmtm_train(:,2));
%y = -theta_POWmtm_Trainset(1)/theta_POWmtm_Trainset(3)-theta_POWmtm_Trainset(2)/theta_POWmtm_Trainset(3)*x;
%plot(x,y);

c=size(feat_POWwelch_train,1);
feat_POWwelch_train = [ones(size(feat_POWwelch_train,1),1) feat_POWwelch_train];
[theta_POWwelch_Trainset, ll_POWwelch] = log_regression(feat_POWwelch_train,label_classification);
m=size(feat_POWwelch_train,1);

%figure; hold on;
%
%for i=1:m
    %if(label_classification(i)==0)
    %plot(feature_POWmtm_train(i,2),feature_POWmtm_train(i,3),'rx');
    %else
    %plot(feature_POWmtm_train(i,2),feature_POWmtm_train(i,3),'go');
    %end
%end
%
%x = min(feature_POWmtm_train(:,2)):.01:max(feature_POWmtm_train(:,2));
%y = -theta_POWmtm_Trainset(1)/theta_POWmtm_Trainset(3)-theta_POWmtm_Trainset(2)/theta_POWmtm_Trainset(3)*x;
%plot(x,y);

d=size(feat_POWandMTM_train,1);
feat_POWandMTM_train = [ones(size(feat_POWandMTM_train,1),1) feat_POWandMTM_train];
[theta_POWandMTM_Trainset, ll_POWandMTM] = log_regression(feat_POWandMTM_train,label_classification);
m=size(feat_POWandMTM_train,1);

e=size(feat_POWandWELCH_train,1);
feat_POWandWELCH_train = [ones(size(feat_POWandWELCH_train,1),1) feat_POWandWELCH_train];
[theta_POWandWELCH_Trainset, ll_POWandWELCH] = log_regression(feat_POWandWELCH_train,label_classification);
m=size(feat_POWandWELCH_train,1);

f=size(feature_A5_train,1);
feat_A5_Trainset = [ones(size(feature_A5_train,1),1) feature_A5_train];
[theta_A5_Trainset, ll_A5] = log_regression(feat_A5_Trainset,label_classification);
m=size(feat_A5_Trainset,1);

g=size(feat_6D_train,1);
feat_6D_Trainset = [ones(size(feat_6D_train,1),1) feat_6D_train];
[theta_6D_Trainset, ll_6D] = log_regression(feat_6D_Trainset,label_classification);
m=size(feat_6D_Trainset,1);

h=size(feat_8D_train,1);
feat_8D_Trainset = [ones(size(feat_8D_train,1),1) feat_8D_train];
[theta_8D_Trainset, ll_8D] = log_regression(feat_8D_Trainset,label_classification);
m=size(feat_8D_Trainset,1);

i=size(feature_energy_train,1);
feat_energy_Trainset = [ones(size(feature_energy_train,1),1) feature_energy_train];
[theta_energy_Trainset, ll_energy] = log_regression(feat_energy_Trainset,label_classification);
m=size(feat_energy_Trainset,1);

save Theta_Trainset.mat