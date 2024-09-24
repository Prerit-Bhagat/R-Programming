#assignment 5

library(dplyr)

#Q1
data1<-read.csv("C:\\Users\\Jatin bagga\\Desktop\\ds slides\\daily_show_guests.csv")
head(data1,10)


#Q2

#with dplyr package
data1<- data1 %>% 
  rename(
    year=YEAR,
    job=GoogleKnowlege_Occupation,
    date=Show,
    category=Group,
    guest_name=Raw_Guest_List
  )
colnames(data1)

#without dplyr package
colnames(data1)<-c("year","job","date","category","guest_name")
colnames(data1)


#Q3

#with dplyr package
report<- data1 %>%
  select(year,date,guest_name)
report

#without dplyr package
data2<-data1[,c("year","date","guest_name")]
data2

#4
# Using dplyr to select all columns except 'year'
data_without_year <- data1 %>%
  select(-year)

# Display the result
print(data_without_year)

#5
# Extracting records where job is 'actor' and guest_name is 'ABC'
actor_abc <- data1 %>%
  filter(job == "actor", guest_name == "ABC")

# Display the result
print(actor_abc)


#6
# Arranging records in order of date
data_sorted <- data1 %>%
  arrange(date)

# Display the sorted result
print(data_sorted)

#7

# Adding a new column 'Experience' with default value using mutate
data1 <- data1 %>%
  mutate(Experience = "N/A")

# Display the updated dataframe
head(data1)


text <- c("apple", "cherry", "bnana")

# grep
grep("a", text)        # Returns indices: 1, 2

# gregexpr
gregexpr("a", text)   # Returns: list of starting positions: 2, 1

# regexpr
regexpr("a", text)    # Returns: starting positions of first match: 2, 1, -1

mtcars 
count_hp_gear <- nrow(mtcars[mtcars$hp > 150 & mtcars$gear == 5, ])
print(count_hp_gear)