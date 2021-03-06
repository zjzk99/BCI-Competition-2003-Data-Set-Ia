%%%%%%%%%%  hw1q1.m  %%%%%%%%%%
load('D:\dataSet\dataSet\logistic\q1x.dat')
load('D:\dataSet\dataSet\logistic\q1y.dat')
b=size(q1x,1);
q1x = [ones(size(q1x,1),1) q1x];
[theta, ll] = log_regression(q1x,q1y);

m=size(q1x,1);

figure; hold on;
for i=1:m
if(q1y(i)==0)
plot(q1x(i,2),q1x(i,3),'rx');
else
plot(q1x(i,2),q1x(i,3),'go');
end
end
x = min(q1x(:,2)):.01:max(q1x(:,2));
y = -theta(1)/theta(3)-theta(2)/theta(3)*x;
plot(x,y);
xlabel('x1');
ylabel('x2');

