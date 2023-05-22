library(tidyverse)
library(boot)

# Import data 
tasukiUG_profits1 <- read.csv('./RowData/tasuki-UG-1-Profits.csv')
tasukiUG_profits3 <- read.csv('./RowData/tasuki-UG-3-Profits.csv')
tasukiUG_profits5 <- read.csv('./RowData/tasuki-UG-5-Profits.csv')
tasukiUG_profits7 <- read.csv('./RowData/tasuki-UG-7-Profits.csv')
tasukiUG_profits10 <- read.csv('./RowData/tasuki-UG-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Tasuki-UG .csv")
print("T-Test tasukiUG 1 Tag")
t.test(tasukiUG_profits1$Communication, tasukiUG_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits1$CustomerDiscretionary, tasukiUG_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits1$CustomerStaples, tasukiUG_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits1$Energy, tasukiUG_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits1$Finance, tasukiUG_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits1$Healthcare, tasukiUG_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits1$Industrial, tasukiUG_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits1$Materials, tasukiUG_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits1$IT, tasukiUG_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits1$RealEstate, tasukiUG_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits1$Utilities, tasukiUG_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test tasukiUG 3 Tag")
t.test(tasukiUG_profits3$Communication, tasukiUG_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits3$CustomerDiscretionary, tasukiUG_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits3$CustomerStaples, tasukiUG_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits3$Energy, tasukiUG_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits3$Finance, tasukiUG_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits3$Healthcare, tasukiUG_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits3$Industrial, tasukiUG_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits3$Materials, tasukiUG_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits3$IT, tasukiUG_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits3$RealEstate, tasukiUG_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits3$Utilities, tasukiUG_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test tasukiUG 5 Tag")
t.test(tasukiUG_profits5$Communication, tasukiUG_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits5$CustomerDiscretionary, tasukiUG_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits5$CustomerStaples, tasukiUG_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits5$Energy, tasukiUG_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits5$Finance, tasukiUG_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits5$Healthcare, tasukiUG_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits5$Industrial, tasukiUG_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits5$Materials, tasukiUG_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits5$IT, tasukiUG_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits5$RealEstate, tasukiUG_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits5$Utilities, tasukiUG_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test tasukiUG 7 Tag")
t.test(tasukiUG_profits7$Communication, tasukiUG_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits7$CustomerDiscretionary, tasukiUG_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits7$CustomerStaples, tasukiUG_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits7$Energy, tasukiUG_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits7$Finance, tasukiUG_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits7$Healthcare, tasukiUG_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits7$Industrial, tasukiUG_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits7$Materials, tasukiUG_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits7$IT, tasukiUG_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits7$RealEstate, tasukiUG_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits7$Utilities, tasukiUG_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test tasukiUG 10 Tag")
t.test(tasukiUG_profits10$Communication, tasukiUG_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits10$CustomerDiscretionary, tasukiUG_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits10$CustomerStaples, tasukiUG_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits10$Energy, tasukiUG_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits10$Finance, tasukiUG_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits10$Healthcare, tasukiUG_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits10$Industrial, tasukiUG_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits10$Materials, tasukiUG_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits10$IT, tasukiUG_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits10$RealEstate, tasukiUG_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(tasukiUG_profits10$Utilities, tasukiUG_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
