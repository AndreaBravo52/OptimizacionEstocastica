library(purrr)
compactos=15
l=5
c=8
jeeps=7
compra=5

u=sum(compactos,l,c,jeeps)

#simulacion

vec=c(rep('Co',compactos), rep('Lu',l), rep('Ca', c),rep('Je',jeeps))
j=1

n=seq(50,50000,1000)
h=1
s=c()
k=5
colors=c('green','blue','cyan','purple','red')
v=rep(0,length(n))
plot(n,v, xlim=c(min(n),max(n)),col='white', xlab='Tamaño de muestra', ylim=c(0,0.008), ylab='Proporción')
ult=c()
for (z in 1:k){
for (h in 1:length(n)){
si=0
for (j in 1:n[h]){
x= sample(vec,compra, replace=FALSE, prob=rep(1/u,u))
lujos=0
cam=0
for (i in 1:5){
  if (x[i]=='Lu'){
    lujos=lujos +1
  }
  if (x[i]=='Ca'){
    cam=cam+1
  }
}

if (cam==3 & lujos==2){
 si=si+1
}
}
s[h]=si/n[h]
}
ult[z]=s[length(s)]
  lines(n,s, col=colors[z],type='l')
  
}

p=mean(ult)
print(p)