roja=30
negra=24
amarilla=8
blanca=15
verde=13

u=sum(roja,negra,amarilla,blanca,verde)

muestra=5

vec=c(rep('r',roja),rep('n',negra),rep('a',amarilla),rep('b',blanca),rep('v',verde))
cant=seq(1,500,50)
j=1
s=c()
h=1
k=length(cant)
w=c()
z=1
replicas=5
colors=c('green','blue','cyan','purple','red')
v=rep(0,length(cant))
plot(cant,v, xlim=c(min(cant),max(cant)),col='white', xlab='Tamaño de muestra', ylim=c(0.9,1), ylab='Proporción')
ult=c()
for (z in 1:replicas){
for (h in 1:k){
  s=c()
for (j in 1:cant[h]){
x= sample(vec,muestra, replace=FALSE, prob=rep(1/u,u))
r=0
n=0
a=0
b=0
v=0
si=0
for (i in 1:5){
  if (x[i]=='r'){
    r=r +1
  }
  if (x[i]=='n'){
    n=n +1
  }
  if (x[i]=='a'){
    a=a +1
  }
  if (x[i]=='b'){
    b=b +1
  }
  if (x[i]=='v'){
    v=v +1
  }
}

if (r>=2 | n>=2 | a>=2 | b>=2 | v>=2){
  si=si+1
}
s[j]=si
}
  w[h]=sum(s)/cant[h]
}
 lines(cant,w, col=colors[z]) 
 ult[z]=w[length(w)]
}
mean(ult)
