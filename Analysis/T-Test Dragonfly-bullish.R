library(tidyverse)
library(boot)

# Import data 
dragonfly_bullish_profits1 <- read.csv('./RowData/dragonfly-bullish-1-Profits.csv')
dragonfly_bullish_profits3 <- read.csv('./RowData/dragonfly-bullish-3-Profits.csv')
dragonfly_bullish_profits5 <- read.csv('./RowData/dragonfly-bullish-5-Profits.csv')
dragonfly_bullish_profits7 <- read.csv('./RowData/dragonfly-bullish-7-Profits.csv')
dragonfly_bullish_profits10 <- read.csv('./RowData/dragonfly-bullish-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Dragonfly-bullish .csv")
print("T-Test Dragonfly-bullish 1 Tag")
t.test(dragonfly_bullish_profits1$Communication, dragonfly_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits1$CustomerDiscretionary, dragonfly_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits1$CustomerStaples, dragonfly_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits1$Energy, dragonfly_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits1$Finance, dragonfly_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits1$Healthcare, dragonfly_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits1$Industrial, dragonfly_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits1$Materials, dragonfly_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits1$IT, dragonfly_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits1$RealEstate, dragonfly_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits1$Utilities, dragonfly_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Dragonfly-bullish 3 Tag")
t.test(dragonfly_bullish_profits3$Communication, dragonfly_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits3$CustomerDiscretionary, dragonfly_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits3$CustomerStaples, dragonfly_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits3$Energy, dragonfly_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits3$Finance, dragonfly_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits3$Healthcare, dragonfly_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits3$Industrial, dragonfly_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits3$Materials, dragonfly_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits3$IT, dragonfly_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits3$RealEstate, dragonfly_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits3$Utilities, dragonfly_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Dragonfly-bullish 5 Tag")
t.test(dragonfly_bullish_profits5$Communication, dragonfly_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits5$CustomerDiscretionary, dragonfly_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits5$CustomerStaples, dragonfly_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits5$Energy, dragonfly_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits5$Finance, dragonfly_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits5$Healthcare, dragonfly_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits5$Industrial, dragonfly_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits5$Materials, dragonfly_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits5$IT, dragonfly_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits5$RealEstate, dragonfly_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits5$Utilities, dragonfly_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Dragonfly-bullish 7 Tag")
t.test(dragonfly_bullish_profits7$Communication, dragonfly_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits7$CustomerDiscretionary, dragonfly_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits7$CustomerStaples, dragonfly_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits7$Energy, dragonfly_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits7$Finance, dragonfly_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits7$Healthcare, dragonfly_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits7$Industrial, dragonfly_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits7$Materials, dragonfly_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits7$IT, dragonfly_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits7$RealEstate, dragonfly_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits7$Utilities, dragonfly_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Dragonfly-bullish 10 Tag")
t.test(dragonfly_bullish_profits10$Communication, dragonfly_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits10$CustomerDiscretionary, dragonfly_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits10$CustomerStaples, dragonfly_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits10$Energy, dragonfly_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits10$Finance, dragonfly_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits10$Healthcare, dragonfly_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits10$Industrial, dragonfly_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits10$Materials, dragonfly_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits10$IT, dragonfly_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits10$RealEstate, dragonfly_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(dragonfly_bullish_profits10$Utilities, dragonfly_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
