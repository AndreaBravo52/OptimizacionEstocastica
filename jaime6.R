pob=5000
mu=750
var=10000
sigma=sqrt(var)
k=5
n=seq(50,500,50)


i=1
j=1
colors=c('green','blue','cyan','purple','red')
w=c()
h=1
v=rep(0,length(n))
plot(n,v, xlim=c(min(n),max(n)),col='white', xlab='Tamaño de muestra', ylim=c(700,800), ylab='Media promedio de la muestra')
for (h in 1:k){
  i=0
  j=0
  w=c()
  for (i in 1:length(n)){
      x=rnorm(n[i],mu,sigma)
      w[i]=mean(x)
  }
  lines(n,w, col=colors[h],type='l')
}

