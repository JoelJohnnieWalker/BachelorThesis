library(tidyverse)

# Import data 
gravestoneBull1 <- read.csv('./RowData/gravestone-bullish-1-PosNeg.csv', row.names = 1)
gravestoneBull3 <- read.csv('./RowData/gravestone-bullish-3-PosNeg.csv', row.names = 1)
gravestoneBull5 <- read.csv('./RowData/gravestone-bullish-5-PosNeg.csv', row.names = 1)
gravestoneBull7 <- read.csv('./RowData/gravestone-bullish-7-PosNeg.csv', row.names = 1)
gravestoneBull10 <- read.csv('./RowData/gravestone-bullish-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
gravestoneBull1 <- head(gravestoneBull1, - 2)
gravestoneBull1Communication <- gravestoneBull1 %>% select(1, 12)
gravestoneBull1CustomerDiscretionary <- gravestoneBull1 %>% select(2, 12)
gravestoneBull1CustomerStaples <- gravestoneBull1 %>% select(3, 12)
gravestoneBull1Energy <- gravestoneBull1 %>% select(4, 12)
gravestoneBull1Finance <- gravestoneBull1 %>% select(5, 12)
gravestoneBull1Healthcare <- gravestoneBull1 %>% select(6, 12)
gravestoneBull1Industrial <- gravestoneBull1 %>% select(7, 12)
gravestoneBull1Materials <- gravestoneBull1 %>% select(8, 12)
gravestoneBull1IT <- gravestoneBull1 %>% select(9, 12)
gravestoneBull1RealEstate <- gravestoneBull1 %>% select(10, 12)
gravestoneBull1Utilities <- gravestoneBull1 %>% select(11, 12)

gravestoneBull3 <- head(gravestoneBull3, - 2)
gravestoneBull3Communication <- gravestoneBull3 %>% select(1, 12)
gravestoneBull3CustomerDiscretionary <- gravestoneBull3 %>% select(2, 12)
gravestoneBull3CustomerStaples <- gravestoneBull3 %>% select(3, 12)
gravestoneBull3Energy <- gravestoneBull3 %>% select(4, 12)
gravestoneBull3Finance <- gravestoneBull3 %>% select(5, 12)
gravestoneBull3Healthcare <- gravestoneBull3 %>% select(6, 12)
gravestoneBull3Industrial <- gravestoneBull3 %>% select(7, 12)
gravestoneBull3Materials <- gravestoneBull3 %>% select(8, 12)
gravestoneBull3IT <- gravestoneBull3 %>% select(9, 12)
gravestoneBull3RealEstate <- gravestoneBull3 %>% select(10, 12)
gravestoneBull3Utilities <- gravestoneBull3 %>% select(11, 12)

gravestoneBull5 <- head(gravestoneBull5, - 2)
gravestoneBull5Communication <- gravestoneBull5 %>% select(1, 12)
gravestoneBull5CustomerDiscretionary <- gravestoneBull5 %>% select(2, 12)
gravestoneBull5CustomerStaples <- gravestoneBull5 %>% select(3, 12)
gravestoneBull5Energy <- gravestoneBull5 %>% select(4, 12)
gravestoneBull5Finance <- gravestoneBull5 %>% select(5, 12)
gravestoneBull5Healthcare <- gravestoneBull5 %>% select(6, 12)
gravestoneBull5Industrial <- gravestoneBull5 %>% select(7, 12)
gravestoneBull5Materials <- gravestoneBull5 %>% select(8, 12)
gravestoneBull5IT <- gravestoneBull5 %>% select(9, 12)
gravestoneBull5RealEstate <- gravestoneBull5 %>% select(10, 12)
gravestoneBull5Utilities <- gravestoneBull5 %>% select(11, 12)

gravestoneBull7 <- head(gravestoneBull7, - 2)
gravestoneBull7Communication <- gravestoneBull7 %>% select(1, 12)
gravestoneBull7CustomerDiscretionary <- gravestoneBull7 %>% select(2, 12)
gravestoneBull7CustomerStaples <- gravestoneBull7 %>% select(3, 12)
gravestoneBull7Energy <- gravestoneBull7 %>% select(4, 12)
gravestoneBull7Finance <- gravestoneBull7 %>% select(5, 12)
gravestoneBull7Healthcare <- gravestoneBull7 %>% select(6, 12)
gravestoneBull7Industrial <- gravestoneBull7 %>% select(7, 12)
gravestoneBull7Materials <- gravestoneBull7 %>% select(8, 12)
gravestoneBull7IT <- gravestoneBull7 %>% select(9, 12)
gravestoneBull7RealEstate <- gravestoneBull7 %>% select(10, 12)
gravestoneBull7Utilities <- gravestoneBull7 %>% select(11, 12)

gravestoneBull10 <- head(gravestoneBull10, - 2)
gravestoneBull10Communication <- gravestoneBull10 %>% select(1, 12)
gravestoneBull10CustomerDiscretionary <- gravestoneBull10 %>% select(2, 12)
gravestoneBull10CustomerStaples <- gravestoneBull10 %>% select(3, 12)
gravestoneBull10Energy <- gravestoneBull10 %>% select(4, 12)
gravestoneBull10Finance <- gravestoneBull10 %>% select(5, 12)
gravestoneBull10Healthcare <- gravestoneBull10 %>% select(6, 12)
gravestoneBull10Industrial <- gravestoneBull10 %>% select(7, 12)
gravestoneBull10Materials <- gravestoneBull10 %>% select(8, 12)
gravestoneBull10IT <- gravestoneBull10 %>% select(9, 12)
gravestoneBull10RealEstate <- gravestoneBull10 %>% select(10, 12)
gravestoneBull10Utilities <- gravestoneBull10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Gravestone-bullish.csv")
print("Chi-Square p-Value Gravestone-bullish 1 Tag")
chisq.test(gravestoneBull1Communication)$p.value
chisq.test(gravestoneBull1CustomerDiscretionary)$p.value
chisq.test(gravestoneBull1CustomerStaples)$p.value
chisq.test(gravestoneBull1Energy)$p.value
chisq.test(gravestoneBull1Finance)$p.value
chisq.test(gravestoneBull1Healthcare)$p.value
chisq.test(gravestoneBull1Industrial)$p.value
chisq.test(gravestoneBull1Materials)$p.value
chisq.test(gravestoneBull1IT)$p.value
chisq.test(gravestoneBull1RealEstate)$p.value
chisq.test(gravestoneBull1Utilities)$p.value

print("Chi-Square p-Value Gravestone-bullish 3 Tage")
chisq.test(gravestoneBull3Communication)$p.value
chisq.test(gravestoneBull3CustomerDiscretionary)$p.value
chisq.test(gravestoneBull3CustomerStaples)$p.value
chisq.test(gravestoneBull3Energy)$p.value
chisq.test(gravestoneBull3Finance)$p.value
chisq.test(gravestoneBull3Healthcare)$p.value
chisq.test(gravestoneBull3Industrial)$p.value
chisq.test(gravestoneBull3Materials)$p.value
chisq.test(gravestoneBull3IT)$p.value
chisq.test(gravestoneBull3RealEstate)$p.value
chisq.test(gravestoneBull3Utilities)$p.value

print("Chi-Square p-Value Gravestone-bullish 5 Tage")
chisq.test(gravestoneBull5Communication)$p.value
chisq.test(gravestoneBull5CustomerDiscretionary)$p.value
chisq.test(gravestoneBull5CustomerStaples)$p.value
chisq.test(gravestoneBull5Energy)$p.value
chisq.test(gravestoneBull5Finance)$p.value
chisq.test(gravestoneBull5Healthcare)$p.value
chisq.test(gravestoneBull5Industrial)$p.value
chisq.test(gravestoneBull5Materials)$p.value
chisq.test(gravestoneBull5IT)$p.value
chisq.test(gravestoneBull5RealEstate)$p.value
chisq.test(gravestoneBull5Utilities)$p.value

print("Chi-Square p-Value Gravestone-bullish 7 Tage")
chisq.test(gravestoneBull7Communication)$p.value
chisq.test(gravestoneBull7CustomerDiscretionary)$p.value
chisq.test(gravestoneBull7CustomerStaples)$p.value
chisq.test(gravestoneBull7Energy)$p.value
chisq.test(gravestoneBull7Finance)$p.value
chisq.test(gravestoneBull7Healthcare)$p.value
chisq.test(gravestoneBull7Industrial)$p.value
chisq.test(gravestoneBull7Materials)$p.value
chisq.test(gravestoneBull7IT)$p.value
chisq.test(gravestoneBull7RealEstate)$p.value
chisq.test(gravestoneBull7Utilities)$p.value

print("Chi-Square p-Value Gravestone-bullish 10 Tage")
chisq.test(gravestoneBull10Communication)$p.value
chisq.test(gravestoneBull10CustomerDiscretionary)$p.value
chisq.test(gravestoneBull10CustomerStaples)$p.value
chisq.test(gravestoneBull10Energy)$p.value
chisq.test(gravestoneBull10Finance)$p.value
chisq.test(gravestoneBull10Healthcare)$p.value
chisq.test(gravestoneBull10Industrial)$p.value
chisq.test(gravestoneBull10Materials)$p.value
chisq.test(gravestoneBull10IT)$p.value
chisq.test(gravestoneBull10RealEstate)$p.value
chisq.test(gravestoneBull10Utilities)$p.value

sink(file = NULL)

