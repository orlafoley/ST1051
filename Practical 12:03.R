#ST1051 Practical 7


#P[X=r] = nCr p^r (1-p)^(n-r)
#n!/((n-r)!r!)
#P[x=r] = e^1(1)^r/r!


#Poisson and Normal approximation to the Binomial distribution


#1-Poisson approximation
#Example:The probability that a person will develop an infection even after taking 
#a vaccine that was supposed to prevent the infection is 0.03. 
#In a random sample of 200 people in a community who got the vaccine, 
#what is the probability that six or fewer people will be infected? 
#pbinom(6, 200, .03)
#The Binomial distribution can be approximated well by Poisson(λ) 
#when n is large and p is smallwhere λ =np.
#ppois(6, lambda = 6)



#p = 0.03
#n = 200
#X ~ Bin(n,p) ~ Bin(200,0.03)
#P[X <= 6] = P[X = 0] + P[X = 1] + ... + P[X = 6]
pbinom(q=6, size=200, prob=0.03)
ppois(q=6, lambda = 6)
#4 decimal places accuracy





#2-Normal approximation
#In Binomial distribution if nis large enough(np ≥5and n(1-p)≥5), 
#then a reasonable approximation to B(n,p) is given by the Normal distribution 
#with mean np and variance np(1-p). 
#We begin by plotting a binomial distribution 
#B(25,0.2)    x=(0:25)      pr=dbinom(x,25,0.2)
#plot(x,pr,type=”h”)    type=”h” specifies a histogram-like display, 
#in that vertical lines are used. This is ideal for representing a discrete distribution. 
#Next we will superimpose the corresponding Normal density on top of 
#the binomial plot pts=seq(0,25,.2)this sets up the ‘x values’ for the Normal density plot


x=0:25
#x is 0,1,2...24,25
pr = dbinom(x, 25, 0.2)
#this is the pdf
plot(x, pr, type='h')
#0-25 are x values, pr are the y values
pts = seq(0,25,0.2)
lines(pts,dnorm(pts,5,2))
#super impose the line over previous graph to see how close to norm dist it is

x = 0:100
pr = dbinom(x,100,0.5)
plot(x,pr,type = 'h', ylab = 'Probability',
     main = 'Normal Density Superimposed')
pts = seq(0, 100, 0.5)
#sd = sqrt(n * p * (1-p) = sqrt(100 * 0.5^2))
                          # = 10 * 0.5 = 5
lines(pts, dnorm(pts,50,5), col = 'red')















