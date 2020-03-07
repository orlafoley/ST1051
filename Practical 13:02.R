green = c(1:6,1:6,1:6,1:6,1:6,1:6)
green = rep(1:6,times=6)
red=sort(green)
dice=data.frame(red,green)
dice$sum=dice$red+dice$green
dice['test']=dice['red']+dice['green']
head(dice)
#head=first 6 results

counts=table(dice$sum)
counts=data.frame(counts)
counts$prob=counts$Freq/36
head(counts)

sample50=sample(dice$sum,50,replace = T)
prob50_table=table(sample50)
prob50=data.frame(prob50_table)
prob50$relfreq=prob50$Freq/50

sample500=sample(dice['sum'],500,replace = T)
#classic distributions

#binomial distributions
  #1. independent trials
  #2. success/failure
  #3. constant probability

bin_samp=rbinom(1,100,0.55)
bin_samp
dbinom(x=bin_samp,size=100,prob = 0.55)
#prob of heads appearing in 100 coin tosses
pbinom(q=bin_samp,100,0.55,lower.tail = T)

#Hypergeometric Distribution
dhyper(x=6,m=6,n=39,k=6)
lotto=rhyper(nn=8320,m=7,n=39,k=6)
table(lotto)
barplot(table(lotto))

#Poisson Distribution
rpois(n=7,lambda = 90000)
#Hint: sum(...)*toll_fee

ppois(q=89000,lambda = 90000)
ppois(q=90000,lambda = 90000)
