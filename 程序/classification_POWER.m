load ('D:\dataSet\dataSet\mat\feature_normalization.mat');
%   1.1ªÊ÷∆…¢µ„Õº
b=size(feature_POWER,1);
feature_POWER = [ones(size(feature_POWER,1),1) feature_POWER];
[theta, ll] = log_regression(feature_POWER,label_classification);
m=size(feature_POWER,1);

figure; hold on;
for i=1:m
if(label_classification(i)==0)
plot(feature_POWER(i,2),feature_POWER(i,3),'rx');
else
plot(feature_POWER(i,2),feature_POWER(i,3),'go');
end
end
i=-theta(1)/theta(3);
j=-theta(2)/theta(3);
x = min(feature_POWER(:,2)):.01:max(feature_POWER(:,2));
y = -theta(1)/theta(3)-theta(2)/theta(3)*x;
plot(x,y);