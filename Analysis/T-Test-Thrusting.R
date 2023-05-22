library(tidyverse)
library(boot)

# Import data 
thrusting_profits1 <- read.csv('./RowData/thrusting-1-Profits.csv')
thrusting_profits3 <- read.csv('./RowData/thrusting-3-Profits.csv')
thrusting_profits5 <- read.csv('./RowData/thrusting-5-Profits.csv')
thrusting_profits7 <- read.csv('./RowData/thrusting-7-Profits.csv')
thrusting_profits10 <- read.csv('./RowData/thrusting-10-Profits.csv')

# Calculate p-value of "Welch's t-Test" and print to csv
sink(file = "./Results-T-Test/T-Test Thrusting.csv")
print("T-Test thrusting 1 Tag")
t.test(thrusting_profits1$Communication, thrusting_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits1$CustomerDiscretionary, thrusting_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits1$CustomerStaples, thrusting_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits1$Energy, thrusting_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits1$Finance, thrusting_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits1$Healthcare, thrusting_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits1$Industrial, thrusting_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits1$Materials, thrusting_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits1$IT, thrusting_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits1$RealEstate, thrusting_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits1$Utilities, thrusting_profits1$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test thrusting 3 Tag")
t.test(thrusting_profits3$Communication, thrusting_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits3$CustomerDiscretionary, thrusting_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits3$CustomerStaples, thrusting_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits3$Energy, thrusting_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits3$Finance, thrusting_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits3$Healthcare, thrusting_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits3$Industrial, thrusting_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits3$Materials, thrusting_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits3$IT, thrusting_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits3$RealEstate, thrusting_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits3$Utilities, thrusting_profits3$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test thrusting 5 Tag")
t.test(thrusting_profits5$Communication, thrusting_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits5$CustomerDiscretionary, thrusting_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits5$CustomerStaples, thrusting_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits5$Energy, thrusting_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits5$Finance, thrusting_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits5$Healthcare, thrusting_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits5$Industrial, thrusting_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits5$Materials, thrusting_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits5$IT, thrusting_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits5$RealEstate, thrusting_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits5$Utilities, thrusting_profits5$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test thrusting 7 Tag")
t.test(thrusting_profits7$Communication, thrusting_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits7$CustomerDiscretionary, thrusting_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits7$CustomerStaples, thrusting_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits7$Energy, thrusting_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits7$Finance, thrusting_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits7$Healthcare, thrusting_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits7$Industrial, thrusting_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits7$Materials, thrusting_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits7$IT, thrusting_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits7$RealEstate, thrusting_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits7$Utilities, thrusting_profits7$All, var.equal=FALSE, alternative = "two.sided")$p.value

print("T-Test thrusting 10 Tag")
t.test(thrusting_profits10$Communication, thrusting_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits10$CustomerDiscretionary, thrusting_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits10$CustomerStaples, thrusting_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits10$Energy, thrusting_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits10$Finance, thrusting_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits10$Healthcare, thrusting_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits10$Industrial, thrusting_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits10$Materials, thrusting_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits10$IT, thrusting_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits10$RealEstate, thrusting_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value
t.test(thrusting_profits10$Utilities, thrusting_profits10$All, var.equal=FALSE, alternative = "two.sided")$p.value

sink(file = NULL)
