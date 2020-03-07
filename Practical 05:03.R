#ST1051 Practical 6 
#Simulation of the sampling distribution of \bar(X):
#A: X~U(80,120)
#X can only take on values between specified range ^
#E[X]=(a+b)/2
#SD[x]=(b-a)/sqrt(12)
#b-a = length of interval
draws = runif(4000,80,120)
#generate 4000 random samples between 80 and 120
head(draws)
samples = matrix(draws,1000)
#create a matrix of draws with 1000 rows and 4 cols (4*1000=4000)
head(samples)
means=apply(samples,1,mean)
sds=apply(samples,1,sd)
#OR
means=rowMeans(samples)
hist(means,freq = F)
ave.means=mean(means)
sd.means=sd(means)
sd.means2=mean(sds)
#the mean of the entire 4000 samples
#freq=F, density shown instead
x=seq(80,120,0.1)
lines(x,dnorm(x,ave.means,sd.means),col='olivedrab')
lines(x,dnorm(x,ave.means,sd.means2),col='blue')

############################################################################################

#theoretical mean (of mean of uniforms) = 100
#theoretical sd (of mean of uniforms) = (120-80)/sqrt(12) = 5.773503
(40/sqrt(12))/sqrt(4)
#divide by root 4 because of our sampling
c(ave.means,sd.means)

############################################################################################

#this time we're sampling from a normal distribution with
#the same (theoretical) mean

#now we are calculating our means from a sample size of 25
draws = runif(25000,80,120)
head(draws)
samples = matrix(draws,1000)
head(samples)
means=apply(samples,1,mean)
sds=apply(samples,1,sd)
#OR
means=rowMeans(samples)
hist(means,freq = F)
ave.means=mean(means)
sd.means=sd(means)
sd.means2=mean(sds)
x=seq(80,120,0.1)
lines(x,dnorm(x,ave.means,sd.means),col='olivedrab')
#lines(x,dnorm(x,ave.means,sd.means2),col='blue')
#the more samples you have - the more it behaves like a normal distribution