library(tidyverse)

# Import data 
eveningStar1 <- read.csv('./RowData/eveningStar-1-PosNeg.csv', row.names = 1)
eveningStar3 <- read.csv('./RowData/eveningStar-3-PosNeg.csv', row.names = 1)
eveningStar5 <- read.csv('./RowData/eveningStar-5-PosNeg.csv', row.names = 1)
eveningStar7 <- read.csv('./RowData/eveningStar-7-PosNeg.csv', row.names = 1)
eveningStar10 <- read.csv('./RowData/eveningStar-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
eveningStar1 <- head(eveningStar1, - 2)
eveningStar1Communication <- eveningStar1 %>% select(1, 12)
eveningStar1CustomerDiscretionary <- eveningStar1 %>% select(2, 12)
eveningStar1CustomerStaples <- eveningStar1 %>% select(3, 12)
eveningStar1Energy <- eveningStar1 %>% select(4, 12)
eveningStar1Finance <- eveningStar1 %>% select(5, 12)
eveningStar1Healthcare <- eveningStar1 %>% select(6, 12)
eveningStar1Industrial <- eveningStar1 %>% select(7, 12)
eveningStar1Materials <- eveningStar1 %>% select(8, 12)
eveningStar1IT <- eveningStar1 %>% select(9, 12)
eveningStar1RealEstate <- eveningStar1 %>% select(10, 12)
eveningStar1Utilities <- eveningStar1 %>% select(11, 12)

eveningStar3 <- head(eveningStar3, - 2)
eveningStar3Communication <- eveningStar3 %>% select(1, 12)
eveningStar3CustomerDiscretionary <- eveningStar3 %>% select(2, 12)
eveningStar3CustomerStaples <- eveningStar3 %>% select(3, 12)
eveningStar3Energy <- eveningStar3 %>% select(4, 12)
eveningStar3Finance <- eveningStar3 %>% select(5, 12)
eveningStar3Healthcare <- eveningStar3 %>% select(6, 12)
eveningStar3Industrial <- eveningStar3 %>% select(7, 12)
eveningStar3Materials <- eveningStar3 %>% select(8, 12)
eveningStar3IT <- eveningStar3 %>% select(9, 12)
eveningStar3RealEstate <- eveningStar3 %>% select(10, 12)
eveningStar3Utilities <- eveningStar3 %>% select(11, 12)

eveningStar5 <- head(eveningStar5, - 2)
eveningStar5Communication <- eveningStar5 %>% select(1, 12)
eveningStar5CustomerDiscretionary <- eveningStar5 %>% select(2, 12)
eveningStar5CustomerStaples <- eveningStar5 %>% select(3, 12)
eveningStar5Energy <- eveningStar5 %>% select(4, 12)
eveningStar5Finance <- eveningStar5 %>% select(5, 12)
eveningStar5Healthcare <- eveningStar5 %>% select(6, 12)
eveningStar5Industrial <- eveningStar5 %>% select(7, 12)
eveningStar5Materials <- eveningStar5 %>% select(8, 12)
eveningStar5IT <- eveningStar5 %>% select(9, 12)
eveningStar5RealEstate <- eveningStar5 %>% select(10, 12)
eveningStar5Utilities <- eveningStar5 %>% select(11, 12)

eveningStar7 <- head(eveningStar7, - 2)
eveningStar7Communication <- eveningStar7 %>% select(1, 12)
eveningStar7CustomerDiscretionary <- eveningStar7 %>% select(2, 12)
eveningStar7CustomerStaples <- eveningStar7 %>% select(3, 12)
eveningStar7Energy <- eveningStar7 %>% select(4, 12)
eveningStar7Finance <- eveningStar7 %>% select(5, 12)
eveningStar7Healthcare <- eveningStar7 %>% select(6, 12)
eveningStar7Industrial <- eveningStar7 %>% select(7, 12)
eveningStar7Materials <- eveningStar7 %>% select(8, 12)
eveningStar7IT <- eveningStar7 %>% select(9, 12)
eveningStar7RealEstate <- eveningStar7 %>% select(10, 12)
eveningStar7Utilities <- eveningStar7 %>% select(11, 12)

eveningStar10 <- head(eveningStar10, - 2)
eveningStar10Communication <- eveningStar10 %>% select(1, 12)
eveningStar10CustomerDiscretionary <- eveningStar10 %>% select(2, 12)
eveningStar10CustomerStaples <- eveningStar10 %>% select(3, 12)
eveningStar10Energy <- eveningStar10 %>% select(4, 12)
eveningStar10Finance <- eveningStar10 %>% select(5, 12)
eveningStar10Healthcare <- eveningStar10 %>% select(6, 12)
eveningStar10Industrial <- eveningStar10 %>% select(7, 12)
eveningStar10Materials <- eveningStar10 %>% select(8, 12)
eveningStar10IT <- eveningStar10 %>% select(9, 12)
eveningStar10RealEstate <- eveningStar10 %>% select(10, 12)
eveningStar10Utilities <- eveningStar10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared EveningStar.csv")
print("Chi-Square p-Value eveningStar 1 Tag")
chisq.test(eveningStar1Communication)$p.value
chisq.test(eveningStar1CustomerDiscretionary)$p.value
chisq.test(eveningStar1CustomerStaples)$p.value
chisq.test(eveningStar1Energy)$p.value
chisq.test(eveningStar1Finance)$p.value
chisq.test(eveningStar1Healthcare)$p.value
chisq.test(eveningStar1Industrial)$p.value
chisq.test(eveningStar1Materials)$p.value
chisq.test(eveningStar1IT)$p.value
chisq.test(eveningStar1RealEstate)$p.value
chisq.test(eveningStar1Utilities)$p.value

print("Chi-Square p-Value eveningStar 3 Tage")
chisq.test(eveningStar3Communication)$p.value
chisq.test(eveningStar3CustomerDiscretionary)$p.value
chisq.test(eveningStar3CustomerStaples)$p.value
chisq.test(eveningStar3Energy)$p.value
chisq.test(eveningStar3Finance)$p.value
chisq.test(eveningStar3Healthcare)$p.value
chisq.test(eveningStar3Industrial)$p.value
chisq.test(eveningStar3Materials)$p.value
chisq.test(eveningStar3IT)$p.value
chisq.test(eveningStar3RealEstate)$p.value
chisq.test(eveningStar3Utilities)$p.value

print("Chi-Square p-Value eveningStar 5 Tage")
chisq.test(eveningStar5Communication)$p.value
chisq.test(eveningStar5CustomerDiscretionary)$p.value
chisq.test(eveningStar5CustomerStaples)$p.value
chisq.test(eveningStar5Energy)$p.value
chisq.test(eveningStar5Finance)$p.value
chisq.test(eveningStar5Healthcare)$p.value
chisq.test(eveningStar5Industrial)$p.value
chisq.test(eveningStar5Materials)$p.value
chisq.test(eveningStar5IT)$p.value
chisq.test(eveningStar5RealEstate)$p.value
chisq.test(eveningStar5Utilities)$p.value

print("Chi-Square p-Value eveningStar 7 Tage")
chisq.test(eveningStar7Communication)$p.value
chisq.test(eveningStar7CustomerDiscretionary)$p.value
chisq.test(eveningStar7CustomerStaples)$p.value
chisq.test(eveningStar7Energy)$p.value
chisq.test(eveningStar7Finance)$p.value
chisq.test(eveningStar7Healthcare)$p.value
chisq.test(eveningStar7Industrial)$p.value
chisq.test(eveningStar7Materials)$p.value
chisq.test(eveningStar7IT)$p.value
chisq.test(eveningStar7RealEstate)$p.value
chisq.test(eveningStar7Utilities)$p.value

print("Chi-Square p-Value eveningStar 10 Tage")
chisq.test(eveningStar10Communication)$p.value
chisq.test(eveningStar10CustomerDiscretionary)$p.value
chisq.test(eveningStar10CustomerStaples)$p.value
chisq.test(eveningStar10Energy)$p.value
chisq.test(eveningStar10Finance)$p.value
chisq.test(eveningStar10Healthcare)$p.value
chisq.test(eveningStar10Industrial)$p.value
chisq.test(eveningStar10Materials)$p.value
chisq.test(eveningStar10IT)$p.value
chisq.test(eveningStar10RealEstate)$p.value
chisq.test(eveningStar10Utilities)$p.value

sink(file = NULL)

