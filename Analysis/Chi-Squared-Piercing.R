library(tidyverse)

# Import data 
piercing1 <- read.csv('./RowData/piercing-1-PosNeg.csv', row.names = 1)
piercing3 <- read.csv('./RowData/piercing-3-PosNeg.csv', row.names = 1)
piercing5 <- read.csv('./RowData/piercing-5-PosNeg.csv', row.names = 1)
piercing7 <- read.csv('./RowData/piercing-7-PosNeg.csv', row.names = 1)
piercing10 <- read.csv('./RowData/piercing-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
piercing1 <- head(piercing1, - 2)
piercing1Communication <- piercing1 %>% select(1, 12)
piercing1CustomerDiscretionary <- piercing1 %>% select(2, 12)
piercing1CustomerStaples <- piercing1 %>% select(3, 12)
piercing1Energy <- piercing1 %>% select(4, 12)
piercing1Finance <- piercing1 %>% select(5, 12)
piercing1Healthcare <- piercing1 %>% select(6, 12)
piercing1Industrial <- piercing1 %>% select(7, 12)
piercing1Materials <- piercing1 %>% select(8, 12)
piercing1IT <- piercing1 %>% select(9, 12)
piercing1RealEstate <- piercing1 %>% select(10, 12)
piercing1Utilities <- piercing1 %>% select(11, 12)

piercing3 <- head(piercing3, - 2)
piercing3Communication <- piercing3 %>% select(1, 12)
piercing3CustomerDiscretionary <- piercing3 %>% select(2, 12)
piercing3CustomerStaples <- piercing3 %>% select(3, 12)
piercing3Energy <- piercing3 %>% select(4, 12)
piercing3Finance <- piercing3 %>% select(5, 12)
piercing3Healthcare <- piercing3 %>% select(6, 12)
piercing3Industrial <- piercing3 %>% select(7, 12)
piercing3Materials <- piercing3 %>% select(8, 12)
piercing3IT <- piercing3 %>% select(9, 12)
piercing3RealEstate <- piercing3 %>% select(10, 12)
piercing3Utilities <- piercing3 %>% select(11, 12)

piercing5 <- head(piercing5, - 2)
piercing5Communication <- piercing5 %>% select(1, 12)
piercing5CustomerDiscretionary <- piercing5 %>% select(2, 12)
piercing5CustomerStaples <- piercing5 %>% select(3, 12)
piercing5Energy <- piercing5 %>% select(4, 12)
piercing5Finance <- piercing5 %>% select(5, 12)
piercing5Healthcare <- piercing5 %>% select(6, 12)
piercing5Industrial <- piercing5 %>% select(7, 12)
piercing5Materials <- piercing5 %>% select(8, 12)
piercing5IT <- piercing5 %>% select(9, 12)
piercing5RealEstate <- piercing5 %>% select(10, 12)
piercing5Utilities <- piercing5 %>% select(11, 12)

piercing7 <- head(piercing7, - 2)
piercing7Communication <- piercing7 %>% select(1, 12)
piercing7CustomerDiscretionary <- piercing7 %>% select(2, 12)
piercing7CustomerStaples <- piercing7 %>% select(3, 12)
piercing7Energy <- piercing7 %>% select(4, 12)
piercing7Finance <- piercing7 %>% select(5, 12)
piercing7Healthcare <- piercing7 %>% select(6, 12)
piercing7Industrial <- piercing7 %>% select(7, 12)
piercing7Materials <- piercing7 %>% select(8, 12)
piercing7IT <- piercing7 %>% select(9, 12)
piercing7RealEstate <- piercing7 %>% select(10, 12)
piercing7Utilities <- piercing7 %>% select(11, 12)

piercing10 <- head(piercing10, - 2)
piercing10Communication <- piercing10 %>% select(1, 12)
piercing10CustomerDiscretionary <- piercing10 %>% select(2, 12)
piercing10CustomerStaples <- piercing10 %>% select(3, 12)
piercing10Energy <- piercing10 %>% select(4, 12)
piercing10Finance <- piercing10 %>% select(5, 12)
piercing10Healthcare <- piercing10 %>% select(6, 12)
piercing10Industrial <- piercing10 %>% select(7, 12)
piercing10Materials <- piercing10 %>% select(8, 12)
piercing10IT <- piercing10 %>% select(9, 12)
piercing10RealEstate <- piercing10 %>% select(10, 12)
piercing10Utilities <- piercing10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Piercing.csv")
print("Chi-Square p-Value piercing 1 Tag")
chisq.test(piercing1Communication)$p.value
chisq.test(piercing1CustomerDiscretionary)$p.value
chisq.test(piercing1CustomerStaples)$p.value
chisq.test(piercing1Energy)$p.value
chisq.test(piercing1Finance)$p.value
chisq.test(piercing1Healthcare)$p.value
chisq.test(piercing1Industrial)$p.value
chisq.test(piercing1Materials)$p.value
chisq.test(piercing1IT)$p.value
chisq.test(piercing1RealEstate)$p.value
chisq.test(piercing1Utilities)$p.value

print("Chi-Square p-Value piercing 3 Tage")
chisq.test(piercing3Communication)$p.value
chisq.test(piercing3CustomerDiscretionary)$p.value
chisq.test(piercing3CustomerStaples)$p.value
chisq.test(piercing3Energy)$p.value
chisq.test(piercing3Finance)$p.value
chisq.test(piercing3Healthcare)$p.value
chisq.test(piercing3Industrial)$p.value
chisq.test(piercing3Materials)$p.value
chisq.test(piercing3IT)$p.value
chisq.test(piercing3RealEstate)$p.value
chisq.test(piercing3Utilities)$p.value

print("Chi-Square p-Value piercing 5 Tage")
chisq.test(piercing5Communication)$p.value
chisq.test(piercing5CustomerDiscretionary)$p.value
chisq.test(piercing5CustomerStaples)$p.value
chisq.test(piercing5Energy)$p.value
chisq.test(piercing5Finance)$p.value
chisq.test(piercing5Healthcare)$p.value
chisq.test(piercing5Industrial)$p.value
chisq.test(piercing5Materials)$p.value
chisq.test(piercing5IT)$p.value
chisq.test(piercing5RealEstate)$p.value
chisq.test(piercing5Utilities)$p.value

print("Chi-Square p-Value piercing 7 Tage")
chisq.test(piercing7Communication)$p.value
chisq.test(piercing7CustomerDiscretionary)$p.value
chisq.test(piercing7CustomerStaples)$p.value
chisq.test(piercing7Energy)$p.value
chisq.test(piercing7Finance)$p.value
chisq.test(piercing7Healthcare)$p.value
chisq.test(piercing7Industrial)$p.value
chisq.test(piercing7Materials)$p.value
chisq.test(piercing7IT)$p.value
chisq.test(piercing7RealEstate)$p.value
chisq.test(piercing7Utilities)$p.value

print("Chi-Square p-Value piercing 10 Tage")
chisq.test(piercing10Communication)$p.value
chisq.test(piercing10CustomerDiscretionary)$p.value
chisq.test(piercing10CustomerStaples)$p.value
chisq.test(piercing10Energy)$p.value
chisq.test(piercing10Finance)$p.value
chisq.test(piercing10Healthcare)$p.value
chisq.test(piercing10Industrial)$p.value
chisq.test(piercing10Materials)$p.value
chisq.test(piercing10IT)$p.value
chisq.test(piercing10RealEstate)$p.value
chisq.test(piercing10Utilities)$p.value

sink(file = NULL)

