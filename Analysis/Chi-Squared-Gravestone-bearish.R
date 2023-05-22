library(tidyverse)

# Import data
gravestoneBear1 <- read.csv('./RowData/gravestone-bearish-1-PosNeg.csv', row.names = 1)
gravestoneBear3 <- read.csv('./RowData/gravestone-bearish-3-PosNeg.csv', row.names = 1)
gravestoneBear5 <- read.csv('./RowData/gravestone-bearish-5-PosNeg.csv', row.names = 1)
gravestoneBear7 <- read.csv('./RowData/gravestone-bearish-7-PosNeg.csv', row.names = 1)
gravestoneBear10 <- read.csv('./RowData/gravestone-bearish-10-PosNeg.csv', row.names = 1)

# Modify data for strategies and sectors
gravestoneBear1 <- head(gravestoneBear1, - 2)
gravestoneBear1Communication <- gravestoneBear1 %>% select(1, 12)
gravestoneBear1CustomerDiscretionary <- gravestoneBear1 %>% select(2, 12)
gravestoneBear1CustomerStaples <- gravestoneBear1 %>% select(3, 12)
gravestoneBear1Energy <- gravestoneBear1 %>% select(4, 12)
gravestoneBear1Finance <- gravestoneBear1 %>% select(5, 12)
gravestoneBear1Healthcare <- gravestoneBear1 %>% select(6, 12)
gravestoneBear1Industrial <- gravestoneBear1 %>% select(7, 12)
gravestoneBear1Materials <- gravestoneBear1 %>% select(8, 12)
gravestoneBear1IT <- gravestoneBear1 %>% select(9, 12)
gravestoneBear1RealEstate <- gravestoneBear1 %>% select(10, 12)
gravestoneBear1Utilities <- gravestoneBear1 %>% select(11, 12)

gravestoneBear3 <- head(gravestoneBear3, - 2)
gravestoneBear3Communication <- gravestoneBear3 %>% select(1, 12)
gravestoneBear3CustomerDiscretionary <- gravestoneBear3 %>% select(2, 12)
gravestoneBear3CustomerStaples <- gravestoneBear3 %>% select(3, 12)
gravestoneBear3Energy <- gravestoneBear3 %>% select(4, 12)
gravestoneBear3Finance <- gravestoneBear3 %>% select(5, 12)
gravestoneBear3Healthcare <- gravestoneBear3 %>% select(6, 12)
gravestoneBear3Industrial <- gravestoneBear3 %>% select(7, 12)
gravestoneBear3Materials <- gravestoneBear3 %>% select(8, 12)
gravestoneBear3IT <- gravestoneBear3 %>% select(9, 12)
gravestoneBear3RealEstate <- gravestoneBear3 %>% select(10, 12)
gravestoneBear3Utilities <- gravestoneBear3 %>% select(11, 12)

gravestoneBear5 <- head(gravestoneBear5, - 2)
gravestoneBear5Communication <- gravestoneBear5 %>% select(1, 12)
gravestoneBear5CustomerDiscretionary <- gravestoneBear5 %>% select(2, 12)
gravestoneBear5CustomerStaples <- gravestoneBear5 %>% select(3, 12)
gravestoneBear5Energy <- gravestoneBear5 %>% select(4, 12)
gravestoneBear5Finance <- gravestoneBear5 %>% select(5, 12)
gravestoneBear5Healthcare <- gravestoneBear5 %>% select(6, 12)
gravestoneBear5Industrial <- gravestoneBear5 %>% select(7, 12)
gravestoneBear5Materials <- gravestoneBear5 %>% select(8, 12)
gravestoneBear5IT <- gravestoneBear5 %>% select(9, 12)
gravestoneBear5RealEstate <- gravestoneBear5 %>% select(10, 12)
gravestoneBear5Utilities <- gravestoneBear5 %>% select(11, 12)

gravestoneBear7 <- head(gravestoneBear7, - 2)
gravestoneBear7Communication <- gravestoneBear7 %>% select(1, 12)
gravestoneBear7CustomerDiscretionary <- gravestoneBear7 %>% select(2, 12)
gravestoneBear7CustomerStaples <- gravestoneBear7 %>% select(3, 12)
gravestoneBear7Energy <- gravestoneBear7 %>% select(4, 12)
gravestoneBear7Finance <- gravestoneBear7 %>% select(5, 12)
gravestoneBear7Healthcare <- gravestoneBear7 %>% select(6, 12)
gravestoneBear7Industrial <- gravestoneBear7 %>% select(7, 12)
gravestoneBear7Materials <- gravestoneBear7 %>% select(8, 12)
gravestoneBear7IT <- gravestoneBear7 %>% select(9, 12)
gravestoneBear7RealEstate <- gravestoneBear7 %>% select(10, 12)
gravestoneBear7Utilities <- gravestoneBear7 %>% select(11, 12)

gravestoneBear10 <- head(gravestoneBear10, - 2)
gravestoneBear10Communication <- gravestoneBear10 %>% select(1, 12)
gravestoneBear10CustomerDiscretionary <- gravestoneBear10 %>% select(2, 12)
gravestoneBear10CustomerStaples <- gravestoneBear10 %>% select(3, 12)
gravestoneBear10Energy <- gravestoneBear10 %>% select(4, 12)
gravestoneBear10Finance <- gravestoneBear10 %>% select(5, 12)
gravestoneBear10Healthcare <- gravestoneBear10 %>% select(6, 12)
gravestoneBear10Industrial <- gravestoneBear10 %>% select(7, 12)
gravestoneBear10Materials <- gravestoneBear10 %>% select(8, 12)
gravestoneBear10IT <- gravestoneBear10 %>% select(9, 12)
gravestoneBear10RealEstate <- gravestoneBear10 %>% select(10, 12)
gravestoneBear10Utilities <- gravestoneBear10 %>% select(11, 12)

# Calculate p-value of "Chi-Squared t-Test" and print to csv
sink(file = "./Results-Chi-Square-Test/Chi-Squared Gravestone-bearish.csv")
print("Chi-Square p-Value Gravestone-bearish 1 Tag")
chisq.test(gravestoneBear1Communication)$p.value
chisq.test(gravestoneBear1CustomerDiscretionary)$p.value
chisq.test(gravestoneBear1CustomerStaples)$p.value
chisq.test(gravestoneBear1Energy)$p.value
chisq.test(gravestoneBear1Finance)$p.value
chisq.test(gravestoneBear1Healthcare)$p.value
chisq.test(gravestoneBear1Industrial)$p.value
chisq.test(gravestoneBear1Materials)$p.value
chisq.test(gravestoneBear1IT)$p.value
chisq.test(gravestoneBear1RealEstate)$p.value
chisq.test(gravestoneBear1Utilities)$p.value

print("Chi-Square p-Value Gravestone-bearish 3 Tage")
chisq.test(gravestoneBear3Communication)$p.value
chisq.test(gravestoneBear3CustomerDiscretionary)$p.value
chisq.test(gravestoneBear3CustomerStaples)$p.value
chisq.test(gravestoneBear3Energy)$p.value
chisq.test(gravestoneBear3Finance)$p.value
chisq.test(gravestoneBear3Healthcare)$p.value
chisq.test(gravestoneBear3Industrial)$p.value
chisq.test(gravestoneBear3Materials)$p.value
chisq.test(gravestoneBear3IT)$p.value
chisq.test(gravestoneBear3RealEstate)$p.value
chisq.test(gravestoneBear3Utilities)$p.value

print("Chi-Square p-Value Gravestone-bearish 5 Tage")
chisq.test(gravestoneBear5Communication)$p.value
chisq.test(gravestoneBear5CustomerDiscretionary)$p.value
chisq.test(gravestoneBear5CustomerStaples)$p.value
chisq.test(gravestoneBear5Energy)$p.value
chisq.test(gravestoneBear5Finance)$p.value
chisq.test(gravestoneBear5Healthcare)$p.value
chisq.test(gravestoneBear5Industrial)$p.value
chisq.test(gravestoneBear5Materials)$p.value
chisq.test(gravestoneBear5IT)$p.value
chisq.test(gravestoneBear5RealEstate)$p.value
chisq.test(gravestoneBear5Utilities)$p.value

print("Chi-Square p-Value Gravestone-bearish 7 Tage")
chisq.test(gravestoneBear7Communication)$p.value
chisq.test(gravestoneBear7CustomerDiscretionary)$p.value
chisq.test(gravestoneBear7CustomerStaples)$p.value
chisq.test(gravestoneBear7Energy)$p.value
chisq.test(gravestoneBear7Finance)$p.value
chisq.test(gravestoneBear7Healthcare)$p.value
chisq.test(gravestoneBear7Industrial)$p.value
chisq.test(gravestoneBear7Materials)$p.value
chisq.test(gravestoneBear7IT)$p.value
chisq.test(gravestoneBear7RealEstate)$p.value
chisq.test(gravestoneBear7Utilities)$p.value

print("Chi-Square p-Value Gravestone-bearish 10 Tage")
chisq.test(gravestoneBear10Communication)$p.value
chisq.test(gravestoneBear10CustomerDiscretionary)$p.value
chisq.test(gravestoneBear10CustomerStaples)$p.value
chisq.test(gravestoneBear10Energy)$p.value
chisq.test(gravestoneBear10Finance)$p.value
chisq.test(gravestoneBear10Healthcare)$p.value
chisq.test(gravestoneBear10Industrial)$p.value
chisq.test(gravestoneBear10Materials)$p.value
chisq.test(gravestoneBear10IT)$p.value
chisq.test(gravestoneBear10RealEstate)$p.value
chisq.test(gravestoneBear10Utilities)$p.value

sink(file = NULL)

