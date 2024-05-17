w=c(-1,1)
xn=0
n=2
j=0
h=c(10,25,50,100,200,400)
r=length(h)
y=0
z=rep(0,r)
numsim=5
plot(h,z,col='white', ylim=c(0,1),ylab='Probabilidad', xlab='Número de pruebas')
colores=c('red','green','cyan','blue','purple')
for (q in 1:numsim){
for (f in 1:r){
  for (j in 1:h[f]){
    for (i in 1:n){
      x=sample(w,1)
      xn=xn+x
    }
    if(xn==0){
      y=y+1
    }
    xn=0
  }
  cat('Para una cantidad de repeticiones', h[f],'la probabilidad es de: ',y/h[f],'\n' )
  z[f]=y/h[f]
  y=0
}
lines(h,z, type='l',col=colores[q])}