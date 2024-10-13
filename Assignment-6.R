# Create a dataframe with medicine records
medicine_df <- data.frame(
  MedID = 1:10,
  Med_Name = c('Paracetamol', 'Ibuprofen', 'Aspirin', 'Amoxicillin', 
               'Metformin', 'Lisinopril', 'Simvastatin', 
               'Omeprazole', 'Cetirizine', 'Losartan'),
  Company = c('XYZ Pharma', 'ABC Healthcare', 'MediCare', 'PharmaLife', 
              'HealthPlus', 'Wellness Corp', 'LifeMed', 
              'CureAll', 'Allergy Pharma', 'CardioHealth'),
  Manf_year = c(2023, 2022, 2021, 2023, 2022, 2021, 2023, 2022, 2023, 2022),
  Exp_date = as.Date(c('2026-12-31', '2025-08-20', '2024-07-15', 
                       '2027-03-30', '2025-11-10', '2024-05-25', 
                       '2026-09-05', '2025-03-22', '2027-01-18', 
                       '2025-07-12')),
  Quantity_in_stock = c(500, 300, 400, 600, 250, 700, 400, 450, 350, 500),
  Sales = c(120, 200, 180, 90, 300, 150, 110, 175, 80, 220)
)

if(file.exists("DataBase.txt")==FALSE){
  file.create('medicine.csv')
  if(file.exists('medicine.csv')==TRUE){
    print("FIle Created")
  }
  write.csv(medicine_df,"medicine.csv")
}

data<-read.csv('medicine.csv',header=TRUE)
print(data)
head(data,4)
tail(data,4)

#correlation
x=data$Quantity_in_stock
y=data$Exp_date
result<-cor(x, y, method = "pearson") 


#Bar Graph
barplot(
  height = data$Sales,
  names.arg = data$Manf_year,
  main = "Sales by Year of Manufacturing",
  xlab = "Year of Manufacturing",
  ylab = "Sales",
  col = "lightblue",
  border = "blue"
)

#Find the company having more than one type of medicine.
result <- data %>%
  group_by(Company) %>%
  summarise(Num_Medicines = n_distinct(Med_Name)) %>%
  filter(Num_Medicines > 1)

print(result)

print(unique(data$Med_Name))

#Which medicines are expiring? Show by box plots
boxplot()

#Avg of stock in store
mean(data$Quantity_in_stock)

# Load a package that has a function named lm
library(myPackage)

# Define your own lm function
lm <- function(x) {
  print("This is my own lm function!")
}

# Call lm
lm(1:10)

