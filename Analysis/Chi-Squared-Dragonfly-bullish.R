library(tidyverse)

# Import data 
dragonflyBull1 <- read.csv('./RowData/dragonfly-bullish-1-PosNeg.csv', row.names = 1)
dragonflyBull3 <- read.csv('./RowData/dragonfly-bullish-3-PosNeg.csv', row.names = 1)
dragonflyBull5 <- read.csv('./RowData/dragonfly-bullish-5-PosNeg.csv', row.names = 1)
dragonflyBull7 <- read.csv('./RowData/dragonfly-bullish-7-PosNeg.csv', row.names = 1)
dragonflyBull10 <- read.csv('./RowData/dragonfly-bullish-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
dragonflyBull1 <- head(dragonflyBull1, - 2)
dragonflyBull1Communication <- dragonflyBull1 %>% select(1, 12)
dragonflyBull1CustomerDiscretionary <- dragonflyBull1 %>% select(2, 12)
dragonflyBull1CustomerStaples <- dragonflyBull1 %>% select(3, 12)
dragonflyBull1Energy <- dragonflyBull1 %>% select(4, 12)
dragonflyBull1Finance <- dragonflyBull1 %>% select(5, 12)
dragonflyBull1Healthcare <- dragonflyBull1 %>% select(6, 12)
dragonflyBull1Industrial <- dragonflyBull1 %>% select(7, 12)
dragonflyBull1Materials <- dragonflyBull1 %>% select(8, 12)
dragonflyBull1IT <- dragonflyBull1 %>% select(9, 12)
dragonflyBull1RealEstate <- dragonflyBull1 %>% select(10, 12)
dragonflyBull1Utilities <- dragonflyBull1 %>% select(11, 12)

dragonflyBull3 <- head(dragonflyBull3, - 2)
dragonflyBull3Communication <- dragonflyBull3 %>% select(1, 12)
dragonflyBull3CustomerDiscretionary <- dragonflyBull3 %>% select(2, 12)
dragonflyBull3CustomerStaples <- dragonflyBull3 %>% select(3, 12)
dragonflyBull3Energy <- dragonflyBull3 %>% select(4, 12)
dragonflyBull3Finance <- dragonflyBull3 %>% select(5, 12)
dragonflyBull3Healthcare <- dragonflyBull3 %>% select(6, 12)
dragonflyBull3Industrial <- dragonflyBull3 %>% select(7, 12)
dragonflyBull3Materials <- dragonflyBull3 %>% select(8, 12)
dragonflyBull3IT <- dragonflyBull3 %>% select(9, 12)
dragonflyBull3RealEstate <- dragonflyBull3 %>% select(10, 12)
dragonflyBull3Utilities <- dragonflyBull3 %>% select(11, 12)

dragonflyBull5 <- head(dragonflyBull5, - 2)
dragonflyBull5Communication <- dragonflyBull5 %>% select(1, 12)
dragonflyBull5CustomerDiscretionary <- dragonflyBull5 %>% select(2, 12)
dragonflyBull5CustomerStaples <- dragonflyBull5 %>% select(3, 12)
dragonflyBull5Energy <- dragonflyBull5 %>% select(4, 12)
dragonflyBull5Finance <- dragonflyBull5 %>% select(5, 12)
dragonflyBull5Healthcare <- dragonflyBull5 %>% select(6, 12)
dragonflyBull5Industrial <- dragonflyBull5 %>% select(7, 12)
dragonflyBull5Materials <- dragonflyBull5 %>% select(8, 12)
dragonflyBull5IT <- dragonflyBull5 %>% select(9, 12)
dragonflyBull5RealEstate <- dragonflyBull5 %>% select(10, 12)
dragonflyBull5Utilities <- dragonflyBull5 %>% select(11, 12)

dragonflyBull7 <- head(dragonflyBull7, - 2)
dragonflyBull7Communication <- dragonflyBull7 %>% select(1, 12)
dragonflyBull7CustomerDiscretionary <- dragonflyBull7 %>% select(2, 12)
dragonflyBull7CustomerStaples <- dragonflyBull7 %>% select(3, 12)
dragonflyBull7Energy <- dragonflyBull7 %>% select(4, 12)
dragonflyBull7Finance <- dragonflyBull7 %>% select(5, 12)
dragonflyBull7Healthcare <- dragonflyBull7 %>% select(6, 12)
dragonflyBull7Industrial <- dragonflyBull7 %>% select(7, 12)
dragonflyBull7Materials <- dragonflyBull7 %>% select(8, 12)
dragonflyBull7IT <- dragonflyBull7 %>% select(9, 12)
dragonflyBull7RealEstate <- dragonflyBull7 %>% select(10, 12)
dragonflyBull7Utilities <- dragonflyBull7 %>% select(11, 12)

dragonflyBull10 <- head(dragonflyBull10, - 2)
dragonflyBull10Communication <- dragonflyBull10 %>% select(1, 12)
dragonflyBull10CustomerDiscretionary <- dragonflyBull10 %>% select(2, 12)
dragonflyBull10CustomerStaples <- dragonflyBull10 %>% select(3, 12)
dragonflyBull10Energy <- dragonflyBull10 %>% select(4, 12)
dragonflyBull10Finance <- dragonflyBull10 %>% select(5, 12)
dragonflyBull10Healthcare <- dragonflyBull10 %>% select(6, 12)
dragonflyBull10Industrial <- dragonflyBull10 %>% select(7, 12)
dragonflyBull10Materials <- dragonflyBull10 %>% select(8, 12)
dragonflyBull10IT <- dragonflyBull10 %>% select(9, 12)
dragonflyBull10RealEstate <- dragonflyBull10 %>% select(10, 12)
dragonflyBull10Utilities <- dragonflyBull10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Dragonfly-bullish.csv")
print("Chi-Square p-Value dragonfly-bullish 1 Tag")
chisq.test(dragonflyBull1Communication)$p.value
chisq.test(dragonflyBull1CustomerDiscretionary)$p.value
chisq.test(dragonflyBull1CustomerStaples)$p.value
chisq.test(dragonflyBull1Energy)$p.value
chisq.test(dragonflyBull1Finance)$p.value
chisq.test(dragonflyBull1Healthcare)$p.value
chisq.test(dragonflyBull1Industrial)$p.value
chisq.test(dragonflyBull1Materials)$p.value
chisq.test(dragonflyBull1IT)$p.value
chisq.test(dragonflyBull1RealEstate)$p.value
chisq.test(dragonflyBull1Utilities)$p.value

print("Chi-Square p-Value dragonfly-bullish 3 Tage")
chisq.test(dragonflyBull3Communication)$p.value
chisq.test(dragonflyBull3CustomerDiscretionary)$p.value
chisq.test(dragonflyBull3CustomerStaples)$p.value
chisq.test(dragonflyBull3Energy)$p.value
chisq.test(dragonflyBull3Finance)$p.value
chisq.test(dragonflyBull3Healthcare)$p.value
chisq.test(dragonflyBull3Industrial)$p.value
chisq.test(dragonflyBull3Materials)$p.value
chisq.test(dragonflyBull3IT)$p.value
chisq.test(dragonflyBull3RealEstate)$p.value
chisq.test(dragonflyBull3Utilities)$p.value

print("Chi-Square p-Value dragonfly-bullish 5 Tage")
chisq.test(dragonflyBull5Communication)$p.value
chisq.test(dragonflyBull5CustomerDiscretionary)$p.value
chisq.test(dragonflyBull5CustomerStaples)$p.value
chisq.test(dragonflyBull5Energy)$p.value
chisq.test(dragonflyBull5Finance)$p.value
chisq.test(dragonflyBull5Healthcare)$p.value
chisq.test(dragonflyBull5Industrial)$p.value
chisq.test(dragonflyBull5Materials)$p.value
chisq.test(dragonflyBull5IT)$p.value
chisq.test(dragonflyBull5RealEstate)$p.value
chisq.test(dragonflyBull5Utilities)$p.value

print("Chi-Square p-Value dragonfly-bullish 7 Tage")
chisq.test(dragonflyBull7Communication)$p.value
chisq.test(dragonflyBull7CustomerDiscretionary)$p.value
chisq.test(dragonflyBull7CustomerStaples)$p.value
chisq.test(dragonflyBull7Energy)$p.value
chisq.test(dragonflyBull7Finance)$p.value
chisq.test(dragonflyBull7Healthcare)$p.value
chisq.test(dragonflyBull7Industrial)$p.value
chisq.test(dragonflyBull7Materials)$p.value
chisq.test(dragonflyBull7IT)$p.value
chisq.test(dragonflyBull7RealEstate)$p.value
chisq.test(dragonflyBull7Utilities)$p.value

print("Chi-Square p-Value dragonfly-bullish 10 Tage")
chisq.test(dragonflyBull10Communication)$p.value
chisq.test(dragonflyBull10CustomerDiscretionary)$p.value
chisq.test(dragonflyBull10CustomerStaples)$p.value
chisq.test(dragonflyBull10Energy)$p.value
chisq.test(dragonflyBull10Finance)$p.value
chisq.test(dragonflyBull10Healthcare)$p.value
chisq.test(dragonflyBull10Industrial)$p.value
chisq.test(dragonflyBull10Materials)$p.value
chisq.test(dragonflyBull10IT)$p.value
chisq.test(dragonflyBull10RealEstate)$p.value
chisq.test(dragonflyBull10Utilities)$p.value

sink(file = NULL)

