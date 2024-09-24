#length() -> size of vector
#atomic vector and list
a=c(3,4,5,6,1)
b=3:5
sq=seq(1,5,by=0.5)
#by default -> numeric vector is created
x=as.integer(sq)
class(x)
x=as.character(x)
#accessing elements of vector
#note indexing starts from 1
x[1]
char_vec=c("ram"=12,"shyam"=11,"mohan"=31)
char_vec["ram"]


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
summary(Data_Frame)
Data_Frame[1]

Data_Frame[["Training"]]
Data_Frame <- rbind(Data_Frame, c("Strength", 110, 110))
New_col_DF <- cbind(Data_Frame, Steps = c(1000, 6000, 2000,3000))
New_col_DF
# Remove the first row and column
Data_Frame_New <- Data_Frame[-c(1), -c(1)]
length(Data_Frame)
