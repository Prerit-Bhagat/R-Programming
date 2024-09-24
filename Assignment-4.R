#assignment 4

#Q1
vec1<-seq(1,5,by=0.3)
vec1

vec2<-rep(c(1,2,3,4),5)
vec2

vec3<-seq(14,0,by=-2)
vec3

vec4<-rep(c(5,12,13,20),each=2)
vec4

#Q2
ds<-iris

#a
class(ds)
#b
nrow(ds)
ncol(ds)
#c
factor_variable<- names(ds)[sapply(ds,is.factor)]
factor_variable
num_levels<-nlevels(ds[[factor_variable]])
num_levels

#Q3

#a
data(iris) #loading dataset
iris
spwidth_mean=tapply(iris$Sepal.Width,iris$Species, mean)
spwidth_mean
spwidth_sd=tapply(iris$Sepal.Width,iris$Species, sd)

splength_mean=tapply(iris$Sepal.Length,iris$Species,mean)
splength_sd=tapply(iris$Sepal.Length,iris$Species,sd)

results <- list(
  sepal_width_mean= spwidth_mean,
  sepal_width_sd= spwidth_sd,
  sepal_length_mean= splength_mean,
  sepal_length_sd= splength_sd
)

results

#b
iris.class<-iris
iris.class$Calyx.Width<- NA

for(i in 1:nrow(iris.class)){
  if(iris.class$Sepal.Length[i]<5.0){
    iris.class$Calyx.Width[i]<-"short"
  }else{
    iris.class$Calyx.Width[i]<-"long"
  }
}

head(iris.class)


#Q4
data("mtcars")

#a
mtcyl_sel<-mtcars[mtcars$cyl>=5,]
mtcyl_sel

#b
first_10<-mtcars[1:10,]
first_10

#c
honda_cars<-mtcars[grep("honda",rownames(mtcars),ignore.case=TRUE),]
honda_cars

x = matrix(1:6 , 2 ,3 )
seq_len(x)

x <- matrix(1:6, 2, 3)
for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[j])
  }
}

computeEstimate<- function()
{
  #A dummy function
  0
}
x0 <- 1
tot <- 1e-8
repeat {
  x1 <- computeEstimate()
  if(abs(x1 - x0) < tot) {
    break
  } else {
    x0 <- x1
  }}