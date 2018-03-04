%%%%%%% normalize.m %%%%%%%
%load ('D:\dataSet\dataSet\FeatureSet_Test.mat');
%load ('D:\dataSet\dataSet\FeatureSet_Train.mat');
function [norm_train]= normalize_train(X)
    mean_train=mean(X,1);
    std_train=std(X);
    for i=1:268
        norm_train(i,1)=(X(i,1)-mean_train)/std_train;
    end

    
        
