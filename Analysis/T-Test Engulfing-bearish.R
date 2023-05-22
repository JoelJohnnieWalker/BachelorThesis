library(tidyverse)
library(boot)

# Import data 
engulfing_bearish_profits1 <- read.csv('./RowData/engulfing-bearish-1-Profits.csv')
engulfing_bearish_profits3 <- read.csv('./RowData/engulfing-bearish-3-Profits.csv')
engulfing_bearish_profits5 <- read.csv('./RowData/engulfing-bearish-5-Profits.csv')
engulfing_bearish_profits7 <- read.csv('./RowData/engulfing-bearish-7-Profits.csv')
engulfing_bearish_profits10 <- read.csv('./RowData/engulfing-bearish-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Engulfing-bearish.csv")
print("T-Test engulfing-bearish 1 Tag")
t.test(engulfing_bearish_profits1$Communication, engulfing_bearish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits1$CustomerDiscretionary, engulfing_bearish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits1$CustomerStaples, engulfing_bearish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits1$Energy, engulfing_bearish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits1$Finance, engulfing_bearish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits1$Healthcare, engulfing_bearish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits1$Industrial, engulfing_bearish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits1$Materials, engulfing_bearish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits1$IT, engulfing_bearish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits1$RealEstate, engulfing_bearish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits1$Utilities, engulfing_bearish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test engulfing-bearish 3 Tag")
t.test(engulfing_bearish_profits3$Communication, engulfing_bearish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits3$CustomerDiscretionary, engulfing_bearish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits3$CustomerStaples, engulfing_bearish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits3$Energy, engulfing_bearish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits3$Finance, engulfing_bearish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits3$Healthcare, engulfing_bearish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits3$Industrial, engulfing_bearish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits3$Materials, engulfing_bearish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits3$IT, engulfing_bearish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits3$RealEstate, engulfing_bearish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits3$Utilities, engulfing_bearish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test engulfing-bearish 5 Tag")
t.test(engulfing_bearish_profits5$Communication, engulfing_bearish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits5$CustomerDiscretionary, engulfing_bearish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits5$CustomerStaples, engulfing_bearish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits5$Energy, engulfing_bearish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits5$Finance, engulfing_bearish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits5$Healthcare, engulfing_bearish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits5$Industrial, engulfing_bearish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits5$Materials, engulfing_bearish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits5$IT, engulfing_bearish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits5$RealEstate, engulfing_bearish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits5$Utilities, engulfing_bearish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test engulfing-bearish 7 Tag")
t.test(engulfing_bearish_profits7$Communication, engulfing_bearish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits7$CustomerDiscretionary, engulfing_bearish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits7$CustomerStaples, engulfing_bearish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits7$Energy, engulfing_bearish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits7$Finance, engulfing_bearish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits7$Healthcare, engulfing_bearish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits7$Industrial, engulfing_bearish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits7$Materials, engulfing_bearish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits7$IT, engulfing_bearish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits7$RealEstate, engulfing_bearish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits7$Utilities, engulfing_bearish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test engulfing-bearish 10 Tag")
t.test(engulfing_bearish_profits10$Communication, engulfing_bearish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits10$CustomerDiscretionary, engulfing_bearish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits10$CustomerStaples, engulfing_bearish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits10$Energy, engulfing_bearish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits10$Finance, engulfing_bearish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits10$Healthcare, engulfing_bearish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits10$Industrial, engulfing_bearish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits10$Materials, engulfing_bearish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits10$IT, engulfing_bearish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits10$RealEstate, engulfing_bearish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bearish_profits10$Utilities, engulfing_bearish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
