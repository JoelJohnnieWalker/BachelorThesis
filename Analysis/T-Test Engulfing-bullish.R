library(tidyverse)
library(boot)

# Import data 
engulfing_bullish_profits1 <- read.csv('./RowData/engulfing-bullish-1-Profits.csv')
engulfing_bullish_profits3 <- read.csv('./RowData/engulfing-bullish-3-Profits.csv')
engulfing_bullish_profits5 <- read.csv('./RowData/engulfing-bullish-5-Profits.csv')
engulfing_bullish_profits7 <- read.csv('./RowData/engulfing-bullish-7-Profits.csv')
engulfing_bullish_profits10 <- read.csv('./RowData/engulfing-bullish-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Engulfing-bullish.csv")
print("T-Test engulfing-bullish 1 Tag")
t.test(engulfing_bullish_profits1$Communication, engulfing_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits1$CustomerDiscretionary, engulfing_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits1$CustomerStaples, engulfing_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits1$Energy, engulfing_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits1$Finance, engulfing_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits1$Healthcare, engulfing_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits1$Industrial, engulfing_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits1$Materials, engulfing_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits1$IT, engulfing_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits1$RealEstate, engulfing_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits1$Utilities, engulfing_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test engulfing-bullish 3 Tag")
t.test(engulfing_bullish_profits3$Communication, engulfing_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits3$CustomerDiscretionary, engulfing_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits3$CustomerStaples, engulfing_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits3$Energy, engulfing_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits3$Finance, engulfing_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits3$Healthcare, engulfing_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits3$Industrial, engulfing_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits3$Materials, engulfing_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits3$IT, engulfing_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits3$RealEstate, engulfing_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits3$Utilities, engulfing_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test engulfing-bullish 5 Tag")
t.test(engulfing_bullish_profits5$Communication, engulfing_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits5$CustomerDiscretionary, engulfing_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits5$CustomerStaples, engulfing_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits5$Energy, engulfing_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits5$Finance, engulfing_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits5$Healthcare, engulfing_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits5$Industrial, engulfing_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits5$Materials, engulfing_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits5$IT, engulfing_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits5$RealEstate, engulfing_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits5$Utilities, engulfing_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test engulfing-bullish 7 Tag")
t.test(engulfing_bullish_profits7$Communication, engulfing_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits7$CustomerDiscretionary, engulfing_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits7$CustomerStaples, engulfing_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits7$Energy, engulfing_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits7$Finance, engulfing_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits7$Healthcare, engulfing_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits7$Industrial, engulfing_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits7$Materials, engulfing_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits7$IT, engulfing_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits7$RealEstate, engulfing_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits7$Utilities, engulfing_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test engulfing-bullish 10 Tag")
t.test(engulfing_bullish_profits10$Communication, engulfing_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits10$CustomerDiscretionary, engulfing_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits10$CustomerStaples, engulfing_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits10$Energy, engulfing_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits10$Finance, engulfing_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits10$Healthcare, engulfing_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits10$Industrial, engulfing_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits10$Materials, engulfing_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits10$IT, engulfing_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits10$RealEstate, engulfing_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(engulfing_bullish_profits10$Utilities, engulfing_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
