library(tidyverse)

# Import data 
matchingLow1 <- read.csv('./RowData/matching-Low-1-PosNeg.csv', row.names = 1)
matchingLow3 <- read.csv('./RowData/matching-Low-3-PosNeg.csv', row.names = 1)
matchingLow5 <- read.csv('./RowData/matching-Low-5-PosNeg.csv', row.names = 1)
matchingLow7 <- read.csv('./RowData/matching-Low-7-PosNeg.csv', row.names = 1)
matchingLow10 <- read.csv('./RowData/matching-Low-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
matchingLow1 <- head(matchingLow1, - 2)
matchingLow1Communication <- matchingLow1 %>% select(1, 12)
matchingLow1CustomerDiscretionary <- matchingLow1 %>% select(2, 12)
matchingLow1CustomerStaples <- matchingLow1 %>% select(3, 12)
matchingLow1Energy <- matchingLow1 %>% select(4, 12)
matchingLow1Finance <- matchingLow1 %>% select(5, 12)
matchingLow1Healthcare <- matchingLow1 %>% select(6, 12)
matchingLow1Industrial <- matchingLow1 %>% select(7, 12)
matchingLow1Materials <- matchingLow1 %>% select(8, 12)
matchingLow1IT <- matchingLow1 %>% select(9, 12)
matchingLow1RealEstate <- matchingLow1 %>% select(10, 12)
matchingLow1Utilities <- matchingLow1 %>% select(11, 12)

matchingLow3 <- head(matchingLow3, - 2)
matchingLow3Communication <- matchingLow3 %>% select(1, 12)
matchingLow3CustomerDiscretionary <- matchingLow3 %>% select(2, 12)
matchingLow3CustomerStaples <- matchingLow3 %>% select(3, 12)
matchingLow3Energy <- matchingLow3 %>% select(4, 12)
matchingLow3Finance <- matchingLow3 %>% select(5, 12)
matchingLow3Healthcare <- matchingLow3 %>% select(6, 12)
matchingLow3Industrial <- matchingLow3 %>% select(7, 12)
matchingLow3Materials <- matchingLow3 %>% select(8, 12)
matchingLow3IT <- matchingLow3 %>% select(9, 12)
matchingLow3RealEstate <- matchingLow3 %>% select(10, 12)
matchingLow3Utilities <- matchingLow3 %>% select(11, 12)

matchingLow5 <- head(matchingLow5, - 2)
matchingLow5Communication <- matchingLow5 %>% select(1, 12)
matchingLow5CustomerDiscretionary <- matchingLow5 %>% select(2, 12)
matchingLow5CustomerStaples <- matchingLow5 %>% select(3, 12)
matchingLow5Energy <- matchingLow5 %>% select(4, 12)
matchingLow5Finance <- matchingLow5 %>% select(5, 12)
matchingLow5Healthcare <- matchingLow5 %>% select(6, 12)
matchingLow5Industrial <- matchingLow5 %>% select(7, 12)
matchingLow5Materials <- matchingLow5 %>% select(8, 12)
matchingLow5IT <- matchingLow5 %>% select(9, 12)
matchingLow5RealEstate <- matchingLow5 %>% select(10, 12)
matchingLow5Utilities <- matchingLow5 %>% select(11, 12)

matchingLow7 <- head(matchingLow7, - 2)
matchingLow7Communication <- matchingLow7 %>% select(1, 12)
matchingLow7CustomerDiscretionary <- matchingLow7 %>% select(2, 12)
matchingLow7CustomerStaples <- matchingLow7 %>% select(3, 12)
matchingLow7Energy <- matchingLow7 %>% select(4, 12)
matchingLow7Finance <- matchingLow7 %>% select(5, 12)
matchingLow7Healthcare <- matchingLow7 %>% select(6, 12)
matchingLow7Industrial <- matchingLow7 %>% select(7, 12)
matchingLow7Materials <- matchingLow7 %>% select(8, 12)
matchingLow7IT <- matchingLow7 %>% select(9, 12)
matchingLow7RealEstate <- matchingLow7 %>% select(10, 12)
matchingLow7Utilities <- matchingLow7 %>% select(11, 12)

matchingLow10 <- head(matchingLow10, - 2)
matchingLow10Communication <- matchingLow10 %>% select(1, 12)
matchingLow10CustomerDiscretionary <- matchingLow10 %>% select(2, 12)
matchingLow10CustomerStaples <- matchingLow10 %>% select(3, 12)
matchingLow10Energy <- matchingLow10 %>% select(4, 12)
matchingLow10Finance <- matchingLow10 %>% select(5, 12)
matchingLow10Healthcare <- matchingLow10 %>% select(6, 12)
matchingLow10Industrial <- matchingLow10 %>% select(7, 12)
matchingLow10Materials <- matchingLow10 %>% select(8, 12)
matchingLow10IT <- matchingLow10 %>% select(9, 12)
matchingLow10RealEstate <- matchingLow10 %>% select(10, 12)
matchingLow10Utilities <- matchingLow10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Matching-Low.csv")
print("Chi-Square p-Value matching-Low 1 Tag")
chisq.test(matchingLow1Communication)$p.value
chisq.test(matchingLow1CustomerDiscretionary)$p.value
chisq.test(matchingLow1CustomerStaples)$p.value
chisq.test(matchingLow1Energy)$p.value
chisq.test(matchingLow1Finance)$p.value
chisq.test(matchingLow1Healthcare)$p.value
chisq.test(matchingLow1Industrial)$p.value
chisq.test(matchingLow1Materials)$p.value
chisq.test(matchingLow1IT)$p.value
chisq.test(matchingLow1RealEstate)$p.value
chisq.test(matchingLow1Utilities)$p.value

print("Chi-Square p-Value atching-Low 3 Tage")
chisq.test(matchingLow3Communication)$p.value
chisq.test(matchingLow3CustomerDiscretionary)$p.value
chisq.test(matchingLow3CustomerStaples)$p.value
chisq.test(matchingLow3Energy)$p.value
chisq.test(matchingLow3Finance)$p.value
chisq.test(matchingLow3Healthcare)$p.value
chisq.test(matchingLow3Industrial)$p.value
chisq.test(matchingLow3Materials)$p.value
chisq.test(matchingLow3IT)$p.value
chisq.test(matchingLow3RealEstate)$p.value
chisq.test(matchingLow3Utilities)$p.value

print("Chi-Square p-Value matching-Low 5 Tage")
chisq.test(matchingLow5Communication)$p.value
chisq.test(matchingLow5CustomerDiscretionary)$p.value
chisq.test(matchingLow5CustomerStaples)$p.value
chisq.test(matchingLow5Energy)$p.value
chisq.test(matchingLow5Finance)$p.value
chisq.test(matchingLow5Healthcare)$p.value
chisq.test(matchingLow5Industrial)$p.value
chisq.test(matchingLow5Materials)$p.value
chisq.test(matchingLow5IT)$p.value
chisq.test(matchingLow5RealEstate)$p.value
chisq.test(matchingLow5Utilities)$p.value

print("Chi-Square p-Value matching-Low 7 Tage")
chisq.test(matchingLow7Communication)$p.value
chisq.test(matchingLow7CustomerDiscretionary)$p.value
chisq.test(matchingLow7CustomerStaples)$p.value
chisq.test(matchingLow7Energy)$p.value
chisq.test(matchingLow7Finance)$p.value
chisq.test(matchingLow7Healthcare)$p.value
chisq.test(matchingLow7Industrial)$p.value
chisq.test(matchingLow7Materials)$p.value
chisq.test(matchingLow7IT)$p.value
chisq.test(matchingLow7RealEstate)$p.value
chisq.test(matchingLow7Utilities)$p.value

print("Chi-Square p-Value matching-Low 10 Tage")
chisq.test(matchingLow10Communication)$p.value
chisq.test(matchingLow10CustomerDiscretionary)$p.value
chisq.test(matchingLow10CustomerStaples)$p.value
chisq.test(matchingLow10Energy)$p.value
chisq.test(matchingLow10Finance)$p.value
chisq.test(matchingLow10Healthcare)$p.value
chisq.test(matchingLow10Industrial)$p.value
chisq.test(matchingLow10Materials)$p.value
chisq.test(matchingLow10IT)$p.value
chisq.test(matchingLow10RealEstate)$p.value
chisq.test(matchingLow10Utilities)$p.value

sink(file = NULL)

