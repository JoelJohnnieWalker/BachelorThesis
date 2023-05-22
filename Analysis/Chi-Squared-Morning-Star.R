library(tidyverse)

# Import data 
morningStar1 <- read.csv('./RowData/Morning-Star-1-PosNeg.csv', row.names = 1)
morningStar3 <- read.csv('./RowData/Morning-Star-3-PosNeg.csv', row.names = 1)
morningStar5 <- read.csv('./RowData/Morning-Star-5-PosNeg.csv', row.names = 1)
morningStar7 <- read.csv('./RowData/Morning-Star-7-PosNeg.csv', row.names = 1)
morningStar10 <- read.csv('./RowData/Morning-Star-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
morningStar1 <- head(morningStar1, - 2)
morningStar1Communication <- morningStar1 %>% select(1, 12)
morningStar1CustomerDiscretionary <- morningStar1 %>% select(2, 12)
morningStar1CustomerStaples <- morningStar1 %>% select(3, 12)
morningStar1Energy <- morningStar1 %>% select(4, 12)
morningStar1Finance <- morningStar1 %>% select(5, 12)
morningStar1Healthcare <- morningStar1 %>% select(6, 12)
morningStar1Industrial <- morningStar1 %>% select(7, 12)
morningStar1Materials <- morningStar1 %>% select(8, 12)
morningStar1IT <- morningStar1 %>% select(9, 12)
morningStar1RealEstate <- morningStar1 %>% select(10, 12)
morningStar1Utilities <- morningStar1 %>% select(11, 12)

morningStar3 <- head(morningStar3, - 2)
morningStar3Communication <- morningStar3 %>% select(1, 12)
morningStar3CustomerDiscretionary <- morningStar3 %>% select(2, 12)
morningStar3CustomerStaples <- morningStar3 %>% select(3, 12)
morningStar3Energy <- morningStar3 %>% select(4, 12)
morningStar3Finance <- morningStar3 %>% select(5, 12)
morningStar3Healthcare <- morningStar3 %>% select(6, 12)
morningStar3Industrial <- morningStar3 %>% select(7, 12)
morningStar3Materials <- morningStar3 %>% select(8, 12)
morningStar3IT <- morningStar3 %>% select(9, 12)
morningStar3RealEstate <- morningStar3 %>% select(10, 12)
morningStar3Utilities <- morningStar3 %>% select(11, 12)

morningStar5 <- head(morningStar5, - 2)
morningStar5Communication <- morningStar5 %>% select(1, 12)
morningStar5CustomerDiscretionary <- morningStar5 %>% select(2, 12)
morningStar5CustomerStaples <- morningStar5 %>% select(3, 12)
morningStar5Energy <- morningStar5 %>% select(4, 12)
morningStar5Finance <- morningStar5 %>% select(5, 12)
morningStar5Healthcare <- morningStar5 %>% select(6, 12)
morningStar5Industrial <- morningStar5 %>% select(7, 12)
morningStar5Materials <- morningStar5 %>% select(8, 12)
morningStar5IT <- morningStar5 %>% select(9, 12)
morningStar5RealEstate <- morningStar5 %>% select(10, 12)
morningStar5Utilities <- morningStar5 %>% select(11, 12)

morningStar7 <- head(morningStar7, - 2)
morningStar7Communication <- morningStar7 %>% select(1, 12)
morningStar7CustomerDiscretionary <- morningStar7 %>% select(2, 12)
morningStar7CustomerStaples <- morningStar7 %>% select(3, 12)
morningStar7Energy <- morningStar7 %>% select(4, 12)
morningStar7Finance <- morningStar7 %>% select(5, 12)
morningStar7Healthcare <- morningStar7 %>% select(6, 12)
morningStar7Industrial <- morningStar7 %>% select(7, 12)
morningStar7Materials <- morningStar7 %>% select(8, 12)
morningStar7IT <- morningStar7 %>% select(9, 12)
morningStar7RealEstate <- morningStar7 %>% select(10, 12)
morningStar7Utilities <- morningStar7 %>% select(11, 12)

morningStar10 <- head(morningStar10, - 2)
morningStar10Communication <- morningStar10 %>% select(1, 12)
morningStar10CustomerDiscretionary <- morningStar10 %>% select(2, 12)
morningStar10CustomerStaples <- morningStar10 %>% select(3, 12)
morningStar10Energy <- morningStar10 %>% select(4, 12)
morningStar10Finance <- morningStar10 %>% select(5, 12)
morningStar10Healthcare <- morningStar10 %>% select(6, 12)
morningStar10Industrial <- morningStar10 %>% select(7, 12)
morningStar10Materials <- morningStar10 %>% select(8, 12)
morningStar10IT <- morningStar10 %>% select(9, 12)
morningStar10RealEstate <- morningStar10 %>% select(10, 12)
morningStar10Utilities <- morningStar10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Morning-Star.csv")
print("Chi-Square p-Value Morning-Star 1 Tag")
chisq.test(morningStar1Communication)$p.value
chisq.test(morningStar1CustomerDiscretionary)$p.value
chisq.test(morningStar1CustomerStaples)$p.value
chisq.test(morningStar1Energy)$p.value
chisq.test(morningStar1Finance)$p.value
chisq.test(morningStar1Healthcare)$p.value
chisq.test(morningStar1Industrial)$p.value
chisq.test(morningStar1Materials)$p.value
chisq.test(morningStar1IT)$p.value
chisq.test(morningStar1RealEstate)$p.value
chisq.test(morningStar1Utilities)$p.value

print("Chi-Square p-Value atching-Low 3 Tage")
chisq.test(morningStar3Communication)$p.value
chisq.test(morningStar3CustomerDiscretionary)$p.value
chisq.test(morningStar3CustomerStaples)$p.value
chisq.test(morningStar3Energy)$p.value
chisq.test(morningStar3Finance)$p.value
chisq.test(morningStar3Healthcare)$p.value
chisq.test(morningStar3Industrial)$p.value
chisq.test(morningStar3Materials)$p.value
chisq.test(morningStar3IT)$p.value
chisq.test(morningStar3RealEstate)$p.value
chisq.test(morningStar3Utilities)$p.value

print("Chi-Square p-Value Morning-Star 5 Tage")
chisq.test(morningStar5Communication)$p.value
chisq.test(morningStar5CustomerDiscretionary)$p.value
chisq.test(morningStar5CustomerStaples)$p.value
chisq.test(morningStar5Energy)$p.value
chisq.test(morningStar5Finance)$p.value
chisq.test(morningStar5Healthcare)$p.value
chisq.test(morningStar5Industrial)$p.value
chisq.test(morningStar5Materials)$p.value
chisq.test(morningStar5IT)$p.value
chisq.test(morningStar5RealEstate)$p.value
chisq.test(morningStar5Utilities)$p.value

print("Chi-Square p-Value Morning-Star 7 Tage")
chisq.test(morningStar7Communication)$p.value
chisq.test(morningStar7CustomerDiscretionary)$p.value
chisq.test(morningStar7CustomerStaples)$p.value
chisq.test(morningStar7Energy)$p.value
chisq.test(morningStar7Finance)$p.value
chisq.test(morningStar7Healthcare)$p.value
chisq.test(morningStar7Industrial)$p.value
chisq.test(morningStar7Materials)$p.value
chisq.test(morningStar7IT)$p.value
chisq.test(morningStar7RealEstate)$p.value
chisq.test(morningStar7Utilities)$p.value

print("Chi-Square p-Value Morning-Star 10 Tage")
chisq.test(morningStar10Communication)$p.value
chisq.test(morningStar10CustomerDiscretionary)$p.value
chisq.test(morningStar10CustomerStaples)$p.value
chisq.test(morningStar10Energy)$p.value
chisq.test(morningStar10Finance)$p.value
chisq.test(morningStar10Healthcare)$p.value
chisq.test(morningStar10Industrial)$p.value
chisq.test(morningStar10Materials)$p.value
chisq.test(morningStar10IT)$p.value
chisq.test(morningStar10RealEstate)$p.value
chisq.test(morningStar10Utilities)$p.value

sink(file = NULL)

