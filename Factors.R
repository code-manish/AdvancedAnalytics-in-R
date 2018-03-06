# setwd("F:\\Projects\\udemy\\AdvancedAnalytics-in-R")
# fin <- read.csv("Future-500.csv")

# Factors are categorical values

str(fin)

# Changing from a non-factor to a factor

fin$ID = factor(fin$ID)
str(fin)
summary(fin)

fin$Inception = factor(fin$Inception)
str(fin)
summary(fin)

# Factor Variable Trap (FVT)
# converting into numerics for characters
a <- c("12","13","14","12","12")
print(a) 
typeof(a)

b <- as.numeric(a)
b
typeof(b)

# converting into numerics for factors

z <- factor(c("12","13","14","12","12"))
z
typeof(z)

y <- as.numeric(z)
y # 1 2 3 1 1 . doesnot match z.

# How to do it the correct way

x <- as.numeric(as.character(z))
x
typeof(x)

########### FVT Examples ########################################################
head(fin)
str(fin)

fin$Profit <- factor(fin$Profit) # converting Profit as factors - for testing
fin$Profit <- as.numeric(as.character(fin$Profit))
head(fin)
#################################################################################

# gsub() and sub()

fin$Expenses <- gsub(" Dollars","",fin$Expenses) # replacing Dollars with empty string
fin$Expenses <- gsub(",","",fin$Expenses) # replacing $ sign with empty string
head(fin)
str(fin)


fin$Revenue <- gsub("\\$","",fin$Revenue) # replacing $ sign with empty string
fin$Revenue <- gsub(",","",fin$Revenue)
head(fin)
str(fin)

fin$Growth <- gsub("%","",fin$Growth) # replacing % sign with empty string
head(fin)
str(fin)

# convert chr to numerics

fin$Revenue <- as.numeric(fin$Revenue)
fin$Profit <- as.numeric(fin$Profit)
fin$Expenses <- as.numeric(fin$Expenses)
fin$Growth <- as.numeric(fin$Growth)

str(fin)
