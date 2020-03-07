setwd('/Users/orlafoley/Desktop/College/1st Year/Semester 2/ST1051')
#setwd makes it easier to find your
#file and save it somewhere
#use CTRL F for file path
#use \\ or / for pathway
pulse=read.table('Pulse.txt',header = T)
pulse=data.frame(pulse)
#convert data to data frame
summary(pulse)
pulse
head(pulse)
tail(pulse)
#head - first 6 values, tail - last 6 values
summary(pulse$pulse1)
#function(column[condition])
  #think def function():
summary(pulse$pulse2)
summary()     #function
pulse$pulse2  #column
pulse$ran==1  #condition

summary(pulse$pulse2[pulse$ran==1])
#exercise pulse
summary(pulse$pulse2[pulse$ran==2])
#resting pulse

par(mfrow=c(1,2))
hist(pulse$pulse1,xlab = 'Pulse',main = 'Histogram of Pulse Rate')
hist(pulse$pulse2,xlab = 'Pulse',main = 'Histogram of Pulse Rate')

names(pulse)
#gives column headings
pulse$weight
summary(pulse$weight[pulse$sex==1])
#male
summary(pulse$weight[pulse$sex==2])
#female

barplot(table(pulse$sex))
table(pulse$sex)

boxplot(pulse$pulse1,pulse$pulse2,names = colnames(pulse)[1:2],
        main='Boxplot of Pulse')
