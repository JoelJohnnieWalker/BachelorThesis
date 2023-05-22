library(tidyverse)
library(boot)

# Import data 
eveningStar_profits1 <- read.csv('./RowData/eveningStar-1-Profits.csv')
eveningStar_profits3 <- read.csv('./RowData/eveningStar-3-Profits.csv')
eveningStar_profits5 <- read.csv('./RowData/eveningStar-5-Profits.csv')
eveningStar_profits7 <- read.csv('./RowData/eveningStar-7-Profits.csv')
eveningStar_profits10 <- read.csv('./RowData/eveningStar-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test EveningStar.csv")
print("T-Test eveningStar 1 Tag")
t.test(eveningStar_profits1$Communication, eveningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits1$CustomerDiscretionary, eveningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits1$CustomerStaples, eveningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits1$Energy, eveningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits1$Finance, eveningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits1$Healthcare, eveningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits1$Industrial, eveningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits1$Materials, eveningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits1$IT, eveningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits1$RealEstate, eveningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits1$Utilities, eveningStar_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test eveningStar 3 Tag")
t.test(eveningStar_profits3$Communication, eveningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits3$CustomerDiscretionary, eveningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits3$CustomerStaples, eveningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits3$Energy, eveningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits3$Finance, eveningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits3$Healthcare, eveningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits3$Industrial, eveningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits3$Materials, eveningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits3$IT, eveningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits3$RealEstate, eveningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits3$Utilities, eveningStar_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test eveningStar 5 Tag")
t.test(eveningStar_profits5$Communication, eveningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits5$CustomerDiscretionary, eveningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits5$CustomerStaples, eveningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits5$Energy, eveningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits5$Finance, eveningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits5$Healthcare, eveningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits5$Industrial, eveningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits5$Materials, eveningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits5$IT, eveningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits5$RealEstate, eveningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits5$Utilities, eveningStar_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test eveningStar 7 Tag")
t.test(eveningStar_profits7$Communication, eveningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits7$CustomerDiscretionary, eveningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits7$CustomerStaples, eveningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits7$Energy, eveningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits7$Finance, eveningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits7$Healthcare, eveningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits7$Industrial, eveningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits7$Materials, eveningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits7$IT, eveningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits7$RealEstate, eveningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits7$Utilities, eveningStar_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test eveningStar 10 Tag")
t.test(eveningStar_profits10$Communication, eveningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits10$CustomerDiscretionary, eveningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits10$CustomerStaples, eveningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits10$Energy, eveningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits10$Finance, eveningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits10$Healthcare, eveningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits10$Industrial, eveningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits10$Materials, eveningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits10$IT, eveningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits10$RealEstate, eveningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(eveningStar_profits10$Utilities, eveningStar_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
