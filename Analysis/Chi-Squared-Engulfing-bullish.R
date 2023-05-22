library(tidyverse)

# Import data 
engulfingBullish1 <- read.csv('./RowData/Engulfing-Bullish-1-PosNeg.csv', row.names = 1)
engulfingBullish3 <- read.csv('./RowData/Engulfing-Bullish-3-PosNeg.csv', row.names = 1)
engulfingBullish5 <- read.csv('./RowData/Engulfing-Bullish-5-PosNeg.csv', row.names = 1)
engulfingBullish7 <- read.csv('./RowData/Engulfing-Bullish-7-PosNeg.csv', row.names = 1)
engulfingBullish10 <- read.csv('./RowData/Engulfing-Bullish-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
engulfingBullish1 <- head(engulfingBullish1, - 2)
engulfingBullish1Communication <- engulfingBullish1 %>% select(1, 12)
engulfingBullish1CustomerDiscretionary <- engulfingBullish1 %>% select(2, 12)
engulfingBullish1CustomerStaples <- engulfingBullish1 %>% select(3, 12)
engulfingBullish1Energy <- engulfingBullish1 %>% select(4, 12)
engulfingBullish1Finance <- engulfingBullish1 %>% select(5, 12)
engulfingBullish1Healthcare <- engulfingBullish1 %>% select(6, 12)
engulfingBullish1Industrial <- engulfingBullish1 %>% select(7, 12)
engulfingBullish1Materials <- engulfingBullish1 %>% select(8, 12)
engulfingBullish1IT <- engulfingBullish1 %>% select(9, 12)
engulfingBullish1RealEstate <- engulfingBullish1 %>% select(10, 12)
engulfingBullish1Utilities <- engulfingBullish1 %>% select(11, 12)

engulfingBullish3 <- head(engulfingBullish3, - 2)
engulfingBullish3Communication <- engulfingBullish3 %>% select(1, 12)
engulfingBullish3CustomerDiscretionary <- engulfingBullish3 %>% select(2, 12)
engulfingBullish3CustomerStaples <- engulfingBullish3 %>% select(3, 12)
engulfingBullish3Energy <- engulfingBullish3 %>% select(4, 12)
engulfingBullish3Finance <- engulfingBullish3 %>% select(5, 12)
engulfingBullish3Healthcare <- engulfingBullish3 %>% select(6, 12)
engulfingBullish3Industrial <- engulfingBullish3 %>% select(7, 12)
engulfingBullish3Materials <- engulfingBullish3 %>% select(8, 12)
engulfingBullish3IT <- engulfingBullish3 %>% select(9, 12)
engulfingBullish3RealEstate <- engulfingBullish3 %>% select(10, 12)
engulfingBullish3Utilities <- engulfingBullish3 %>% select(11, 12)

engulfingBullish5 <- head(engulfingBullish5, - 2)
engulfingBullish5Communication <- engulfingBullish5 %>% select(1, 12)
engulfingBullish5CustomerDiscretionary <- engulfingBullish5 %>% select(2, 12)
engulfingBullish5CustomerStaples <- engulfingBullish5 %>% select(3, 12)
engulfingBullish5Energy <- engulfingBullish5 %>% select(4, 12)
engulfingBullish5Finance <- engulfingBullish5 %>% select(5, 12)
engulfingBullish5Healthcare <- engulfingBullish5 %>% select(6, 12)
engulfingBullish5Industrial <- engulfingBullish5 %>% select(7, 12)
engulfingBullish5Materials <- engulfingBullish5 %>% select(8, 12)
engulfingBullish5IT <- engulfingBullish5 %>% select(9, 12)
engulfingBullish5RealEstate <- engulfingBullish5 %>% select(10, 12)
engulfingBullish5Utilities <- engulfingBullish5 %>% select(11, 12)

engulfingBullish7 <- head(engulfingBullish7, - 2)
engulfingBullish7Communication <- engulfingBullish7 %>% select(1, 12)
engulfingBullish7CustomerDiscretionary <- engulfingBullish7 %>% select(2, 12)
engulfingBullish7CustomerStaples <- engulfingBullish7 %>% select(3, 12)
engulfingBullish7Energy <- engulfingBullish7 %>% select(4, 12)
engulfingBullish7Finance <- engulfingBullish7 %>% select(5, 12)
engulfingBullish7Healthcare <- engulfingBullish7 %>% select(6, 12)
engulfingBullish7Industrial <- engulfingBullish7 %>% select(7, 12)
engulfingBullish7Materials <- engulfingBullish7 %>% select(8, 12)
engulfingBullish7IT <- engulfingBullish7 %>% select(9, 12)
engulfingBullish7RealEstate <- engulfingBullish7 %>% select(10, 12)
engulfingBullish7Utilities <- engulfingBullish7 %>% select(11, 12)

engulfingBullish10 <- head(engulfingBullish10, - 2)
engulfingBullish10Communication <- engulfingBullish10 %>% select(1, 12)
engulfingBullish10CustomerDiscretionary <- engulfingBullish10 %>% select(2, 12)
engulfingBullish10CustomerStaples <- engulfingBullish10 %>% select(3, 12)
engulfingBullish10Energy <- engulfingBullish10 %>% select(4, 12)
engulfingBullish10Finance <- engulfingBullish10 %>% select(5, 12)
engulfingBullish10Healthcare <- engulfingBullish10 %>% select(6, 12)
engulfingBullish10Industrial <- engulfingBullish10 %>% select(7, 12)
engulfingBullish10Materials <- engulfingBullish10 %>% select(8, 12)
engulfingBullish10IT <- engulfingBullish10 %>% select(9, 12)
engulfingBullish10RealEstate <- engulfingBullish10 %>% select(10, 12)
engulfingBullish10Utilities <- engulfingBullish10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Engulfing-bullish.csv")
print("Chi-Square p-Value Engulfing-Bullish 1 Tag")
chisq.test(engulfingBullish1Communication)$p.value
chisq.test(engulfingBullish1CustomerDiscretionary)$p.value
chisq.test(engulfingBullish1CustomerStaples)$p.value
chisq.test(engulfingBullish1Energy)$p.value
chisq.test(engulfingBullish1Finance)$p.value
chisq.test(engulfingBullish1Healthcare)$p.value
chisq.test(engulfingBullish1Industrial)$p.value
chisq.test(engulfingBullish1Materials)$p.value
chisq.test(engulfingBullish1IT)$p.value
chisq.test(engulfingBullish1RealEstate)$p.value
chisq.test(engulfingBullish1Utilities)$p.value

print("Chi-Square p-Value atching-Low 3 Tage")
chisq.test(engulfingBullish3Communication)$p.value
chisq.test(engulfingBullish3CustomerDiscretionary)$p.value
chisq.test(engulfingBullish3CustomerStaples)$p.value
chisq.test(engulfingBullish3Energy)$p.value
chisq.test(engulfingBullish3Finance)$p.value
chisq.test(engulfingBullish3Healthcare)$p.value
chisq.test(engulfingBullish3Industrial)$p.value
chisq.test(engulfingBullish3Materials)$p.value
chisq.test(engulfingBullish3IT)$p.value
chisq.test(engulfingBullish3RealEstate)$p.value
chisq.test(engulfingBullish3Utilities)$p.value

print("Chi-Square p-Value Engulfing-Bullish 5 Tage")
chisq.test(engulfingBullish5Communication)$p.value
chisq.test(engulfingBullish5CustomerDiscretionary)$p.value
chisq.test(engulfingBullish5CustomerStaples)$p.value
chisq.test(engulfingBullish5Energy)$p.value
chisq.test(engulfingBullish5Finance)$p.value
chisq.test(engulfingBullish5Healthcare)$p.value
chisq.test(engulfingBullish5Industrial)$p.value
chisq.test(engulfingBullish5Materials)$p.value
chisq.test(engulfingBullish5IT)$p.value
chisq.test(engulfingBullish5RealEstate)$p.value
chisq.test(engulfingBullish5Utilities)$p.value

print("Chi-Square p-Value Engulfing-Bullish 7 Tage")
chisq.test(engulfingBullish7Communication)$p.value
chisq.test(engulfingBullish7CustomerDiscretionary)$p.value
chisq.test(engulfingBullish7CustomerStaples)$p.value
chisq.test(engulfingBullish7Energy)$p.value
chisq.test(engulfingBullish7Finance)$p.value
chisq.test(engulfingBullish7Healthcare)$p.value
chisq.test(engulfingBullish7Industrial)$p.value
chisq.test(engulfingBullish7Materials)$p.value
chisq.test(engulfingBullish7IT)$p.value
chisq.test(engulfingBullish7RealEstate)$p.value
chisq.test(engulfingBullish7Utilities)$p.value

print("Chi-Square p-Value Engulfing-Bullish 10 Tage")
chisq.test(engulfingBullish10Communication)$p.value
chisq.test(engulfingBullish10CustomerDiscretionary)$p.value
chisq.test(engulfingBullish10CustomerStaples)$p.value
chisq.test(engulfingBullish10Energy)$p.value
chisq.test(engulfingBullish10Finance)$p.value
chisq.test(engulfingBullish10Healthcare)$p.value
chisq.test(engulfingBullish10Industrial)$p.value
chisq.test(engulfingBullish10Materials)$p.value
chisq.test(engulfingBullish10IT)$p.value
chisq.test(engulfingBullish10RealEstate)$p.value
chisq.test(engulfingBullish10Utilities)$p.value

sink(file = NULL)

