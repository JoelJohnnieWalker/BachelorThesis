library(tidyverse)
library(boot)

# Import data 
gravestone_bullish_profits1 <- read.csv('./RowData/Gravestone-bullish-1-Profits.csv')
gravestone_bullish_profits3 <- read.csv('./RowData/Gravestone-bullish-3-Profits.csv')
gravestone_bullish_profits5 <- read.csv('./RowData/Gravestone-bullish-5-Profits.csv')
gravestone_bullish_profits7 <- read.csv('./RowData/Gravestone-bullish-7-Profits.csv')
gravestone_bullish_profits10 <- read.csv('./RowData/Gravestone-bullish-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Gravestone-bullish.csv")
print("T-Test Gravestone-bullish 1 Tag")
t.test(gravestone_bullish_profits1$Communication, gravestone_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits1$CustomerDiscretionary, gravestone_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits1$CustomerStaples, gravestone_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits1$Energy, gravestone_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits1$Finance, gravestone_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits1$Healthcare, gravestone_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits1$Industrial, gravestone_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits1$Materials, gravestone_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits1$IT, gravestone_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits1$RealEstate, gravestone_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits1$Utilities, gravestone_bullish_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Gravestone-bullish 3 Tag")
t.test(gravestone_bullish_profits3$Communication, gravestone_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits3$CustomerDiscretionary, gravestone_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits3$CustomerStaples, gravestone_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits3$Energy, gravestone_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits3$Finance, gravestone_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits3$Healthcare, gravestone_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits3$Industrial, gravestone_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits3$Materials, gravestone_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits3$IT, gravestone_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits3$RealEstate, gravestone_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits3$Utilities, gravestone_bullish_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Gravestone-bullish 5 Tag")
t.test(gravestone_bullish_profits5$Communication, gravestone_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits5$CustomerDiscretionary, gravestone_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits5$CustomerStaples, gravestone_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits5$Energy, gravestone_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits5$Finance, gravestone_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits5$Healthcare, gravestone_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits5$Industrial, gravestone_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits5$Materials, gravestone_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits5$IT, gravestone_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits5$RealEstate, gravestone_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits5$Utilities, gravestone_bullish_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Gravestone-bullish 7 Tag")
t.test(gravestone_bullish_profits7$Communication, gravestone_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits7$CustomerDiscretionary, gravestone_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits7$CustomerStaples, gravestone_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits7$Energy, gravestone_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits7$Finance, gravestone_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits7$Healthcare, gravestone_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits7$Industrial, gravestone_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits7$Materials, gravestone_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits7$IT, gravestone_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits7$RealEstate, gravestone_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits7$Utilities, gravestone_bullish_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Gravestone-bullish 10 Tag")
t.test(gravestone_bullish_profits10$Communication, gravestone_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits10$CustomerDiscretionary, gravestone_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits10$CustomerStaples, gravestone_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits10$Energy, gravestone_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits10$Finance, gravestone_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits10$Healthcare, gravestone_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits10$Industrial, gravestone_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits10$Materials, gravestone_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits10$IT, gravestone_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits10$RealEstate, gravestone_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(gravestone_bullish_profits10$Utilities, gravestone_bullish_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
