library(tidyverse)

# Import data 
engulfingBearish1 <- read.csv('./RowData/Engulfing-bearish-1-PosNeg.csv', row.names = 1)
engulfingBearish3 <- read.csv('./RowData/Engulfing-bearish-3-PosNeg.csv', row.names = 1)
engulfingBearish5 <- read.csv('./RowData/Engulfing-bearish-5-PosNeg.csv', row.names = 1)
engulfingBearish7 <- read.csv('./RowData/Engulfing-bearish-7-PosNeg.csv', row.names = 1)
engulfingBearish10 <- read.csv('./RowData/Engulfing-bearish-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
engulfingBearish1 <- head(engulfingBearish1, - 2)
engulfingBearish1Communication <- engulfingBearish1 %>% select(1, 12)
engulfingBearish1CustomerDiscretionary <- engulfingBearish1 %>% select(2, 12)
engulfingBearish1CustomerStaples <- engulfingBearish1 %>% select(3, 12)
engulfingBearish1Energy <- engulfingBearish1 %>% select(4, 12)
engulfingBearish1Finance <- engulfingBearish1 %>% select(5, 12)
engulfingBearish1Healthcare <- engulfingBearish1 %>% select(6, 12)
engulfingBearish1Industrial <- engulfingBearish1 %>% select(7, 12)
engulfingBearish1Materials <- engulfingBearish1 %>% select(8, 12)
engulfingBearish1IT <- engulfingBearish1 %>% select(9, 12)
engulfingBearish1RealEstate <- engulfingBearish1 %>% select(10, 12)
engulfingBearish1Utilities <- engulfingBearish1 %>% select(11, 12)

engulfingBearish3 <- head(engulfingBearish3, - 2)
engulfingBearish3Communication <- engulfingBearish3 %>% select(1, 12)
engulfingBearish3CustomerDiscretionary <- engulfingBearish3 %>% select(2, 12)
engulfingBearish3CustomerStaples <- engulfingBearish3 %>% select(3, 12)
engulfingBearish3Energy <- engulfingBearish3 %>% select(4, 12)
engulfingBearish3Finance <- engulfingBearish3 %>% select(5, 12)
engulfingBearish3Healthcare <- engulfingBearish3 %>% select(6, 12)
engulfingBearish3Industrial <- engulfingBearish3 %>% select(7, 12)
engulfingBearish3Materials <- engulfingBearish3 %>% select(8, 12)
engulfingBearish3IT <- engulfingBearish3 %>% select(9, 12)
engulfingBearish3RealEstate <- engulfingBearish3 %>% select(10, 12)
engulfingBearish3Utilities <- engulfingBearish3 %>% select(11, 12)

engulfingBearish5 <- head(engulfingBearish5, - 2)
engulfingBearish5Communication <- engulfingBearish5 %>% select(1, 12)
engulfingBearish5CustomerDiscretionary <- engulfingBearish5 %>% select(2, 12)
engulfingBearish5CustomerStaples <- engulfingBearish5 %>% select(3, 12)
engulfingBearish5Energy <- engulfingBearish5 %>% select(4, 12)
engulfingBearish5Finance <- engulfingBearish5 %>% select(5, 12)
engulfingBearish5Healthcare <- engulfingBearish5 %>% select(6, 12)
engulfingBearish5Industrial <- engulfingBearish5 %>% select(7, 12)
engulfingBearish5Materials <- engulfingBearish5 %>% select(8, 12)
engulfingBearish5IT <- engulfingBearish5 %>% select(9, 12)
engulfingBearish5RealEstate <- engulfingBearish5 %>% select(10, 12)
engulfingBearish5Utilities <- engulfingBearish5 %>% select(11, 12)

engulfingBearish7 <- head(engulfingBearish7, - 2)
engulfingBearish7Communication <- engulfingBearish7 %>% select(1, 12)
engulfingBearish7CustomerDiscretionary <- engulfingBearish7 %>% select(2, 12)
engulfingBearish7CustomerStaples <- engulfingBearish7 %>% select(3, 12)
engulfingBearish7Energy <- engulfingBearish7 %>% select(4, 12)
engulfingBearish7Finance <- engulfingBearish7 %>% select(5, 12)
engulfingBearish7Healthcare <- engulfingBearish7 %>% select(6, 12)
engulfingBearish7Industrial <- engulfingBearish7 %>% select(7, 12)
engulfingBearish7Materials <- engulfingBearish7 %>% select(8, 12)
engulfingBearish7IT <- engulfingBearish7 %>% select(9, 12)
engulfingBearish7RealEstate <- engulfingBearish7 %>% select(10, 12)
engulfingBearish7Utilities <- engulfingBearish7 %>% select(11, 12)

engulfingBearish10 <- head(engulfingBearish10, - 2)
engulfingBearish10Communication <- engulfingBearish10 %>% select(1, 12)
engulfingBearish10CustomerDiscretionary <- engulfingBearish10 %>% select(2, 12)
engulfingBearish10CustomerStaples <- engulfingBearish10 %>% select(3, 12)
engulfingBearish10Energy <- engulfingBearish10 %>% select(4, 12)
engulfingBearish10Finance <- engulfingBearish10 %>% select(5, 12)
engulfingBearish10Healthcare <- engulfingBearish10 %>% select(6, 12)
engulfingBearish10Industrial <- engulfingBearish10 %>% select(7, 12)
engulfingBearish10Materials <- engulfingBearish10 %>% select(8, 12)
engulfingBearish10IT <- engulfingBearish10 %>% select(9, 12)
engulfingBearish10RealEstate <- engulfingBearish10 %>% select(10, 12)
engulfingBearish10Utilities <- engulfingBearish10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Engulfing-bearish.csv")
print("Chi-Square p-Value Engulfing-Bearish 1 Tag")
chisq.test(engulfingBearish1Communication)$p.value
chisq.test(engulfingBearish1CustomerDiscretionary)$p.value
chisq.test(engulfingBearish1CustomerStaples)$p.value
chisq.test(engulfingBearish1Energy)$p.value
chisq.test(engulfingBearish1Finance)$p.value
chisq.test(engulfingBearish1Healthcare)$p.value
chisq.test(engulfingBearish1Industrial)$p.value
chisq.test(engulfingBearish1Materials)$p.value
chisq.test(engulfingBearish1IT)$p.value
chisq.test(engulfingBearish1RealEstate)$p.value
chisq.test(engulfingBearish1Utilities)$p.value

print("Chi-Square p-Value atching-Low 3 Tage")
chisq.test(engulfingBearish3Communication)$p.value
chisq.test(engulfingBearish3CustomerDiscretionary)$p.value
chisq.test(engulfingBearish3CustomerStaples)$p.value
chisq.test(engulfingBearish3Energy)$p.value
chisq.test(engulfingBearish3Finance)$p.value
chisq.test(engulfingBearish3Healthcare)$p.value
chisq.test(engulfingBearish3Industrial)$p.value
chisq.test(engulfingBearish3Materials)$p.value
chisq.test(engulfingBearish3IT)$p.value
chisq.test(engulfingBearish3RealEstate)$p.value
chisq.test(engulfingBearish3Utilities)$p.value

print("Chi-Square p-Value Engulfing-Bearish 5 Tage")
chisq.test(engulfingBearish5Communication)$p.value
chisq.test(engulfingBearish5CustomerDiscretionary)$p.value
chisq.test(engulfingBearish5CustomerStaples)$p.value
chisq.test(engulfingBearish5Energy)$p.value
chisq.test(engulfingBearish5Finance)$p.value
chisq.test(engulfingBearish5Healthcare)$p.value
chisq.test(engulfingBearish5Industrial)$p.value
chisq.test(engulfingBearish5Materials)$p.value
chisq.test(engulfingBearish5IT)$p.value
chisq.test(engulfingBearish5RealEstate)$p.value
chisq.test(engulfingBearish5Utilities)$p.value

print("Chi-Square p-Value Engulfing-Bearish 7 Tage")
chisq.test(engulfingBearish7Communication)$p.value
chisq.test(engulfingBearish7CustomerDiscretionary)$p.value
chisq.test(engulfingBearish7CustomerStaples)$p.value
chisq.test(engulfingBearish7Energy)$p.value
chisq.test(engulfingBearish7Finance)$p.value
chisq.test(engulfingBearish7Healthcare)$p.value
chisq.test(engulfingBearish7Industrial)$p.value
chisq.test(engulfingBearish7Materials)$p.value
chisq.test(engulfingBearish7IT)$p.value
chisq.test(engulfingBearish7RealEstate)$p.value
chisq.test(engulfingBearish7Utilities)$p.value

print("Chi-Square p-Value Engulfing-Bearish 10 Tage")
chisq.test(engulfingBearish10Communication)$p.value
chisq.test(engulfingBearish10CustomerDiscretionary)$p.value
chisq.test(engulfingBearish10CustomerStaples)$p.value
chisq.test(engulfingBearish10Energy)$p.value
chisq.test(engulfingBearish10Finance)$p.value
chisq.test(engulfingBearish10Healthcare)$p.value
chisq.test(engulfingBearish10Industrial)$p.value
chisq.test(engulfingBearish10Materials)$p.value
chisq.test(engulfingBearish10IT)$p.value
chisq.test(engulfingBearish10RealEstate)$p.value
chisq.test(engulfingBearish10Utilities)$p.value

sink(file = NULL)

