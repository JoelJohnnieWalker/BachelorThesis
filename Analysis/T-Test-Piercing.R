library(tidyverse)
library(boot)

# Import data 
piercing_profits1 <- read.csv('./RowData/piercing-1-Profits.csv')
piercing_profits3 <- read.csv('./RowData/piercing-3-Profits.csv')
piercing_profits5 <- read.csv('./RowData/piercing-5-Profits.csv')
piercing_profits7 <- read.csv('./RowData/piercing-7-Profits.csv')
piercing_profits10 <- read.csv('./RowData/piercing-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Piercing.csv")
print("T-Test piercing 1 Tag")
t.test(piercing_profits1$Communication, piercing_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits1$CustomerDiscretionary, piercing_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits1$CustomerStaples, piercing_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits1$Energy, piercing_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits1$Finance, piercing_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits1$Healthcare, piercing_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits1$Industrial, piercing_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits1$Materials, piercing_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits1$IT, piercing_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits1$RealEstate, piercing_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits1$Utilities, piercing_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test piercing 3 Tag")
t.test(piercing_profits3$Communication, piercing_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits3$CustomerDiscretionary, piercing_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits3$CustomerStaples, piercing_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits3$Energy, piercing_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits3$Finance, piercing_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits3$Healthcare, piercing_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits3$Industrial, piercing_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits3$Materials, piercing_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits3$IT, piercing_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits3$RealEstate, piercing_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits3$Utilities, piercing_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test piercing 5 Tag")
t.test(piercing_profits5$Communication, piercing_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits5$CustomerDiscretionary, piercing_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits5$CustomerStaples, piercing_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits5$Energy, piercing_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits5$Finance, piercing_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits5$Healthcare, piercing_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits5$Industrial, piercing_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits5$Materials, piercing_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits5$IT, piercing_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits5$RealEstate, piercing_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits5$Utilities, piercing_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test piercing 7 Tag")
t.test(piercing_profits7$Communication, piercing_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits7$CustomerDiscretionary, piercing_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits7$CustomerStaples, piercing_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits7$Energy, piercing_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits7$Finance, piercing_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits7$Healthcare, piercing_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits7$Industrial, piercing_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits7$Materials, piercing_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits7$IT, piercing_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits7$RealEstate, piercing_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits7$Utilities, piercing_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test piercing 10 Tag")
t.test(piercing_profits10$Communication, piercing_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits10$CustomerDiscretionary, piercing_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits10$CustomerStaples, piercing_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits10$Energy, piercing_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits10$Finance, piercing_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits10$Healthcare, piercing_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits10$Industrial, piercing_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits10$Materials, piercing_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits10$IT, piercing_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits10$RealEstate, piercing_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(piercing_profits10$Utilities, piercing_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
