# BachelorThesis
Bachelor-Thesis - Joël Johnnie Walker

## Download the stock data
The "Download" folder contains Python files for downloading and modifying the stock data. An internet connection is required to download these files. 
When the downloads are executed, the share data is loaded into the "Stock-Data" folder. A sub-folder is created for each sector. This data is needed for the analysis.

## Execute analysis for candlestick patterns
The "Analysis" folder contains Python files to analyse the candlestick patterns. There is one file per candlestick pattern. This calculates the success rates and percentage changes per candlestick pattern, exit strategy and sector. The results are saved in the folder "Analysis\RowData". One CSV file is created for each combination.

## Execute chi-Square tests
In the folder "Analysis" there are R-files to perform the Chi-Square tests. There is one R-file per candlestick pattern. These all begin with "Chi-Squared". When the test is performed, the p-value is saved in a CSV file in the folder "Analysis\Results-Chi-Square-Test".

## Execute t-tests
In the "Analysis" folder there are R-files to perform the t-tests. There is one R-file per candlestick pattern. These all begin with "T-Test". When the test is performed, the p-value is saved in a CSV file in the folder "Analysis\Results-T-Test".

## Summary of calculations
The results of all calculations are summarised in the three Excel documents "AllResultsCombined.xlsx", "AllResults-PosNeg.xlsx" and "AllResults-Profits.xlsx".
