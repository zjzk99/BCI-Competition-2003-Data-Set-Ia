function [norm_test]= normalize_test(Y)
    mean_test=mean(Y,1);
    std_test=std(Y);
    for i=1:293
        norm_test(i,1)=(Y(i,1)-mean_test)/std_test;
    end