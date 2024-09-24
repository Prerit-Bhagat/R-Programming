library(tibble)

# Creating a tibble
my_tibble <- tibble(
  x = 1:5,
  y = letters[1:5],
  z = c(TRUE, FALSE, TRUE, FALSE, TRUE)
)

print(my_tibble)

# Accessing a column
my_tibble$x  # Returns the 'x' column
my_tibble[["y"]]  # Returns the 'y' column

# Subsetting the first two rows
subset_tibble <- my_tibble[1:2, ]
print(subset_tibble)

# Subsetting specific columns
subset_columns <- my_tibble[, c("x", "y")]
print(subset_columns)


# Adding a new column
my_tibble$new_column <- my_tibble$x * 2

# Modifying an existing column using dplyr's mutate
library(dplyr)
my_tibble <- my_tibble %>%
  mutate(z = !z)  # Negate the boolean values in column z

print(my_tibble)

# Selecting specific columns
selected_tibble <- select(my_tibble, x, z)
print(selected_tibble)

# Adding a new row
my_tibble <- add_row(my_tibble, x = 6, y = "f", z = TRUE)
print(my_tibble)


#Summary of Common Functions
#Creating a tibble:              tibble(column_name = values)
#Accessing columns:              my_tibble$column_name or my_tibble[["column_name"]]
#Subsetting:                     my_tibble[row_indices, column_indices]
#Adding a column:                my_tibble$new_column <- values
#Modifying a column:             mutate(my_tibble, new_column = new_values)
#Selecting columns:              select(my_tibble, column1, column2)
#Filtering rows:                 filter(my_tibble, condition)
#Adding rows:                    add_row(my_tibble, column_name = value)
#Binding rows:                   bind_rows(tibble1, tibble2)
#Binding columns:                bind_cols(tibble1, tibble2)

  