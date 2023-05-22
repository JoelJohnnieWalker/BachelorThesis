library(tidyverse)
library(boot)

# Import data 
morningStar_profits1 <- read.csv('./RowData/Morning-Star-1-Profits.csv')
morningStar_profits3 <- read.csv('./RowData/Morning-Star-3-Profits.csv')
morningStar_profits5 <- read.csv('./RowData/Morning-Star-5-Profits.csv')
morningStar_profits7 <- read.csv('./RowData/Morning-Star-7-Profits.csv')
morningStar_profits10 <- read.csv('./RowData/Morning-Star-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Morning-Star .csv")
print("T-Test morningStar 1 Tag")
t.test(morningStar_profits1$Communication, morningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits1$CustomerDiscretionary, morningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits1$CustomerStaples, morningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits1$Energy, morningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits1$Finance, morningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits1$Healthcare, morningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits1$Industrial, morningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits1$Materials, morningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits1$IT, morningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits1$RealEstate, morningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits1$Utilities, morningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test morningStar 3 Tag")
t.test(morningStar_profits3$Communication, morningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits3$CustomerDiscretionary, morningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits3$CustomerStaples, morningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits3$Energy, morningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits3$Finance, morningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits3$Healthcare, morningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits3$Industrial, morningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits3$Materials, morningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits3$IT, morningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits3$RealEstate, morningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits3$Utilities, morningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test morningStar 5 Tag")
t.test(morningStar_profits5$Communication, morningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits5$CustomerDiscretionary, morningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits5$CustomerStaples, morningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits5$Energy, morningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits5$Finance, morningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits5$Healthcare, morningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits5$Industrial, morningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits5$Materials, morningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits5$IT, morningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits5$RealEstate, morningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits5$Utilities, morningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test morningStar 7 Tag")
t.test(morningStar_profits7$Communication, morningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits7$CustomerDiscretionary, morningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits7$CustomerStaples, morningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits7$Energy, morningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits7$Finance, morningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits7$Healthcare, morningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits7$Industrial, morningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits7$Materials, morningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits7$IT, morningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits7$RealEstate, morningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits7$Utilities, morningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test morningStar 10 Tag")
t.test(morningStar_profits10$Communication, morningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits10$CustomerDiscretionary, morningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits10$CustomerStaples, morningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits10$Energy, morningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits10$Finance, morningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits10$Healthcare, morningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits10$Industrial, morningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits10$Materials, morningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits10$IT, morningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits10$RealEstate, morningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(morningStar_profits10$Utilities, morningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
