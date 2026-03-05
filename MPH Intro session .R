# Install required packages (run only once if not installed)
#install.packages("readxl")   # For reading Excel files
#install.packages("dplyr")    # For data manipulation

# Load packages into the R session
library(readxl)   # Load the readxl package
library(dplyr)    # Load the dplyr package

# Filter Rows using filter()
data_filtered <- filter(data, Age > 30)  # Selects only rows where Age is greater than 30
# help(filter) Or ?dplyr::filter # Use this to get help/documentation about the filter() function

# Rename Columns using rename()
data_renamed <- rename(data, Participant_Age = Age)  # Renames the column 'Age' to 'Participant_Age'

# Create or Modify Columns using mutate()
data_mutated <- mutate(data, BMI = Weight / (Height^2))  # Adds a new column 'BMI' calculated from Weight and Height

# data_mutated1 <- mutate(data, Age = NULL)  # Example: This line can be used to remove the Age column

# Remove Duplicates using distinct()
data_unique = distinct(data)  # Removes duplicate rows and keeps only unique observations

# Remove Missing Values
clean_data <- na.omit(data)  # Deletes rows with missing (NA) values

# Merging datasets



  # Merges two datasets using the 'ID' column

# Append datasets
data2 <- data.frame(
  ID = c(7, 8, 9),  # New participant IDs
  Name = c("Janu", "Elma", "Kumar"),  # Names of new participants
  Age = c(35, 20, 40),  # Their ages
  Height = c(1.42, 1.50, 1.85),  # Their heights in meters
  Weight = c(60, 54, 80)  # Their weights in kg
)
appended_data = rbind(data, data2)  # Adds the rows of data2 below the existing data (row-wise binding)

# data_mutated <- mutate(appended_data, BMI = Weight / (Height^2))  # Optional: Recalculate BMI for the appended dataset

# cbind
group <- c(1, 2, 2, 1, 2, 2, 1, 1, 2)  # Create a new group variable with 9 values
data_mutated <- cbind(data_mutated, group)  # Adds the group column to the existing dataset (column-wise binding)









library(readxl)
library(ggplot2)


ggplot(data2, aes(x=Age)) + geom_histogram(bins = 10)









## loading packages from library in R - Base, readxl
library(readxl)
install.packages("readxl")

## creating data set in R

#step 1: creating a variable and assign values 
ID <- c(1,2,3)
Age <- c(21,25,24)
Gender <- c("Male","Female","Male")
Locality <- c("Urban", "Rural", "Rural")

##step 2: crating a complete data set

data1 <- data.frame(ID,Age,Gender,Locality)

## Steps to view the dataset
View(data1)
View(data1)

## steps to understand the basic pattern of data
head(data1)
tail(data1)


## visualizing specific variables
View(data1$Age)
summary(data1$Age)

## extracting data is represented by $ symbol from a data set 

range(data1$Age)
var(data1$Age)

summary(data1$Age,data1$ID)

