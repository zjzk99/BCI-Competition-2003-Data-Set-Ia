function error=daubcomp(t,y,n,r)

[c,l]=wavedec(y,n,'db2');
cc=compress(c,r);
yc=waverec(cc,l,'db2');
plot(t,y,t,yc)
error = norm(y-yc,2)/norm(y);