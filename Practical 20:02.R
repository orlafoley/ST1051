#Practical 4
#Continuous - can take on any real number value
#Think Weibull, normal dist

#Normal Distribution
#E[x]= /mu
#V[x]= /sigma^2
norm_samp = rnorm(1000,0,1)
norm_samp
#standard deviation is parameter - not variance
hist(norm_samp,freq = F)
lines(density(norm_samp),col='red',lwd=3)
#bins are rectangular blocks
hist(norm_samp,freq = F, breaks = 30)
#bins are found/changed using breaks
p1=pnorm(1.2,0,1)
#find probability z score is 1.2
p2=pnorm(0.6)
p1-p2
#find probability that z falls between 0.6 and 1.2
?qnorm
qnorm(0.8849303)
#use qnorm when you have a probability and want to find corresponding Z score
B=qnorm(0.975)
A=qnorm(0.025)
A
A=qnorm(0.025,lower.tail = F)
#think of symmetry in norm. dist., signs switch
A

setwd('/Users/orlafoley/Desktop/College/1st Year/Semester 2/ST1051')
#set working directory as stats folder in sem 2
variables=read.table('variable.txt',header = T)
#read in a file from said folder
variables=data.frame(variables)
par(mfrow=c(2,2))
#splits into one row, two columns - c(1,2)
hist(variables$var1)
hist(variables$var2)
#var 1 more like normal dist, var 2 is skewed

qqnorm(variables$var1)
#creates normal probability plot - normal is line is relatively straight
qqline(variables$var1)

qqnorm(variables$var2)
qqline(variables$var2)

summary(variables)

#Exponential Distribution
#waiting times, life times, etc
#rate parameter is lambda
?rexp
par(mfrow=c(1,1))
#undo thing above and unsplit the graph screen
my_rexp = rexp(1000,0.25)
hist(my_rexp, breaks = 30)
pexp(5,rate = 0.25)
pexp(8,0.2)-pexp(6,0.2) 
#prob it falls between these 2 values

#Weibull Distribution
rweib=rweibull(1000,shape = 1.5,scale=2)
#random Weibull sample
hist(rweib,breaks=50,freq=F)
#if freq=F, it'll go to the density function as y axis
lines(density(rweib),col='red',lwd=2)

par(mfrow=c(2,2))
for (i in 1:4) {
  rweib=rweibull(2000,shape = 0.2*i,scale=2)
  hist(rweib,breaks = 50)
}