# Importing the dataset

getwd() # check the working directory
setwd("F:\\Projects\\udemy\\AdvancedAnalytics-in-R") # set the working directory to the location which contains all the data set

getwd()

fin <- read.csv("Future-500.csv")
fin # implicit printing 

head(fin) # prints top 6 rows of the dataset
tail(fin) # prints last 6 rows of the dataset

tail(fin, 10) # prints last 10 rows of the dataset

str(fin) # displays the structure of the dataset

summary(fin)  # prints the summary of each column of the dataset
  

