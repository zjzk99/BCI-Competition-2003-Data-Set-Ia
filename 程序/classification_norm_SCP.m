load ('D:\dataSet\dataSet\mat\feature_normalization.mat');
%   1.1ªÊ÷∆…¢µ„Õº
b=size(featureSCP,1);
featureSCP = [ones(size(featureSCP,1),1) featureSCP];
[theta, ll] = log_regression(featureSCP,label_classification);
m=size(featureSCP,1);

figure; hold on;
for i=1:m
if(label_classification(i)==0)
plot(featureSCP(i,2),featureSCP(i,3),'rx');
else
plot(featureSCP(i,2),featureSCP(i,3),'go');
end
end
i=-theta(1)/theta(3);
j=-theta(2)/theta(3);
x = min(featureSCP(:,2)):.01:max(featureSCP(:,2));
y = -theta(1)/theta(3)-theta(2)/theta(3)*x;
plot(x,y);

