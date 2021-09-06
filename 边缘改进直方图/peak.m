function p=peak(h)
n=size(h);
hh=reshape(h,1,n(1)*n(2));
hhh=sort(hh,'descend');
ff=find(hhh==0,1,'first');
a=hhh(1:ff);
p=mode(a);


