w=c(1,-1)
xn=0
n=c(25,50,75,100)
y=0
u=seq(0,1,0.1)
j=0
rep=5
z=rep(0,length(u))
plot(u,z,col='white',ylim=c(1,100),ylab='Valor de m', xlab='Valor de p')
colores=c('red','green','cyan','blue','purple')
for (k in 1:rep){
for (j in 1:length(u)){
  for (i in 1:100){
   x=sample(w,1,prob=c(u[j],1-u[j]))
   xn=xn+x
    if(xn==50){
      y=y+1
      cat('con p=',u[j],'el m mínimo fue de:',i,'\n')
      z[j]=i
      }}
  xn=0
  y=0
}
  lines(u,z, type='l',col=colores[k])}
