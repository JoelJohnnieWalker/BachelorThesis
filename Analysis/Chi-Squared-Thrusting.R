library(tidyverse)

# Import data 
thrusting1 <- read.csv('./RowData/thrusting-1-PosNeg.csv', row.names = 1)
thrusting3 <- read.csv('./RowData/thrusting-3-PosNeg.csv', row.names = 1)
thrusting5 <- read.csv('./RowData/thrusting-5-PosNeg.csv', row.names = 1)
thrusting7 <- read.csv('./RowData/thrusting-7-PosNeg.csv', row.names = 1)
thrusting10 <- read.csv('./RowData/thrusting-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
thrusting1 <- head(thrusting1, - 2)
thrusting1Communication <- thrusting1 %>% select(1, 12)
thrusting1CustomerDiscretionary <- thrusting1 %>% select(2, 12)
thrusting1CustomerStaples <- thrusting1 %>% select(3, 12)
thrusting1Energy <- thrusting1 %>% select(4, 12)
thrusting1Finance <- thrusting1 %>% select(5, 12)
thrusting1Healthcare <- thrusting1 %>% select(6, 12)
thrusting1Industrial <- thrusting1 %>% select(7, 12)
thrusting1Materials <- thrusting1 %>% select(8, 12)
thrusting1IT <- thrusting1 %>% select(9, 12)
thrusting1RealEstate <- thrusting1 %>% select(10, 12)
thrusting1Utilities <- thrusting1 %>% select(11, 12)

thrusting3 <- head(thrusting3, - 2)
thrusting3Communication <- thrusting3 %>% select(1, 12)
thrusting3CustomerDiscretionary <- thrusting3 %>% select(2, 12)
thrusting3CustomerStaples <- thrusting3 %>% select(3, 12)
thrusting3Energy <- thrusting3 %>% select(4, 12)
thrusting3Finance <- thrusting3 %>% select(5, 12)
thrusting3Healthcare <- thrusting3 %>% select(6, 12)
thrusting3Industrial <- thrusting3 %>% select(7, 12)
thrusting3Materials <- thrusting3 %>% select(8, 12)
thrusting3IT <- thrusting3 %>% select(9, 12)
thrusting3RealEstate <- thrusting3 %>% select(10, 12)
thrusting3Utilities <- thrusting3 %>% select(11, 12)

thrusting5 <- head(thrusting5, - 2)
thrusting5Communication <- thrusting5 %>% select(1, 12)
thrusting5CustomerDiscretionary <- thrusting5 %>% select(2, 12)
thrusting5CustomerStaples <- thrusting5 %>% select(3, 12)
thrusting5Energy <- thrusting5 %>% select(4, 12)
thrusting5Finance <- thrusting5 %>% select(5, 12)
thrusting5Healthcare <- thrusting5 %>% select(6, 12)
thrusting5Industrial <- thrusting5 %>% select(7, 12)
thrusting5Materials <- thrusting5 %>% select(8, 12)
thrusting5IT <- thrusting5 %>% select(9, 12)
thrusting5RealEstate <- thrusting5 %>% select(10, 12)
thrusting5Utilities <- thrusting5 %>% select(11, 12)

thrusting7 <- head(thrusting7, - 2)
thrusting7Communication <- thrusting7 %>% select(1, 12)
thrusting7CustomerDiscretionary <- thrusting7 %>% select(2, 12)
thrusting7CustomerStaples <- thrusting7 %>% select(3, 12)
thrusting7Energy <- thrusting7 %>% select(4, 12)
thrusting7Finance <- thrusting7 %>% select(5, 12)
thrusting7Healthcare <- thrusting7 %>% select(6, 12)
thrusting7Industrial <- thrusting7 %>% select(7, 12)
thrusting7Materials <- thrusting7 %>% select(8, 12)
thrusting7IT <- thrusting7 %>% select(9, 12)
thrusting7RealEstate <- thrusting7 %>% select(10, 12)
thrusting7Utilities <- thrusting7 %>% select(11, 12)

thrusting10 <- head(thrusting10, - 2)
thrusting10Communication <- thrusting10 %>% select(1, 12)
thrusting10CustomerDiscretionary <- thrusting10 %>% select(2, 12)
thrusting10CustomerStaples <- thrusting10 %>% select(3, 12)
thrusting10Energy <- thrusting10 %>% select(4, 12)
thrusting10Finance <- thrusting10 %>% select(5, 12)
thrusting10Healthcare <- thrusting10 %>% select(6, 12)
thrusting10Industrial <- thrusting10 %>% select(7, 12)
thrusting10Materials <- thrusting10 %>% select(8, 12)
thrusting10IT <- thrusting10 %>% select(9, 12)
thrusting10RealEstate <- thrusting10 %>% select(10, 12)
thrusting10Utilities <- thrusting10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Thrusting.csv")
print("Chi-Square p-Value thrusting 1 Tag")
chisq.test(thrusting1Communication)$p.value
chisq.test(thrusting1CustomerDiscretionary)$p.value
chisq.test(thrusting1CustomerStaples)$p.value
chisq.test(thrusting1Energy)$p.value
chisq.test(thrusting1Finance)$p.value
chisq.test(thrusting1Healthcare)$p.value
chisq.test(thrusting1Industrial)$p.value
chisq.test(thrusting1Materials)$p.value
chisq.test(thrusting1IT)$p.value
chisq.test(thrusting1RealEstate)$p.value
chisq.test(thrusting1Utilities)$p.value

print("Chi-Square p-Value thrusting 3 Tage")
chisq.test(thrusting3Communication)$p.value
chisq.test(thrusting3CustomerDiscretionary)$p.value
chisq.test(thrusting3CustomerStaples)$p.value
chisq.test(thrusting3Energy)$p.value
chisq.test(thrusting3Finance)$p.value
chisq.test(thrusting3Healthcare)$p.value
chisq.test(thrusting3Industrial)$p.value
chisq.test(thrusting3Materials)$p.value
chisq.test(thrusting3IT)$p.value
chisq.test(thrusting3RealEstate)$p.value
chisq.test(thrusting3Utilities)$p.value

print("Chi-Square p-Value thrusting 5 Tage")
chisq.test(thrusting5Communication)$p.value
chisq.test(thrusting5CustomerDiscretionary)$p.value
chisq.test(thrusting5CustomerStaples)$p.value
chisq.test(thrusting5Energy)$p.value
chisq.test(thrusting5Finance)$p.value
chisq.test(thrusting5Healthcare)$p.value
chisq.test(thrusting5Industrial)$p.value
chisq.test(thrusting5Materials)$p.value
chisq.test(thrusting5IT)$p.value
chisq.test(thrusting5RealEstate)$p.value
chisq.test(thrusting5Utilities)$p.value

print("Chi-Square p-Value thrusting 7 Tage")
chisq.test(thrusting7Communication)$p.value
chisq.test(thrusting7CustomerDiscretionary)$p.value
chisq.test(thrusting7CustomerStaples)$p.value
chisq.test(thrusting7Energy)$p.value
chisq.test(thrusting7Finance)$p.value
chisq.test(thrusting7Healthcare)$p.value
chisq.test(thrusting7Industrial)$p.value
chisq.test(thrusting7Materials)$p.value
chisq.test(thrusting7IT)$p.value
chisq.test(thrusting7RealEstate)$p.value
chisq.test(thrusting7Utilities)$p.value

print("Chi-Square p-Value thrusting 10 Tage")
chisq.test(thrusting10Communication)$p.value
chisq.test(thrusting10CustomerDiscretionary)$p.value
chisq.test(thrusting10CustomerStaples)$p.value
chisq.test(thrusting10Energy)$p.value
chisq.test(thrusting10Finance)$p.value
chisq.test(thrusting10Healthcare)$p.value
chisq.test(thrusting10Industrial)$p.value
chisq.test(thrusting10Materials)$p.value
chisq.test(thrusting10IT)$p.value
chisq.test(thrusting10RealEstate)$p.value
chisq.test(thrusting10Utilities)$p.value

sink(file = NULL)

