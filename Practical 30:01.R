2+2
exp(-2)
rnorm(15)
x <- 2
x
x+x

weight = c(60,72,57,90,95,72)
height = c(1.75, 1.8, 1.65,1.9,1.74,1.91)
bmi = weight/height^2
bmi

xbar=sum(weight)/length(weight)
#mean weight

deviations=weight-xbar
#deviation from mean
sq_deviations=deviations^2
sq_deviations
#have to do these steps due to length of vectors

(weight-xbar)^2
sum((weight-xbar)^2)
sqrt((sum(sq_deviations))/
       (length(weight)-1))
sd(weight)

scan()
weight
weight[2]
weight[-2]
weight[c(-2,-4)]

pain <- c(0,3,2,2,1)
fpain <- factor(pain,levels=0:3)
levels(fpain) <-c('none','mild','medium','severe')
fpain

#object not found - you didn't store the variable
intake.pre <- c(5260,5470,5670,6180,6390, + 6515,6805,7515,7515,8230,8770)
intake.post <-c (3910,4220,3885,5160,5645, + 4680,5265,5975,6790,6900,7335)
mylist <- list(before=intake.pre,after=intake.post)
mylist
mylist$before
data("faithful")
summary(faithful)
attach(faithful)
ls()
waiting
