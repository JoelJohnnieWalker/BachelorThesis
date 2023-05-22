library(tidyverse)

# Import data 
stickSandwich1 <- read.csv('./RowData/Stick-Sandwich-1-PosNeg.csv', row.names = 1)
stickSandwich3 <- read.csv('./RowData/Stick-Sandwich-3-PosNeg.csv', row.names = 1)
stickSandwich5 <- read.csv('./RowData/Stick-Sandwich-5-PosNeg.csv', row.names = 1)
stickSandwich7 <- read.csv('./RowData/Stick-Sandwich-7-PosNeg.csv', row.names = 1)
stickSandwich10 <- read.csv('./RowData/Stick-Sandwich-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
stickSandwich1 <- head(stickSandwich1, - 2)
stickSandwich1Communication <- stickSandwich1 %>% select(1, 12)
stickSandwich1CustomerDiscretionary <- stickSandwich1 %>% select(2, 12)
stickSandwich1CustomerStaples <- stickSandwich1 %>% select(3, 12)
stickSandwich1Energy <- stickSandwich1 %>% select(4, 12)
stickSandwich1Finance <- stickSandwich1 %>% select(5, 12)
stickSandwich1Healthcare <- stickSandwich1 %>% select(6, 12)
stickSandwich1Industrial <- stickSandwich1 %>% select(7, 12)
stickSandwich1Materials <- stickSandwich1 %>% select(8, 12)
stickSandwich1IT <- stickSandwich1 %>% select(9, 12)
stickSandwich1RealEstate <- stickSandwich1 %>% select(10, 12)
stickSandwich1Utilities <- stickSandwich1 %>% select(11, 12)

stickSandwich3 <- head(stickSandwich3, - 2)
stickSandwich3Communication <- stickSandwich3 %>% select(1, 12)
stickSandwich3CustomerDiscretionary <- stickSandwich3 %>% select(2, 12)
stickSandwich3CustomerStaples <- stickSandwich3 %>% select(3, 12)
stickSandwich3Energy <- stickSandwich3 %>% select(4, 12)
stickSandwich3Finance <- stickSandwich3 %>% select(5, 12)
stickSandwich3Healthcare <- stickSandwich3 %>% select(6, 12)
stickSandwich3Industrial <- stickSandwich3 %>% select(7, 12)
stickSandwich3Materials <- stickSandwich3 %>% select(8, 12)
stickSandwich3IT <- stickSandwich3 %>% select(9, 12)
stickSandwich3RealEstate <- stickSandwich3 %>% select(10, 12)
stickSandwich3Utilities <- stickSandwich3 %>% select(11, 12)

stickSandwich5 <- head(stickSandwich5, - 2)
stickSandwich5Communication <- stickSandwich5 %>% select(1, 12)
stickSandwich5CustomerDiscretionary <- stickSandwich5 %>% select(2, 12)
stickSandwich5CustomerStaples <- stickSandwich5 %>% select(3, 12)
stickSandwich5Energy <- stickSandwich5 %>% select(4, 12)
stickSandwich5Finance <- stickSandwich5 %>% select(5, 12)
stickSandwich5Healthcare <- stickSandwich5 %>% select(6, 12)
stickSandwich5Industrial <- stickSandwich5 %>% select(7, 12)
stickSandwich5Materials <- stickSandwich5 %>% select(8, 12)
stickSandwich5IT <- stickSandwich5 %>% select(9, 12)
stickSandwich5RealEstate <- stickSandwich5 %>% select(10, 12)
stickSandwich5Utilities <- stickSandwich5 %>% select(11, 12)

stickSandwich7 <- head(stickSandwich7, - 2)
stickSandwich7Communication <- stickSandwich7 %>% select(1, 12)
stickSandwich7CustomerDiscretionary <- stickSandwich7 %>% select(2, 12)
stickSandwich7CustomerStaples <- stickSandwich7 %>% select(3, 12)
stickSandwich7Energy <- stickSandwich7 %>% select(4, 12)
stickSandwich7Finance <- stickSandwich7 %>% select(5, 12)
stickSandwich7Healthcare <- stickSandwich7 %>% select(6, 12)
stickSandwich7Industrial <- stickSandwich7 %>% select(7, 12)
stickSandwich7Materials <- stickSandwich7 %>% select(8, 12)
stickSandwich7IT <- stickSandwich7 %>% select(9, 12)
stickSandwich7RealEstate <- stickSandwich7 %>% select(10, 12)
stickSandwich7Utilities <- stickSandwich7 %>% select(11, 12)

stickSandwich10 <- head(stickSandwich10, - 2)
stickSandwich10Communication <- stickSandwich10 %>% select(1, 12)
stickSandwich10CustomerDiscretionary <- stickSandwich10 %>% select(2, 12)
stickSandwich10CustomerStaples <- stickSandwich10 %>% select(3, 12)
stickSandwich10Energy <- stickSandwich10 %>% select(4, 12)
stickSandwich10Finance <- stickSandwich10 %>% select(5, 12)
stickSandwich10Healthcare <- stickSandwich10 %>% select(6, 12)
stickSandwich10Industrial <- stickSandwich10 %>% select(7, 12)
stickSandwich10Materials <- stickSandwich10 %>% select(8, 12)
stickSandwich10IT <- stickSandwich10 %>% select(9, 12)
stickSandwich10RealEstate <- stickSandwich10 %>% select(10, 12)
stickSandwich10Utilities <- stickSandwich10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Stick-Sandwich.csv")
print("Chi-Square p-Value Stick-Sandwich 1 Tag")
chisq.test(stickSandwich1Communication)$p.value
chisq.test(stickSandwich1CustomerDiscretionary)$p.value
chisq.test(stickSandwich1CustomerStaples)$p.value
chisq.test(stickSandwich1Energy)$p.value
chisq.test(stickSandwich1Finance)$p.value
chisq.test(stickSandwich1Healthcare)$p.value
chisq.test(stickSandwich1Industrial)$p.value
chisq.test(stickSandwich1Materials)$p.value
chisq.test(stickSandwich1IT)$p.value
chisq.test(stickSandwich1RealEstate)$p.value
chisq.test(stickSandwich1Utilities)$p.value

print("Chi-Square p-Value Stick-Sandwich 3 Tage")
chisq.test(stickSandwich3Communication)$p.value
chisq.test(stickSandwich3CustomerDiscretionary)$p.value
chisq.test(stickSandwich3CustomerStaples)$p.value
chisq.test(stickSandwich3Energy)$p.value
chisq.test(stickSandwich3Finance)$p.value
chisq.test(stickSandwich3Healthcare)$p.value
chisq.test(stickSandwich3Industrial)$p.value
chisq.test(stickSandwich3Materials)$p.value
chisq.test(stickSandwich3IT)$p.value
chisq.test(stickSandwich3RealEstate)$p.value
chisq.test(stickSandwich3Utilities)$p.value

print("Chi-Square p-Value Stick-Sandwich 5 Tage")
chisq.test(stickSandwich5Communication)$p.value
chisq.test(stickSandwich5CustomerDiscretionary)$p.value
chisq.test(stickSandwich5CustomerStaples)$p.value
chisq.test(stickSandwich5Energy)$p.value
chisq.test(stickSandwich5Finance)$p.value
chisq.test(stickSandwich5Healthcare)$p.value
chisq.test(stickSandwich5Industrial)$p.value
chisq.test(stickSandwich5Materials)$p.value
chisq.test(stickSandwich5IT)$p.value
chisq.test(stickSandwich5RealEstate)$p.value
chisq.test(stickSandwich5Utilities)$p.value

print("Chi-Square p-Value Stick-Sandwich 7 Tage")
chisq.test(stickSandwich7Communication)$p.value
chisq.test(stickSandwich7CustomerDiscretionary)$p.value
chisq.test(stickSandwich7CustomerStaples)$p.value
chisq.test(stickSandwich7Energy)$p.value
chisq.test(stickSandwich7Finance)$p.value
chisq.test(stickSandwich7Healthcare)$p.value
chisq.test(stickSandwich7Industrial)$p.value
chisq.test(stickSandwich7Materials)$p.value
chisq.test(stickSandwich7IT)$p.value
chisq.test(stickSandwich7RealEstate)$p.value
chisq.test(stickSandwich7Utilities)$p.value

print("Chi-Square p-Value Stick-Sandwich 10 Tage")
chisq.test(stickSandwich10Communication)$p.value
chisq.test(stickSandwich10CustomerDiscretionary)$p.value
chisq.test(stickSandwich10CustomerStaples)$p.value
chisq.test(stickSandwich10Energy)$p.value
chisq.test(stickSandwich10Finance)$p.value
chisq.test(stickSandwich10Healthcare)$p.value
chisq.test(stickSandwich10Industrial)$p.value
chisq.test(stickSandwich10Materials)$p.value
chisq.test(stickSandwich10IT)$p.value
chisq.test(stickSandwich10RealEstate)$p.value
chisq.test(stickSandwich10Utilities)$p.value

sink(file = NULL)

