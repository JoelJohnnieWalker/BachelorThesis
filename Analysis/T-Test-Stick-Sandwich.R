library(tidyverse)
library(boot)

# Import data 
stickSandwich_profits1 <- read.csv('./RowData/Stick-Sandwich-1-Profits.csv')
stickSandwich_profits3 <- read.csv('./RowData/Stick-Sandwich-3-Profits.csv')
stickSandwich_profits5 <- read.csv('./RowData/Stick-Sandwich-5-Profits.csv')
stickSandwich_profits7 <- read.csv('./RowData/Stick-Sandwich-7-Profits.csv')
stickSandwich_profits10 <- read.csv('./RowData/Stick-Sandwich-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Stick-Sandwich.csv")
print("T-Test stickSandwich 1 Tag")
t.test(stickSandwich_profits1$Communication, stickSandwich_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits1$CustomerDiscretionary, stickSandwich_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits1$CustomerStaples, stickSandwich_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits1$Energy, stickSandwich_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits1$Finance, stickSandwich_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits1$Healthcare, stickSandwich_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits1$Industrial, stickSandwich_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits1$Materials, stickSandwich_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits1$IT, stickSandwich_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits1$RealEstate, stickSandwich_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits1$Utilities, stickSandwich_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test stickSandwich 3 Tag")
t.test(stickSandwich_profits3$Communication, stickSandwich_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits3$CustomerDiscretionary, stickSandwich_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits3$CustomerStaples, stickSandwich_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits3$Energy, stickSandwich_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits3$Finance, stickSandwich_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits3$Healthcare, stickSandwich_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits3$Industrial, stickSandwich_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits3$Materials, stickSandwich_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits3$IT, stickSandwich_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits3$RealEstate, stickSandwich_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits3$Utilities, stickSandwich_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test stickSandwich 5 Tag")
t.test(stickSandwich_profits5$Communication, stickSandwich_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits5$CustomerDiscretionary, stickSandwich_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits5$CustomerStaples, stickSandwich_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits5$Energy, stickSandwich_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits5$Finance, stickSandwich_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits5$Healthcare, stickSandwich_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits5$Industrial, stickSandwich_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits5$Materials, stickSandwich_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits5$IT, stickSandwich_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits5$RealEstate, stickSandwich_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits5$Utilities, stickSandwich_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test stickSandwich 7 Tag")
t.test(stickSandwich_profits7$Communication, stickSandwich_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits7$CustomerDiscretionary, stickSandwich_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits7$CustomerStaples, stickSandwich_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits7$Energy, stickSandwich_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits7$Finance, stickSandwich_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits7$Healthcare, stickSandwich_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits7$Industrial, stickSandwich_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits7$Materials, stickSandwich_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits7$IT, stickSandwich_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits7$RealEstate, stickSandwich_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits7$Utilities, stickSandwich_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test stickSandwich 10 Tag")
t.test(stickSandwich_profits10$Communication, stickSandwich_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits10$CustomerDiscretionary, stickSandwich_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits10$CustomerStaples, stickSandwich_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits10$Energy, stickSandwich_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits10$Finance, stickSandwich_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits10$Healthcare, stickSandwich_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits10$Industrial, stickSandwich_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits10$Materials, stickSandwich_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits10$IT, stickSandwich_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits10$RealEstate, stickSandwich_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(stickSandwich_profits10$Utilities, stickSandwich_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
