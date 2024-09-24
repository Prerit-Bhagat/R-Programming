# Note - Keep your data file in the working directory

# Get the path of the working directory
getwd() 

# Set working directory
setwd("...x")  # Set working directory
setwd("...y")  # Changing working directory



# Create directory
dir.create("Test")  

# List files in the current working directory
list.files()  

# Create files
file.create("abc.txt")  
file.create("abc.csv")  

# Write dataset into the txt file
write.table(x = data[1:10, ], file = "abc.txt")  
read.table("abc.txt")  

# Read CSV file
data <- read.csv("ds_salaries.csv")  

# Check if the data is a data frame
print(is.data.frame(data))  
# data <- read.csv(file, header = TRUE, sep = ",")
# write.csv(x, file, row.names = TRUE, ...)
# data <- read.table(file, header = TRUE, sep = "", stringsAsFactors = FALSE, ...)
# data <- read.table(file, header = TRUE, sep = "", stringsAsFactors = FALSE, ...)





# Check the number of columns and rows
print(ncol(data))  
print(nrow(data))  

# Get the max salary from the data frame
sal <- max(data$salary)  
print(sal)  

# Get the person detail having max salary
retval <- subset(data, salary == max(salary))  
print(retval)  

# Get information of job roles in large companies
retval <- subset(data, company_size == "L")  
print(retval)  

# Get information of salary in INR, work year is 2021, and working in a large company
info <- subset(data, salary_currency == "INR" & work_year == 2021 & company_size == "L", select = c("column1", "column2"))  
print(info)  

# Write filtered data into a new file
write.csv(retval, "output.csv")  

# Read the new CSV file
newdata <- read.csv("output.csv")  
print(newdata)  

# Rename file
file.rename("abc.txt", "subset1.txt")  

# Check whether the file exists
file.exists("abc.txt")  
file.exists("subset1.txt")  

# Reading the txt file
new.data <- read.table(file = "subset1.txt")  
print(new.data)  

# List all files in the current working directory
list.files()  

# Copying the file to a new location
file.copy("location1","location2")  

# List the files in the specified directory
list.files("Path")  

