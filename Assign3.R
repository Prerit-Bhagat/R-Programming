prob <- pbinom(9,size=12,prob=(1/6)) - pbinom(6,size=12,prob=(1/6))
print(prob)


prob <- pnorm(84,mean=72,sd=15.2,lower.tail = FALSE) - pnorm(100,mean=72,sd=15.2,lower.tail = FALSE)
print(prob)
prob <- pnorm(84, mean = 72, sd = 15.2, lower.tail = FALSE) - pnorm(100, mean = 72, sd = 15.2, lower.tail = FALSE)
print(prob)

prob2<- diff(pnorm(c(84,100),mean=72,sd=15.2))
print(prob2)

prob_1 <- ppois(0,5)
print(prob_1)
prob_2 <- ppois(50,50) - ppois(47,50)
print(prob_2)

prob <- dhyper(3,m=17,n=233,k=5)
print(prob)

X=0:31
Y=dbinom(X,size=31,prob=0.447)
plot(X,Y,type='h',main='Probability Distribution')
c_sum=cumsum(Y)
plot(X,c_sum,main='Cumulative Distribution')
m_=weighted.mean(X,Y)
print(m_)
v_=weighted.mean((X-m_)^2,Y)
print(v_)
sd=sqrt(v_)
print(sd)

X = 0:31
Y = dbinom(X, size = 31, prob = 0.447)

# Plot probability distribution
plot(X, Y, type = 'h', main = 'Probability Distribution')

# Plot cumulative distribution
c_sum = cumsum(Y)
plot(X, c_sum, main = 'Cumulative Distribution')

# Mean using sum
mean_ = sum(X * Y)
print(mean_)

# Variance using sum
variance_ = sum((X - mean_)^2 * Y)
print(variance_)

# Standard deviation
sd = sqrt(variance_)
print(sd)
