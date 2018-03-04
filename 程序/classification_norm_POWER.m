load ('D:\dataSet\dataSet\mat\feature_normalization.mat');
%   1.1ªÊ÷∆…¢µ„Õº
b=size(featurePOWER,1);
featurePOWER = [ones(size(featurePOWER,1),1) featurePOWER];
[theta, ll] = log_regression(featurePOWER,label_classification);
m=size(featurePOWER,1);

figure; hold on;
for i=1:m
if(label_classification(i)==0)
plot(featurePOWER(i,2),featurePOWER(i,3),'rx');
else
plot(featurePOWER(i,2),featurePOWER(i,3),'go');
end
end

x = min(featurePOWER(:,2)):.01:max(featurePOWER(:,2));
y = -theta(1)/theta(3)-theta(2)/theta(3)*x;
plot(x,y);