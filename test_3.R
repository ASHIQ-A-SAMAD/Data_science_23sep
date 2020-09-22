a=matrix(c(1,2,3,4),nrow=3,byrow=t)
a
a[1,]
b=matrix(c(1:6),nrow=3,ncol=4, byrow=T,dimnames=list(c('a1','a2','a3'),c('b1','b2','b3','b4')))

b         

c<-array(c(1:15),dim= c(2,2,2))
c
c[1,,2]
c[,,2]
c[2,,1]



d=data.frame(a=c(1,2,3),n=c(4,5,6),m=c(7,8,9))
d














a<-data.frame(x=c(1:3),y=c('a','b','c'))
a
a[c(1,2),]
a[2,]
a[,2]
a['x']
a["y"]
a$x
a$y
a$y[2]
a$y(2:3)
