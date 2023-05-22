library(tidyverse)

# Import data 
dragonflyBear1 <- read.csv('./RowData/dragonfly-bearish-1-PosNeg.csv', row.names = 1)
dragonflyBear3 <- read.csv('./RowData/dragonfly-bearish-3-PosNeg.csv', row.names = 1)
dragonflyBear5 <- read.csv('./RowData/dragonfly-bearish-5-PosNeg.csv', row.names = 1)
dragonflyBear7 <- read.csv('./RowData/dragonfly-bearish-7-PosNeg.csv', row.names = 1)
dragonflyBear10 <- read.csv('./RowData/dragonfly-bearish-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
dragonflyBear1 <- head(dragonflyBear1, - 2)
dragonflyBear1Communication <- dragonflyBear1 %>% select(1, 12)
dragonflyBear1CustomerDiscretionary <- dragonflyBear1 %>% select(2, 12)
dragonflyBear1CustomerStaples <- dragonflyBear1 %>% select(3, 12)
dragonflyBear1Energy <- dragonflyBear1 %>% select(4, 12)
dragonflyBear1Finance <- dragonflyBear1 %>% select(5, 12)
dragonflyBear1Healthcare <- dragonflyBear1 %>% select(6, 12)
dragonflyBear1Industrial <- dragonflyBear1 %>% select(7, 12)
dragonflyBear1Materials <- dragonflyBear1 %>% select(8, 12)
dragonflyBear1IT <- dragonflyBear1 %>% select(9, 12)
dragonflyBear1RealEstate <- dragonflyBear1 %>% select(10, 12)
dragonflyBear1Utilities <- dragonflyBear1 %>% select(11, 12)

dragonflyBear3 <- head(dragonflyBear3, - 2)
dragonflyBear3Communication <- dragonflyBear3 %>% select(1, 12)
dragonflyBear3CustomerDiscretionary <- dragonflyBear3 %>% select(2, 12)
dragonflyBear3CustomerStaples <- dragonflyBear3 %>% select(3, 12)
dragonflyBear3Energy <- dragonflyBear3 %>% select(4, 12)
dragonflyBear3Finance <- dragonflyBear3 %>% select(5, 12)
dragonflyBear3Healthcare <- dragonflyBear3 %>% select(6, 12)
dragonflyBear3Industrial <- dragonflyBear3 %>% select(7, 12)
dragonflyBear3Materials <- dragonflyBear3 %>% select(8, 12)
dragonflyBear3IT <- dragonflyBear3 %>% select(9, 12)
dragonflyBear3RealEstate <- dragonflyBear3 %>% select(10, 12)
dragonflyBear3Utilities <- dragonflyBear3 %>% select(11, 12)

dragonflyBear5 <- head(dragonflyBear5, - 2)
dragonflyBear5Communication <- dragonflyBear5 %>% select(1, 12)
dragonflyBear5CustomerDiscretionary <- dragonflyBear5 %>% select(2, 12)
dragonflyBear5CustomerStaples <- dragonflyBear5 %>% select(3, 12)
dragonflyBear5Energy <- dragonflyBear5 %>% select(4, 12)
dragonflyBear5Finance <- dragonflyBear5 %>% select(5, 12)
dragonflyBear5Healthcare <- dragonflyBear5 %>% select(6, 12)
dragonflyBear5Industrial <- dragonflyBear5 %>% select(7, 12)
dragonflyBear5Materials <- dragonflyBear5 %>% select(8, 12)
dragonflyBear5IT <- dragonflyBear5 %>% select(9, 12)
dragonflyBear5RealEstate <- dragonflyBear5 %>% select(10, 12)
dragonflyBear5Utilities <- dragonflyBear5 %>% select(11, 12)

dragonflyBear7 <- head(dragonflyBear7, - 2)
dragonflyBear7Communication <- dragonflyBear7 %>% select(1, 12)
dragonflyBear7CustomerDiscretionary <- dragonflyBear7 %>% select(2, 12)
dragonflyBear7CustomerStaples <- dragonflyBear7 %>% select(3, 12)
dragonflyBear7Energy <- dragonflyBear7 %>% select(4, 12)
dragonflyBear7Finance <- dragonflyBear7 %>% select(5, 12)
dragonflyBear7Healthcare <- dragonflyBear7 %>% select(6, 12)
dragonflyBear7Industrial <- dragonflyBear7 %>% select(7, 12)
dragonflyBear7Materials <- dragonflyBear7 %>% select(8, 12)
dragonflyBear7IT <- dragonflyBear7 %>% select(9, 12)
dragonflyBear7RealEstate <- dragonflyBear7 %>% select(10, 12)
dragonflyBear7Utilities <- dragonflyBear7 %>% select(11, 12)

dragonflyBear10 <- head(dragonflyBear10, - 2)
dragonflyBear10Communication <- dragonflyBear10 %>% select(1, 12)
dragonflyBear10CustomerDiscretionary <- dragonflyBear10 %>% select(2, 12)
dragonflyBear10CustomerStaples <- dragonflyBear10 %>% select(3, 12)
dragonflyBear10Energy <- dragonflyBear10 %>% select(4, 12)
dragonflyBear10Finance <- dragonflyBear10 %>% select(5, 12)
dragonflyBear10Healthcare <- dragonflyBear10 %>% select(6, 12)
dragonflyBear10Industrial <- dragonflyBear10 %>% select(7, 12)
dragonflyBear10Materials <- dragonflyBear10 %>% select(8, 12)
dragonflyBear10IT <- dragonflyBear10 %>% select(9, 12)
dragonflyBear10RealEstate <- dragonflyBear10 %>% select(10, 12)
dragonflyBear10Utilities <- dragonflyBear10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Dragonfly-bearish.csv")
print("Chi-Square p-Value dragonfly-bearish 1 Tag")
chisq.test(dragonflyBear1Communication)$p.value
chisq.test(dragonflyBear1CustomerDiscretionary)$p.value
chisq.test(dragonflyBear1CustomerStaples)$p.value
chisq.test(dragonflyBear1Energy)$p.value
chisq.test(dragonflyBear1Finance)$p.value
chisq.test(dragonflyBear1Healthcare)$p.value
chisq.test(dragonflyBear1Industrial)$p.value
chisq.test(dragonflyBear1Materials)$p.value
chisq.test(dragonflyBear1IT)$p.value
chisq.test(dragonflyBear1RealEstate)$p.value
chisq.test(dragonflyBear1Utilities)$p.value

print("Chi-Square p-Value dragonfly-bearish 3 Tage")
chisq.test(dragonflyBear3Communication)$p.value
chisq.test(dragonflyBear3CustomerDiscretionary)$p.value
chisq.test(dragonflyBear3CustomerStaples)$p.value
chisq.test(dragonflyBear3Energy)$p.value
chisq.test(dragonflyBear3Finance)$p.value
chisq.test(dragonflyBear3Healthcare)$p.value
chisq.test(dragonflyBear3Industrial)$p.value
chisq.test(dragonflyBear3Materials)$p.value
chisq.test(dragonflyBear3IT)$p.value
chisq.test(dragonflyBear3RealEstate)$p.value
chisq.test(dragonflyBear3Utilities)$p.value

print("Chi-Square p-Value dragonfly-bearish 5 Tage")
chisq.test(dragonflyBear5Communication)$p.value
chisq.test(dragonflyBear5CustomerDiscretionary)$p.value
chisq.test(dragonflyBear5CustomerStaples)$p.value
chisq.test(dragonflyBear5Energy)$p.value
chisq.test(dragonflyBear5Finance)$p.value
chisq.test(dragonflyBear5Healthcare)$p.value
chisq.test(dragonflyBear5Industrial)$p.value
chisq.test(dragonflyBear5Materials)$p.value
chisq.test(dragonflyBear5IT)$p.value
chisq.test(dragonflyBear5RealEstate)$p.value
chisq.test(dragonflyBear5Utilities)$p.value

print("Chi-Square p-Value dragonfly-bearish 7 Tage")
chisq.test(dragonflyBear7Communication)$p.value
chisq.test(dragonflyBear7CustomerDiscretionary)$p.value
chisq.test(dragonflyBear7CustomerStaples)$p.value
chisq.test(dragonflyBear7Energy)$p.value
chisq.test(dragonflyBear7Finance)$p.value
chisq.test(dragonflyBear7Healthcare)$p.value
chisq.test(dragonflyBear7Industrial)$p.value
chisq.test(dragonflyBear7Materials)$p.value
chisq.test(dragonflyBear7IT)$p.value
chisq.test(dragonflyBear7RealEstate)$p.value
chisq.test(dragonflyBear7Utilities)$p.value

print("Chi-Square p-Value dragonfly-bearish 10 Tage")
chisq.test(dragonflyBear10Communication)$p.value
chisq.test(dragonflyBear10CustomerDiscretionary)$p.value
chisq.test(dragonflyBear10CustomerStaples)$p.value
chisq.test(dragonflyBear10Energy)$p.value
chisq.test(dragonflyBear10Finance)$p.value
chisq.test(dragonflyBear10Healthcare)$p.value
chisq.test(dragonflyBear10Industrial)$p.value
chisq.test(dragonflyBear10Materials)$p.value
chisq.test(dragonflyBear10IT)$p.value
chisq.test(dragonflyBear10RealEstate)$p.value
chisq.test(dragonflyBear10Utilities)$p.value

sink(file = NULL)

