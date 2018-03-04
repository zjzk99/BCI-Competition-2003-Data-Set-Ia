%%%%%%% normalize.m %%%%%%%
%load ('D:\dataSet\dataSet\FeatureSet_Test.mat');
%load ('D:\dataSet\dataSet\FeatureSet_Train.mat');
function [norm_trainN]= normalize_trainN(X)
    mean_trainN=mean(X,1);
    std_trainN=std(X);
    for i=1:268
        norm_trainN(i,1)=(X(i,1)-mean_trainN)/std_trainN;
    end

    
        
