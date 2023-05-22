library(tidyverse)
library(boot)

# Import data 
invertedhammer_profits1 <- read.csv('./RowData/invertedhammer-1-Profits.csv')
invertedhammer_profits3 <- read.csv('./RowData/invertedhammer-3-Profits.csv')
invertedhammer_profits5 <- read.csv('./RowData/invertedhammer-5-Profits.csv')
invertedhammer_profits7 <- read.csv('./RowData/invertedhammer-7-Profits.csv')
invertedhammer_profits10 <- read.csv('./RowData/invertedhammer-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Invertedhammer.csv")
print("T-Test Invertedhammer 1 Tag")
t.test(invertedhammer_profits1$Communication, invertedhammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits1$CustomerDiscretionary, invertedhammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits1$CustomerStaples, invertedhammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits1$Energy, invertedhammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits1$Finance, invertedhammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits1$Healthcare, invertedhammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits1$Industrial, invertedhammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits1$Materials, invertedhammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits1$IT, invertedhammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits1$RealEstate, invertedhammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits1$Utilities, invertedhammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Invertedhammer 3 Tag")
t.test(invertedhammer_profits3$Communication, invertedhammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits3$CustomerDiscretionary, invertedhammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits3$CustomerStaples, invertedhammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits3$Energy, invertedhammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits3$Finance, invertedhammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits3$Healthcare, invertedhammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits3$Industrial, invertedhammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits3$Materials, invertedhammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits3$IT, invertedhammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits3$RealEstate, invertedhammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits3$Utilities, invertedhammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Invertedhammer 5 Tag")
t.test(invertedhammer_profits5$Communication, invertedhammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits5$CustomerDiscretionary, invertedhammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits5$CustomerStaples, invertedhammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits5$Energy, invertedhammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits5$Finance, invertedhammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits5$Healthcare, invertedhammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits5$Industrial, invertedhammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits5$Materials, invertedhammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits5$IT, invertedhammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits5$RealEstate, invertedhammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits5$Utilities, invertedhammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Invertedhammer 7 Tag")
t.test(invertedhammer_profits7$Communication, invertedhammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits7$CustomerDiscretionary, invertedhammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits7$CustomerStaples, invertedhammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits7$Energy, invertedhammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits7$Finance, invertedhammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits7$Healthcare, invertedhammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits7$Industrial, invertedhammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits7$Materials, invertedhammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits7$IT, invertedhammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits7$RealEstate, invertedhammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits7$Utilities, invertedhammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Invertedhammer 10 Tag")
t.test(invertedhammer_profits10$Communication, invertedhammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits10$CustomerDiscretionary, invertedhammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits10$CustomerStaples, invertedhammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits10$Energy, invertedhammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits10$Finance, invertedhammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits10$Healthcare, invertedhammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits10$Industrial, invertedhammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits10$Materials, invertedhammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits10$IT, invertedhammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits10$RealEstate, invertedhammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(invertedhammer_profits10$Utilities, invertedhammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
