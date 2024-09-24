#assignment 4.1

#Q1
df<-data.frame(
  PatientID = c(1,2,3,4),
  AdmDate = as.Date(c('10/15/2009','11/01/2009','10/21/2009','10/28/2009'),format='%m/%d/%Y'),
  Age= c(25,34,28,52),
  Diabetes=c('Type1','Type2','Type1','Type1'),
  Status=c('Poor','Improved','Excellent','Poor'),
  stringsAsFactors=FALSE
)
df
#Q2

#a
Subset1<- df[,c(1,3)]
Subset1

#b
pat1<-df[df$Diabetes=="Type1",]
pat1

#c
co<-sum(df$Status=='Poor')
co

#d
summary(df)

#e
av<- mean(df$Age[df$Diabetes=='Type1'])
av

#f

# Function to add a new patient
add_patient <- function() {
  PatientID <- as.integer(readline(prompt="Enter Patient ID: "))
  AdmDate <- as.Date(readline(prompt="Enter Admission Date: "),format='%m/%d/%y')
  Age<- as.integer(readline(prompt="Enter Age: "))
  Diabetes <- readline(prompt="Enter Diabetes Type: ")
  Status <- readline(prompt="Enter Status: ")
  
  
  new_patient <- data.frame(PatientID, AdmDate, Age, Diabetes, Status)
  return(new_patient)
}

# Adding a new patient
new_patient <- add_patient()
df <- rbind(df, new_patient) 
df

#Q3

a<-c(12,14,16,20)
m<-matrix(1:25,nrow=5,ncol = 5)
s<- c('First','Second','Third')

MyList<-list(
  title='My First List',
  criteria= list(
    Age=a,
    Matrix=m,
    Score=s
  )
)
MyList
MyList$criteria
MyList$criteria$Age