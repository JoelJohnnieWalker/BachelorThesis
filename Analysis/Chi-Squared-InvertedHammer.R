library(tidyverse)

# Import data 
invertedHammer1 <- read.csv('./RowData/invertedHammer-1-PosNeg.csv', row.names = 1)
invertedHammer3 <- read.csv('./RowData/invertedHammer-3-PosNeg.csv', row.names = 1)
invertedHammer5 <- read.csv('./RowData/invertedHammer-5-PosNeg.csv', row.names = 1)
invertedHammer7 <- read.csv('./RowData/invertedHammer-7-PosNeg.csv', row.names = 1)
invertedHammer10 <- read.csv('./RowData/invertedHammer-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
invertedHammer1 <- head(invertedHammer1, - 2)
invertedHammer1Communication <- invertedHammer1 %>% select(1, 12)
invertedHammer1CustomerDiscretionary <- invertedHammer1 %>% select(2, 12)
invertedHammer1CustomerStaples <- invertedHammer1 %>% select(3, 12)
invertedHammer1Energy <- invertedHammer1 %>% select(4, 12)
invertedHammer1Finance <- invertedHammer1 %>% select(5, 12)
invertedHammer1Healthcare <- invertedHammer1 %>% select(6, 12)
invertedHammer1Industrial <- invertedHammer1 %>% select(7, 12)
invertedHammer1Materials <- invertedHammer1 %>% select(8, 12)
invertedHammer1IT <- invertedHammer1 %>% select(9, 12)
invertedHammer1RealEstate <- invertedHammer1 %>% select(10, 12)
invertedHammer1Utilities <- invertedHammer1 %>% select(11, 12)

invertedHammer3 <- head(invertedHammer3, - 2)
invertedHammer3Communication <- invertedHammer3 %>% select(1, 12)
invertedHammer3CustomerDiscretionary <- invertedHammer3 %>% select(2, 12)
invertedHammer3CustomerStaples <- invertedHammer3 %>% select(3, 12)
invertedHammer3Energy <- invertedHammer3 %>% select(4, 12)
invertedHammer3Finance <- invertedHammer3 %>% select(5, 12)
invertedHammer3Healthcare <- invertedHammer3 %>% select(6, 12)
invertedHammer3Industrial <- invertedHammer3 %>% select(7, 12)
invertedHammer3Materials <- invertedHammer3 %>% select(8, 12)
invertedHammer3IT <- invertedHammer3 %>% select(9, 12)
invertedHammer3RealEstate <- invertedHammer3 %>% select(10, 12)
invertedHammer3Utilities <- invertedHammer3 %>% select(11, 12)

invertedHammer5 <- head(invertedHammer5, - 2)
invertedHammer5Communication <- invertedHammer5 %>% select(1, 12)
invertedHammer5CustomerDiscretionary <- invertedHammer5 %>% select(2, 12)
invertedHammer5CustomerStaples <- invertedHammer5 %>% select(3, 12)
invertedHammer5Energy <- invertedHammer5 %>% select(4, 12)
invertedHammer5Finance <- invertedHammer5 %>% select(5, 12)
invertedHammer5Healthcare <- invertedHammer5 %>% select(6, 12)
invertedHammer5Industrial <- invertedHammer5 %>% select(7, 12)
invertedHammer5Materials <- invertedHammer5 %>% select(8, 12)
invertedHammer5IT <- invertedHammer5 %>% select(9, 12)
invertedHammer5RealEstate <- invertedHammer5 %>% select(10, 12)
invertedHammer5Utilities <- invertedHammer5 %>% select(11, 12)

invertedHammer7 <- head(invertedHammer7, - 2)
invertedHammer7Communication <- invertedHammer7 %>% select(1, 12)
invertedHammer7CustomerDiscretionary <- invertedHammer7 %>% select(2, 12)
invertedHammer7CustomerStaples <- invertedHammer7 %>% select(3, 12)
invertedHammer7Energy <- invertedHammer7 %>% select(4, 12)
invertedHammer7Finance <- invertedHammer7 %>% select(5, 12)
invertedHammer7Healthcare <- invertedHammer7 %>% select(6, 12)
invertedHammer7Industrial <- invertedHammer7 %>% select(7, 12)
invertedHammer7Materials <- invertedHammer7 %>% select(8, 12)
invertedHammer7IT <- invertedHammer7 %>% select(9, 12)
invertedHammer7RealEstate <- invertedHammer7 %>% select(10, 12)
invertedHammer7Utilities <- invertedHammer7 %>% select(11, 12)

invertedHammer10 <- head(invertedHammer10, - 2)
invertedHammer10Communication <- invertedHammer10 %>% select(1, 12)
invertedHammer10CustomerDiscretionary <- invertedHammer10 %>% select(2, 12)
invertedHammer10CustomerStaples <- invertedHammer10 %>% select(3, 12)
invertedHammer10Energy <- invertedHammer10 %>% select(4, 12)
invertedHammer10Finance <- invertedHammer10 %>% select(5, 12)
invertedHammer10Healthcare <- invertedHammer10 %>% select(6, 12)
invertedHammer10Industrial <- invertedHammer10 %>% select(7, 12)
invertedHammer10Materials <- invertedHammer10 %>% select(8, 12)
invertedHammer10IT <- invertedHammer10 %>% select(9, 12)
invertedHammer10RealEstate <- invertedHammer10 %>% select(10, 12)
invertedHammer10Utilities <- invertedHammer10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared InvertedHammer.csv")
print("Chi-Square p-Value invertedHammer 1 Tag")
chisq.test(invertedHammer1Communication)$p.value
chisq.test(invertedHammer1CustomerDiscretionary)$p.value
chisq.test(invertedHammer1CustomerStaples)$p.value
chisq.test(invertedHammer1Energy)$p.value
chisq.test(invertedHammer1Finance)$p.value
chisq.test(invertedHammer1Healthcare)$p.value
chisq.test(invertedHammer1Industrial)$p.value
chisq.test(invertedHammer1Materials)$p.value
chisq.test(invertedHammer1IT)$p.value
chisq.test(invertedHammer1RealEstate)$p.value
chisq.test(invertedHammer1Utilities)$p.value

print("Chi-Square p-Value invertedHammer 3 Tage")
chisq.test(invertedHammer3Communication)$p.value
chisq.test(invertedHammer3CustomerDiscretionary)$p.value
chisq.test(invertedHammer3CustomerStaples)$p.value
chisq.test(invertedHammer3Energy)$p.value
chisq.test(invertedHammer3Finance)$p.value
chisq.test(invertedHammer3Healthcare)$p.value
chisq.test(invertedHammer3Industrial)$p.value
chisq.test(invertedHammer3Materials)$p.value
chisq.test(invertedHammer3IT)$p.value
chisq.test(invertedHammer3RealEstate)$p.value
chisq.test(invertedHammer3Utilities)$p.value

print("Chi-Square p-Value invertedHammer 5 Tage")
chisq.test(invertedHammer5Communication)$p.value
chisq.test(invertedHammer5CustomerDiscretionary)$p.value
chisq.test(invertedHammer5CustomerStaples)$p.value
chisq.test(invertedHammer5Energy)$p.value
chisq.test(invertedHammer5Finance)$p.value
chisq.test(invertedHammer5Healthcare)$p.value
chisq.test(invertedHammer5Industrial)$p.value
chisq.test(invertedHammer5Materials)$p.value
chisq.test(invertedHammer5IT)$p.value
chisq.test(invertedHammer5RealEstate)$p.value
chisq.test(invertedHammer5Utilities)$p.value

print("Chi-Square p-Value invertedHammer 7 Tage")
chisq.test(invertedHammer7Communication)$p.value
chisq.test(invertedHammer7CustomerDiscretionary)$p.value
chisq.test(invertedHammer7CustomerStaples)$p.value
chisq.test(invertedHammer7Energy)$p.value
chisq.test(invertedHammer7Finance)$p.value
chisq.test(invertedHammer7Healthcare)$p.value
chisq.test(invertedHammer7Industrial)$p.value
chisq.test(invertedHammer7Materials)$p.value
chisq.test(invertedHammer7IT)$p.value
chisq.test(invertedHammer7RealEstate)$p.value
chisq.test(invertedHammer7Utilities)$p.value

print("Chi-Square p-Value invertedHammer 10 Tage")
chisq.test(invertedHammer10Communication)$p.value
chisq.test(invertedHammer10CustomerDiscretionary)$p.value
chisq.test(invertedHammer10CustomerStaples)$p.value
chisq.test(invertedHammer10Energy)$p.value
chisq.test(invertedHammer10Finance)$p.value
chisq.test(invertedHammer10Healthcare)$p.value
chisq.test(invertedHammer10Industrial)$p.value
chisq.test(invertedHammer10Materials)$p.value
chisq.test(invertedHammer10IT)$p.value
chisq.test(invertedHammer10RealEstate)$p.value
chisq.test(invertedHammer10Utilities)$p.value

sink(file = NULL)

