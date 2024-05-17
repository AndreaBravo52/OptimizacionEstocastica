w=c(-1,1)
xn=0
n=2
j=0
h=c(10,15,25,50,75,100,150,200,250,400,500)
r=length(u)
y=0
z=rep(0,r)
numsim=5
u=seq(0,1,0.1)
plot(u,z,col='white', ylim=c(0,1),ylab='Probabilidad', xlab='Valor de p')
colores=c('red','green','cyan','blue','purple')
for (q in 1:numsim){
  for (f in 1:r){
    for (j in 1:h[f]){
      for (i in 1:n){
        x=sample(w,1,prob=c(1-u[f],u[f]))
        xn=xn+x
      }
      if(xn==0){
        y=y+1
      }
      xn=0
    }
    cat('Con un numero de pruebas de', h[f],'\n')
    cat('Para un valor de p de ', u[f],'la probabilidad es de: ',y/h[f],'\n' )
    z[f]=y/h[f]
    y=0
  }
  lines(u,z, type='l',col=colores[q])}