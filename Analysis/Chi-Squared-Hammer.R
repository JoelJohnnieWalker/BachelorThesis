library(tidyverse)

# Import data 
Hammer1 <- read.csv('./RowData/hammer-1-PosNeg.csv', row.names = 1)
Hammer3 <- read.csv('./RowData/hammer-3-PosNeg.csv', row.names = 1)
Hammer5 <- read.csv('./RowData/hammer-5-PosNeg.csv', row.names = 1)
Hammer7 <- read.csv('./RowData/hammer-7-PosNeg.csv', row.names = 1)
Hammer10 <- read.csv('./RowData/hammer-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
Hammer1 <- head(Hammer1, - 2)
Hammer1Communication <- Hammer1 %>% select(1, 12)
Hammer1CustomerDiscretionary <- Hammer1 %>% select(2, 12)
Hammer1CustomerStaples <- Hammer1 %>% select(3, 12)
Hammer1Energy <- Hammer1 %>% select(4, 12)
Hammer1Finance <- Hammer1 %>% select(5, 12)
Hammer1Healthcare <- Hammer1 %>% select(6, 12)
Hammer1Industrial <- Hammer1 %>% select(7, 12)
Hammer1Materials <- Hammer1 %>% select(8, 12)
Hammer1IT <- Hammer1 %>% select(9, 12)
Hammer1RealEstate <- Hammer1 %>% select(10, 12)
Hammer1Utilities <- Hammer1 %>% select(11, 12)

Hammer3 <- head(Hammer3, - 2)
Hammer3Communication <- Hammer3 %>% select(1, 12)
Hammer3CustomerDiscretionary <- Hammer3 %>% select(2, 12)
Hammer3CustomerStaples <- Hammer3 %>% select(3, 12)
Hammer3Energy <- Hammer3 %>% select(4, 12)
Hammer3Finance <- Hammer3 %>% select(5, 12)
Hammer3Healthcare <- Hammer3 %>% select(6, 12)
Hammer3Industrial <- Hammer3 %>% select(7, 12)
Hammer3Materials <- Hammer3 %>% select(8, 12)
Hammer3IT <- Hammer3 %>% select(9, 12)
Hammer3RealEstate <- Hammer3 %>% select(10, 12)
Hammer3Utilities <- Hammer3 %>% select(11, 12)

Hammer5 <- head(Hammer5, - 2)
Hammer5Communication <- Hammer5 %>% select(1, 12)
Hammer5CustomerDiscretionary <- Hammer5 %>% select(2, 12)
Hammer5CustomerStaples <- Hammer5 %>% select(3, 12)
Hammer5Energy <- Hammer5 %>% select(4, 12)
Hammer5Finance <- Hammer5 %>% select(5, 12)
Hammer5Healthcare <- Hammer5 %>% select(6, 12)
Hammer5Industrial <- Hammer5 %>% select(7, 12)
Hammer5Materials <- Hammer5 %>% select(8, 12)
Hammer5IT <- Hammer5 %>% select(9, 12)
Hammer5RealEstate <- Hammer5 %>% select(10, 12)
Hammer5Utilities <- Hammer5 %>% select(11, 12)

Hammer7 <- head(Hammer7, - 2)
Hammer7Communication <- Hammer7 %>% select(1, 12)
Hammer7CustomerDiscretionary <- Hammer7 %>% select(2, 12)
Hammer7CustomerStaples <- Hammer7 %>% select(3, 12)
Hammer7Energy <- Hammer7 %>% select(4, 12)
Hammer7Finance <- Hammer7 %>% select(5, 12)
Hammer7Healthcare <- Hammer7 %>% select(6, 12)
Hammer7Industrial <- Hammer7 %>% select(7, 12)
Hammer7Materials <- Hammer7 %>% select(8, 12)
Hammer7IT <- Hammer7 %>% select(9, 12)
Hammer7RealEstate <- Hammer7 %>% select(10, 12)
Hammer7Utilities <- Hammer7 %>% select(11, 12)

Hammer10 <- head(Hammer10, - 2)
Hammer10Communication <- Hammer10 %>% select(1, 12)
Hammer10CustomerDiscretionary <- Hammer10 %>% select(2, 12)
Hammer10CustomerStaples <- Hammer10 %>% select(3, 12)
Hammer10Energy <- Hammer10 %>% select(4, 12)
Hammer10Finance <- Hammer10 %>% select(5, 12)
Hammer10Healthcare <- Hammer10 %>% select(6, 12)
Hammer10Industrial <- Hammer10 %>% select(7, 12)
Hammer10Materials <- Hammer10 %>% select(8, 12)
Hammer10IT <- Hammer10 %>% select(9, 12)
Hammer10RealEstate <- Hammer10 %>% select(10, 12)
Hammer10Utilities <- Hammer10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Hammer.csv")
print("Chi-Square p-Value hammer 1 Tag")
chisq.test(Hammer1Communication)$p.value
chisq.test(Hammer1CustomerDiscretionary)$p.value
chisq.test(Hammer1CustomerStaples)$p.value
chisq.test(Hammer1Energy)$p.value
chisq.test(Hammer1Finance)$p.value
chisq.test(Hammer1Healthcare)$p.value
chisq.test(Hammer1Industrial)$p.value
chisq.test(Hammer1Materials)$p.value
chisq.test(Hammer1IT)$p.value
chisq.test(Hammer1RealEstate)$p.value
chisq.test(Hammer1Utilities)$p.value

print("Chi-Square p-Value hammer 3 Tage")
chisq.test(Hammer3Communication)$p.value
chisq.test(Hammer3CustomerDiscretionary)$p.value
chisq.test(Hammer3CustomerStaples)$p.value
chisq.test(Hammer3Energy)$p.value
chisq.test(Hammer3Finance)$p.value
chisq.test(Hammer3Healthcare)$p.value
chisq.test(Hammer3Industrial)$p.value
chisq.test(Hammer3Materials)$p.value
chisq.test(Hammer3IT)$p.value
chisq.test(Hammer3RealEstate)$p.value
chisq.test(Hammer3Utilities)$p.value

print("Chi-Square p-Value hammer 5 Tage")
chisq.test(Hammer5Communication)$p.value
chisq.test(Hammer5CustomerDiscretionary)$p.value
chisq.test(Hammer5CustomerStaples)$p.value
chisq.test(Hammer5Energy)$p.value
chisq.test(Hammer5Finance)$p.value
chisq.test(Hammer5Healthcare)$p.value
chisq.test(Hammer5Industrial)$p.value
chisq.test(Hammer5Materials)$p.value
chisq.test(Hammer5IT)$p.value
chisq.test(Hammer5RealEstate)$p.value
chisq.test(Hammer5Utilities)$p.value

print("Chi-Square p-Value hammer 7 Tage")
chisq.test(Hammer7Communication)$p.value
chisq.test(Hammer7CustomerDiscretionary)$p.value
chisq.test(Hammer7CustomerStaples)$p.value
chisq.test(Hammer7Energy)$p.value
chisq.test(Hammer7Finance)$p.value
chisq.test(Hammer7Healthcare)$p.value
chisq.test(Hammer7Industrial)$p.value
chisq.test(Hammer7Materials)$p.value
chisq.test(Hammer7IT)$p.value
chisq.test(Hammer7RealEstate)$p.value
chisq.test(Hammer7Utilities)$p.value

print("Chi-Square p-Value hammer 10 Tage")
chisq.test(Hammer10Communication)$p.value
chisq.test(Hammer10CustomerDiscretionary)$p.value
chisq.test(Hammer10CustomerStaples)$p.value
chisq.test(Hammer10Energy)$p.value
chisq.test(Hammer10Finance)$p.value
chisq.test(Hammer10Healthcare)$p.value
chisq.test(Hammer10Industrial)$p.value
chisq.test(Hammer10Materials)$p.value
chisq.test(Hammer10IT)$p.value
chisq.test(Hammer10RealEstate)$p.value
chisq.test(Hammer10Utilities)$p.value

sink(file = NULL)

