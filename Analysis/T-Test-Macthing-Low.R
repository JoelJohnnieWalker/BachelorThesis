library(tidyverse)
library(boot)

# Import data 
matchingLow_profits1 <- read.csv('./RowData/Matching-Low-1-Profits.csv')
matchingLow_profits3 <- read.csv('./RowData/Matching-Low-3-Profits.csv')
matchingLow_profits5 <- read.csv('./RowData/Matching-Low-5-Profits.csv')
matchingLow_profits7 <- read.csv('./RowData/Matching-Low-7-Profits.csv')
matchingLow_profits10 <- read.csv('./RowData/Matching-Low-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Matching-Low.csv")
print("T-Test matchingLow 1 Tag")
t.test(matchingLow_profits1$Communication, matchingLow_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits1$CustomerDiscretionary, matchingLow_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits1$CustomerStaples, matchingLow_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits1$Energy, matchingLow_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits1$Finance, matchingLow_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits1$Healthcare, matchingLow_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits1$Industrial, matchingLow_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits1$Materials, matchingLow_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits1$IT, matchingLow_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits1$RealEstate, matchingLow_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits1$Utilities, matchingLow_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test matchingLow 3 Tag")
t.test(matchingLow_profits3$Communication, matchingLow_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits3$CustomerDiscretionary, matchingLow_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits3$CustomerStaples, matchingLow_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits3$Energy, matchingLow_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits3$Finance, matchingLow_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits3$Healthcare, matchingLow_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits3$Industrial, matchingLow_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits3$Materials, matchingLow_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits3$IT, matchingLow_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits3$RealEstate, matchingLow_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits3$Utilities, matchingLow_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test matchingLow 5 Tag")
t.test(matchingLow_profits5$Communication, matchingLow_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits5$CustomerDiscretionary, matchingLow_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits5$CustomerStaples, matchingLow_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits5$Energy, matchingLow_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits5$Finance, matchingLow_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits5$Healthcare, matchingLow_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits5$Industrial, matchingLow_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits5$Materials, matchingLow_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits5$IT, matchingLow_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits5$RealEstate, matchingLow_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits5$Utilities, matchingLow_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test matchingLow 7 Tag")
t.test(matchingLow_profits7$Communication, matchingLow_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits7$CustomerDiscretionary, matchingLow_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits7$CustomerStaples, matchingLow_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits7$Energy, matchingLow_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits7$Finance, matchingLow_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits7$Healthcare, matchingLow_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits7$Industrial, matchingLow_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits7$Materials, matchingLow_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits7$IT, matchingLow_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits7$RealEstate, matchingLow_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits7$Utilities, matchingLow_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test matchingLow 10 Tag")
t.test(matchingLow_profits10$Communication, matchingLow_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits10$CustomerDiscretionary, matchingLow_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits10$CustomerStaples, matchingLow_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits10$Energy, matchingLow_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits10$Finance, matchingLow_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits10$Healthcare, matchingLow_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits10$Industrial, matchingLow_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits10$Materials, matchingLow_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits10$IT, matchingLow_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits10$RealEstate, matchingLow_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(matchingLow_profits10$Utilities, matchingLow_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
