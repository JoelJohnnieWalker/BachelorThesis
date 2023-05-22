library(tidyverse)


TasukiUG1 <- read.csv('./RowData/Tasuki-UG-1-PosNeg.csv', row.names = 1)
TasukiUG3 <- read.csv('./RowData/Tasuki-UG-3-PosNeg.csv', row.names = 1)
TasukiUG5 <- read.csv('./RowData/Tasuki-UG-5-PosNeg.csv', row.names = 1)
TasukiUG7 <- read.csv('./RowData/Tasuki-UG-7-PosNeg.csv', row.names = 1)
TasukiUG10 <- read.csv('./RowData/Tasuki-UG-10-PosNeg.csv', row.names = 1)

TasukiUG1 <- head(TasukiUG1, - 2)
TasukiUG1Communication <- TasukiUG1 %>% select(1, 12)
TasukiUG1CustomerDiscretionary <- TasukiUG1 %>% select(2, 12)
TasukiUG1CustomerStaples <- TasukiUG1 %>% select(3, 12)
TasukiUG1Energy <- TasukiUG1 %>% select(4, 12)
TasukiUG1Finance <- TasukiUG1 %>% select(5, 12)
TasukiUG1Healthcare <- TasukiUG1 %>% select(6, 12)
TasukiUG1Industrial <- TasukiUG1 %>% select(7, 12)
TasukiUG1Materials <- TasukiUG1 %>% select(8, 12)
TasukiUG1IT <- TasukiUG1 %>% select(9, 12)
TasukiUG1RealEstate <- TasukiUG1 %>% select(10, 12)
TasukiUG1Utilities <- TasukiUG1 %>% select(11, 12)

TasukiUG3 <- head(TasukiUG3, - 2)
TasukiUG3Communication <- TasukiUG3 %>% select(1, 12)
TasukiUG3CustomerDiscretionary <- TasukiUG3 %>% select(2, 12)
TasukiUG3CustomerStaples <- TasukiUG3 %>% select(3, 12)
TasukiUG3Energy <- TasukiUG3 %>% select(4, 12)
TasukiUG3Finance <- TasukiUG3 %>% select(5, 12)
TasukiUG3Healthcare <- TasukiUG3 %>% select(6, 12)
TasukiUG3Industrial <- TasukiUG3 %>% select(7, 12)
TasukiUG3Materials <- TasukiUG3 %>% select(8, 12)
TasukiUG3IT <- TasukiUG3 %>% select(9, 12)
TasukiUG3RealEstate <- TasukiUG3 %>% select(10, 12)
TasukiUG3Utilities <- TasukiUG3 %>% select(11, 12)

TasukiUG5 <- head(TasukiUG5, - 2)
TasukiUG5Communication <- TasukiUG5 %>% select(1, 12)
TasukiUG5CustomerDiscretionary <- TasukiUG5 %>% select(2, 12)
TasukiUG5CustomerStaples <- TasukiUG5 %>% select(3, 12)
TasukiUG5Energy <- TasukiUG5 %>% select(4, 12)
TasukiUG5Finance <- TasukiUG5 %>% select(5, 12)
TasukiUG5Healthcare <- TasukiUG5 %>% select(6, 12)
TasukiUG5Industrial <- TasukiUG5 %>% select(7, 12)
TasukiUG5Materials <- TasukiUG5 %>% select(8, 12)
TasukiUG5IT <- TasukiUG5 %>% select(9, 12)
TasukiUG5RealEstate <- TasukiUG5 %>% select(10, 12)
TasukiUG5Utilities <- TasukiUG5 %>% select(11, 12)

TasukiUG7 <- head(TasukiUG7, - 2)
TasukiUG7Communication <- TasukiUG7 %>% select(1, 12)
TasukiUG7CustomerDiscretionary <- TasukiUG7 %>% select(2, 12)
TasukiUG7CustomerStaples <- TasukiUG7 %>% select(3, 12)
TasukiUG7Energy <- TasukiUG7 %>% select(4, 12)
TasukiUG7Finance <- TasukiUG7 %>% select(5, 12)
TasukiUG7Healthcare <- TasukiUG7 %>% select(6, 12)
TasukiUG7Industrial <- TasukiUG7 %>% select(7, 12)
TasukiUG7Materials <- TasukiUG7 %>% select(8, 12)
TasukiUG7IT <- TasukiUG7 %>% select(9, 12)
TasukiUG7RealEstate <- TasukiUG7 %>% select(10, 12)
TasukiUG7Utilities <- TasukiUG7 %>% select(11, 12)

TasukiUG10 <- head(TasukiUG10, - 2)
TasukiUG10Communication <- TasukiUG10 %>% select(1, 12)
TasukiUG10CustomerDiscretionary <- TasukiUG10 %>% select(2, 12)
TasukiUG10CustomerStaples <- TasukiUG10 %>% select(3, 12)
TasukiUG10Energy <- TasukiUG10 %>% select(4, 12)
TasukiUG10Finance <- TasukiUG10 %>% select(5, 12)
TasukiUG10Healthcare <- TasukiUG10 %>% select(6, 12)
TasukiUG10Industrial <- TasukiUG10 %>% select(7, 12)
TasukiUG10Materials <- TasukiUG10 %>% select(8, 12)
TasukiUG10IT <- TasukiUG10 %>% select(9, 12)
TasukiUG10RealEstate <- TasukiUG10 %>% select(10, 12)
TasukiUG10Utilities <- TasukiUG10 %>% select(11, 12)

sink(file = "./Results-Chi-Square-Test/Chi-Squared Tasuki-UG.csv")
print("Chi-Square p-Value Tasuki-UG 1 Tag")
chisq.test(TasukiUG1Communication)$p.value
chisq.test(TasukiUG1CustomerDiscretionary)$p.value
chisq.test(TasukiUG1CustomerStaples)$p.value
chisq.test(TasukiUG1Energy)$p.value
chisq.test(TasukiUG1Finance)$p.value
chisq.test(TasukiUG1Healthcare)$p.value
chisq.test(TasukiUG1Industrial)$p.value
chisq.test(TasukiUG1Materials)$p.value
chisq.test(TasukiUG1IT)$p.value
chisq.test(TasukiUG1RealEstate)$p.value
chisq.test(TasukiUG1Utilities)$p.value

print("Chi-Square p-Value Tasuki-UG 3 Tage")
chisq.test(TasukiUG3Communication)$p.value
chisq.test(TasukiUG3CustomerDiscretionary)$p.value
chisq.test(TasukiUG3CustomerStaples)$p.value
chisq.test(TasukiUG3Energy)$p.value
chisq.test(TasukiUG3Finance)$p.value
chisq.test(TasukiUG3Healthcare)$p.value
chisq.test(TasukiUG3Industrial)$p.value
chisq.test(TasukiUG3Materials)$p.value
chisq.test(TasukiUG3IT)$p.value
chisq.test(TasukiUG3RealEstate)$p.value
chisq.test(TasukiUG3Utilities)$p.value

print("Chi-Square p-Value Tasuki-UG 5 Tage")
chisq.test(TasukiUG5Communication)$p.value
chisq.test(TasukiUG5CustomerDiscretionary)$p.value
chisq.test(TasukiUG5CustomerStaples)$p.value
chisq.test(TasukiUG5Energy)$p.value
chisq.test(TasukiUG5Finance)$p.value
chisq.test(TasukiUG5Healthcare)$p.value
chisq.test(TasukiUG5Industrial)$p.value
chisq.test(TasukiUG5Materials)$p.value
chisq.test(TasukiUG5IT)$p.value
chisq.test(TasukiUG5RealEstate)$p.value
chisq.test(TasukiUG5Utilities)$p.value

print("Chi-Square p-Value Tasuki-UG 7 Tage")
chisq.test(TasukiUG7Communication)$p.value
chisq.test(TasukiUG7CustomerDiscretionary)$p.value
chisq.test(TasukiUG7CustomerStaples)$p.value
chisq.test(TasukiUG7Energy)$p.value
chisq.test(TasukiUG7Finance)$p.value
chisq.test(TasukiUG7Healthcare)$p.value
chisq.test(TasukiUG7Industrial)$p.value
chisq.test(TasukiUG7Materials)$p.value
chisq.test(TasukiUG7IT)$p.value
chisq.test(TasukiUG7RealEstate)$p.value
chisq.test(TasukiUG7Utilities)$p.value

print("Chi-Square p-Value Tasuki-UG 10 Tage")
chisq.test(TasukiUG10Communication)$p.value
chisq.test(TasukiUG10CustomerDiscretionary)$p.value
chisq.test(TasukiUG10CustomerStaples)$p.value
chisq.test(TasukiUG10Energy)$p.value
chisq.test(TasukiUG10Finance)$p.value
chisq.test(TasukiUG10Healthcare)$p.value
chisq.test(TasukiUG10Industrial)$p.value
chisq.test(TasukiUG10Materials)$p.value
chisq.test(TasukiUG10IT)$p.value
chisq.test(TasukiUG10RealEstate)$p.value
chisq.test(TasukiUG10Utilities)$p.value

sink(file = NULL)

