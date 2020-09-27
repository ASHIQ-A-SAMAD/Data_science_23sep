#taking package
a=datasets::airquality

#another method
d= data.frame(airquality)

#head
head(d)

#tail
tail(d)


#taking row or colomn

d$Day

d[,6]
 data.frame(d$Day)
 
 #to remove  6th coloumn
 d[, -6]
 
m= d[c(-1:-100),]
m 


#summary
summary(m)
summary(m$Ozone)


#plotsm
plot(m)

plot(m$Ozone)
plot(m[c(1:3)])

plot(m$Ozone, xlab ="abc",ylab ="xyx", type='l' )
plot(m$Ozone, xlab ="abc",ylab ="xyx", type='o', col='blue' ) 
plot(m$Ozone, xlab ="abc",ylab ="xyx") 


#barplot

barplot(m$Ozone, col= 'red')
barplot(m$Ozone, col= 'red', horiz= 'T')


#HISTOGRAM

hist(m$Ozone,col='green',axes = T)

#boxplot
boxplot(m)
boxplot(m$Ozone)


#par

par( mfrow=c(1,2))
boxplot(m$Ozone)
boxplot(m$Wind)
plot(m$Ozone, xlab ="abc",ylab ="xyx", type='l' )
plot(m$Ozone, xlab ="abc",ylab ="xyx", type='o', col='blue' ) 




par( mfrow=c(1,2), mar=c(2,2,2,2), bty='l', las=1)
boxplot(m$Ozone)
boxplot(m$Wind)
plot(m$Ozone, xlab ="abc",ylab ="xyx", type='l' )
plot(m$Ozone, xlab ="abc",ylab ="xyx", type='o', col='blue' ) 


#NA. RM
w=c(1,2,3,4,5,NA)
mean(w)
mean(w, na.rm=F)
#------------------------------#

#selec, filter---

d=data.frame(airports)
p=select(d,lon,lat)
head(p,10)
filter(d,dst=='U', alt == 1000)


#pipeline


d %>% select(lon) %>% filter( lon >60)
d%>% filter(lon>10 & dst == 'A')
d%>%arrange(name)
d%>% filter(lat>0)
q=d%>% select(lon)%>% mutate(lon1= lon+100)
m= d%>% mutate(d1= d$lat * .1, d2= d$alt *0)
