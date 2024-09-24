x=c(0,1,2,3,4)
y=c(0.41,0.37,0.16,0.05,0.01)
print(sum(x*y))


f <- function(x){
  x*0.1 * exp(-0.1 * x)
}
value <- integrate(f,lower=0,upper=Inf)$value
print(value)

fx1 <- function(x){
  0.5 * exp(-1*abs(x))
}
integ1<- function(x){
  x*fx1(x)
}
fx2<-function(x){
  0.5*exp(-1*abs(x))
}
integ2<-function(x){
  x^2 * fx2(x)
}
first_moment <- integrate(integ1,lower=1,upper=10)$value
print(first_moment)
second_moment <- integrate(integ2,lower=1,upper=10)$value
print(second_moment)
variance<- second_moment - first_moment^2
print(variance)





x<-c(0,1,2,3)
y<-c(-12,-2,8,18)
p<-c(0.1,0.2,0.2,0.5)
value<- sum(y*p)
print(value)




f<-function(x){x*0.5*exp(-Mod(x))}
f2<-function(x){x*x*0.5*exp(-Mod(x))}
integrate(f,lower = 1,upper = 10)$value
integrate(f2,lower=1,upper=10)$value

integrate(f2,lower=1,upper=10)$value-(integrate(f,lower=1,upper=10)$value)^2

# Define the PDF functions
f <- function(x) { x * 0.5 * exp(-abs(x)) }
f2 <- function(x) { x^2 * 0.5 * exp(-abs(x)) }

# Calculate the expected value E[X]
E_X <- integrate(f, lower = 1, upper = 10)$value

# Calculate the second moment E[X^2]
E_X2 <- integrate(f2, lower = 1, upper = 10)$value

# Calculate the variance
Var_X <- E_X2 - E_X^2

# Print the results
print(paste("Expected Value of X:", E_X))
print(paste("Variance of X:", Var_X))





X<- c(1,2,3,4,5)
Y<- c(1,4,9,16,25)
sqY <- c(1,2,3,4,5)
fy <- function(y){
  (3/4)*(1/4)^(y-1)
}
py<- c(fy(X))
e_value<- sum(Y*py)
print(e_value)
Y_sq <- Y^2
sec_moment <- sum(Y_sq*py)
vari <- sec_moment - e_value^2
print(vari)
sample(rep())
df=CO2
df
mean(df$uptake)
var(df$uptake)
sd(df$uptake)
median(df$uptake)
IQR(df$uptake)



ans=1
n=5
for (i in 1:n) {
  ans=ans*i
}
print(ans)



x<-c(10,101,10,20,20,20,0,10)
d=table(x)
d
names(d[(max(d)==d)])




f<-function(A,B,B_A){return(B_A*B/A)}

print(f(0.40,0.20,0.85))






















