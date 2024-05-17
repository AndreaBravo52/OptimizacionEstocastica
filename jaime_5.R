library(purrr)
library(ggplot2)
#En una urna se tienen 100 canicas: 25 color negro, 15 rojas, 30 blancas y el resto amarillas.
u=100
negro=25
rojo=15
blanco=30
amarillo=30

canicas=c(rep(1,negro),rep(2,rojo),rep(3,blanco),rep(4,amarillo))

#replicas
k=5
#para
n=seq(10,100,5)

i=0
j=0
colors=c('green','blue','cyan','purple','red')
w=c()
h=1
v=rep(0,length(n))
plot(n,v, xlim=c(min(n),max(n)),col='white', xlab='Número de canicas sacadas', ylim=c(0,1), ylab='Proporción de canicas negras sacadas')
for (h in 1:k){
  i=0
  j=0
  w=c()
  
for (i in 1:length(n)){
  s=c()
  for (j in 1:n[i]){
   x=rdunif(1,b=1,a=u)
   s[j]=canicas[x]
  }
  l=0
  m=0
  for (l in 1:length(s)){
    if (s[l]==4){m=m+1}
  }
  w[i]=m/length(s)
}
  lines(n, w, col=colors[h],type='l')
}
