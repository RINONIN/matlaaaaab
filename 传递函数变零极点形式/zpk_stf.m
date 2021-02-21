hh=zpk(z,p,k);
G=tf(numd,dend) ;
pzmap(G);
[z,p,k]=zpkdata(G,'v');