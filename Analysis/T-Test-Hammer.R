library(tidyverse)
library(boot)

# Import data 
hammer_profits1 <- read.csv('./RowData/Hammer-1-Profits.csv')
hammer_profits3 <- read.csv('./RowData/Hammer-3-Profits.csv')
hammer_profits5 <- read.csv('./RowData/Hammer-5-Profits.csv')
hammer_profits7 <- read.csv('./RowData/Hammer-7-Profits.csv')
hammer_profits10 <- read.csv('./RowData/Hammer-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Hammer.csv")
print("T-Test Hammer 1 Tag")
t.test(hammer_profits1$Communication, hammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits1$CustomerDiscretionary, hammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits1$CustomerStaples, hammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits1$Energy, hammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits1$Finance, hammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits1$Healthcare, hammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits1$Industrial, hammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits1$Materials, hammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits1$IT, hammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits1$RealEstate, hammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits1$Utilities, hammer_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Hammer 3 Tag")
t.test(hammer_profits3$Communication, hammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits3$CustomerDiscretionary, hammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits3$CustomerStaples, hammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits3$Energy, hammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits3$Finance, hammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits3$Healthcare, hammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits3$Industrial, hammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits3$Materials, hammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits3$IT, hammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits3$RealEstate, hammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits3$Utilities, hammer_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Hammer 5 Tag")
t.test(hammer_profits5$Communication, hammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits5$CustomerDiscretionary, hammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits5$CustomerStaples, hammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits5$Energy, hammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits5$Finance, hammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits5$Healthcare, hammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits5$Industrial, hammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits5$Materials, hammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits5$IT, hammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits5$RealEstate, hammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits5$Utilities, hammer_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Hammer 7 Tag")
t.test(hammer_profits7$Communication, hammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits7$CustomerDiscretionary, hammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits7$CustomerStaples, hammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits7$Energy, hammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits7$Finance, hammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits7$Healthcare, hammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits7$Industrial, hammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits7$Materials, hammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits7$IT, hammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits7$RealEstate, hammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits7$Utilities, hammer_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test Hammer 10 Tag")
t.test(hammer_profits10$Communication, hammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits10$CustomerDiscretionary, hammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits10$CustomerStaples, hammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits10$Energy, hammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits10$Finance, hammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits10$Healthcare, hammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits10$Industrial, hammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits10$Materials, hammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits10$IT, hammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits10$RealEstate, hammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(hammer_profits10$Utilities, hammer_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
