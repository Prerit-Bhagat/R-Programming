fun_name<-function(arg1,arg2){
  for(i in 1:5){
    print(i)
  }
  return(9)
}
x<-fun_name(1,2)
print(x)

#absolute
print(abs(-2))
#sqrt
print(sqrt(16))
#ceiling
print(ceiling(5.32))
#floor
print(floor(5.32))
#substring
name="PreritBhagat"
start=3
end=5
substr(name,start,end)
#all maths function ie sin , cos as it is
#tolower & toupper as it is
sl<-"prerit"
print(toupper(sl))
