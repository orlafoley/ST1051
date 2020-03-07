#1. Using the pulse dataset and calculate the mean of pulse1 (correct to 2 decimal places).
setwd('/Users/orlafoley/Desktop/College/1st Year/Semester 2/ST1051/Labs')
pulse=read.table('pulse.txt',header=T)
pulse
qu1=mean(pulse$pulse1)
ans1=round(qu1,2)
ans1

#2. Use R to draw separate box plots of pulse after exercise for male and female individuals. 
#To approximately what value does the upper whisker of the box plot for female observations 
#extend?
pulse=data.frame(pulse)
mean(pulse$pulse1)
mean(pulse$pulse2)
#pulse 1 before exercise, pulse 2 after exercise
summary(pulse)
mean(pulse$weight[pulse$sex==1])
mean(pulse$weight[pulse$sex==2])
#women are sex 2, men are sex 1
after_w=pulse$pulse2[pulse$sex==2]
after_m=pulse$pulse2[pulse$sex==1]
boxplot(after_m,after_w)
summary(pulse$weight[pulse$sex==2])
ans2=140

#3.Use R to draw separate box plots of pulse after exercise for male and 
#female observations. Use the box plots to approximate the interquartile 
#range of pulse after exercise for male observations.
quantile(pulse$pulse2[pulse$sex==1])
ans3=84-68
ans3

#4.What is the probability of getting an even total when you roll two dice?
roll1=rep(1:6,6)
roll2=sort(roll1)
#we now have 2 die outcomes
dicerolls=data.frame(roll1,roll2)
dicerolls$totals=dicerolls$roll1+dicerolls$roll2
outcomes=table(dicerolls$totals)
outcomes=data.frame(outcomes)
outcomes$prob=(outcomes$Freq)/36
outcomes
ans4=0.02777778+0.02777778+0.08333333+0.08333333+0.13888889+0.13888889
ans4

#5. The data in the second column of the variables.txt 
#file appear to follow a normal distribution.
setwd('/Users/orlafoley/Desktop/College/1st Year/Semester 2/ST1051/Labs')
variables=read.table('variable.txt',header = T)
head(variables)
hist(variables$var2)
ans5=F

#6. Suppose the time to failure for the latest smartphone follows a Weibull 
#distribution with shape parameter 1.5 and scale parameter 2. Using the help 
#files for pweibull, can you work out the probability that the latest 
#smartphone functions for more than 3 years before failing? (correct to 4 decimal places)
??pweibull
ans6=1-pweibull(3,1.5,2)
ans6=round(ans6,4)
ans6

#7. Suppose the time to failure for the latest smartphone follows a 
#Weibull distribution with shape parameter 1.5 and scale parameter 2. 
#Use the qweibull() function to calculate a 95% upper bound for the lifetime 
#of the smartphone (correct to 4 decimal places).
sample7=qweibull(0.95,1.5,2)
ans7=round(sample7,4)
ans7
