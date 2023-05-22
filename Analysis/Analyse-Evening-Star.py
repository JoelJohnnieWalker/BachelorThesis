import pandas as pd
import numpy as np
import statistics
import os

# Check if folder exists
pathFolder = 'Analysis/RowData'
isExist = os.path.exists(pathFolder)
if not isExist:
   # Create a new directory because it does not exist
   os.makedirs(pathFolder)

# List of all companies sorted by sector
companiesCommunication = ['META', 'GOOGL', 'GOOG', 'DIS', 'VZ', 'CMCSA', 'NFLX', 'T', 'TMUS', 'ATVI']
companiesCustomerDiscretionary = ['AMZN', 'TSLA', 'HD', 'MCD', 'NKE', 'LOW', 'SBUX', 'BKNG', 'TJX', 'MAR']
companiesCustomerStaples = ['PG', 'PEP', 'KO', 'COST', 'WMT', 'PM', 'MDLZ', 'MO', 'TGT', 'EL']
companiesEnergy = ['XOM', 'CVX', 'COP', 'SLB', 'EOG', 'MPC', 'VLO', 'PSX', 'PXD', 'OXY']
companiesFinance = ['BRK-B', 'JPM', 'V', 'MA', 'BAC', 'WFC', 'MS', 'SPGI', 'SCHW', 'GS']
companiesHealthcare = ['UNH', 'JNJ', 'ABBV', 'MRK', 'LLY', 'PFE', 'TMO', 'ABT', 'DHR', 'BMY']
companiesIndustrial = ['RTX', 'UPS', 'HON', 'UNP', 'BA', 'CAT', 'LMT', 'DE', 'GE', 'ADP']
companiesMaterials = ['LIN', 'FCX', 'APD', 'SHW', 'CTVA', 'ECL', 'NEM', 'NUE', 'DOW', 'DD']
companiesIT = ['AAPL', 'MSFT', 'NVDA', 'AVGO', 'CSCO', 'CRM', 'ACN', 'ORCL', 'ADBE', 'TXN']
companiesRealEstate = ['HST', 'PEAK', 'VICI', 'O', 'INVH', 'KIM', 'DLR', 'WY', 'UDR', 'PLD']
companiesUtilities = ['NEE', 'DUK', 'SO', 'AEP', 'SRE', 'D', 'EXC', 'PCG', 'XEL', 'ED']

sectors = {
    'Communication': companiesCommunication,
    'CustomerDiscretionary': companiesCustomerDiscretionary,
    'CustomerStaples': companiesCustomerStaples,
    'Energy': companiesEnergy,
    'Finance': companiesFinance,
    'Healthcare': companiesHealthcare,
    'Industrial': companiesIndustrial,
    'Materials': companiesMaterials,
    'IT': companiesIT,
    'RealEstate': companiesRealEstate,
    'Utilities': companiesUtilities,
}

# Create variables, dictionaries and lists for the profits
postiveTradesAll1 = 0
negativeTradesAll1 = 0
positiveTradesBySector1 = {sector: 0 for sector in sectors}
negativeTradesBySector1 = {sector: 0 for sector in sectors}
profitsAll1 = []
profitsBySector1 = {sector: [] for sector in sectors}

postiveTradesAll3 = 0
negativeTradesAll3 = 0
positiveTradesBySector3 = {sector: 0 for sector in sectors}
negativeTradesBySector3 = {sector: 0 for sector in sectors}
profitsAll3 = []
profitsBySector3 = {sector: [] for sector in sectors}

postiveTradesAll5 = 0
negativeTradesAll5 = 0
positiveTradesBySector5 = {sector: 0 for sector in sectors}
negativeTradesBySector5 = {sector: 0 for sector in sectors}
profitsAll5 = []
profitsBySector5 = {sector: [] for sector in sectors}

postiveTradesAll7 = 0
negativeTradesAll7 = 0
positiveTradesBySector7 = {sector: 0 for sector in sectors}
negativeTradesBySector7 = {sector: 0 for sector in sectors}
profitsAll7 = []
profitsBySector7 = {sector: [] for sector in sectors}

postiveTradesAll10 = 0
negativeTradesAll10 = 0
positiveTradesBySector10 = {sector: 0 for sector in sectors}
negativeTradesBySector10 = {sector: 0 for sector in sectors}
profitsAll10 = []
profitsBySector10 = {sector: [] for sector in sectors}

# Import the data from downloaded and modified csv files
data = {}
for company in companiesCommunication:
    data[company] = pd.read_csv('Stock-Data/Communication/'+ company + '.csv')
for company in companiesCustomerDiscretionary:
    data[company] = pd.read_csv('Stock-Data/CustomerDiscretionary/'+ company + '.csv')
for company in companiesCustomerStaples:
    data[company] = pd.read_csv('Stock-Data/CustomerStaples/'+ company + '.csv')
for company in companiesEnergy:
    data[company] = pd.read_csv('Stock-Data/Energy/'+ company + '.csv')
for company in companiesFinance:
    data[company] = pd.read_csv('Stock-Data/Finance/'+ company + '.csv')
for company in companiesHealthcare:
    data[company] = pd.read_csv('Stock-Data/HealthCare/'+ company + '.csv')
for company in companiesIndustrial:
    data[company] = pd.read_csv('Stock-Data/Industrial/'+ company + '.csv')
for company in companiesMaterials:
    data[company] = pd.read_csv('Stock-Data/Materials/'+ company + '.csv')   
for company in companiesIT:
    data[company] = pd.read_csv('Stock-Data/IT/'+ company + '.csv')  
for company in companiesRealEstate:
    data[company] = pd.read_csv('Stock-Data/RealEstate/'+ company + '.csv')   
for company in companiesUtilities:
    data[company] = pd.read_csv('Stock-Data/Utilities/'+ company + '.csv')   

# Calculatations after 1 day
for sector, companies in sectors.items():
    for company in companies:
        data[company] = pd.read_csv(f'Stock-Data/{sector}/{company}.csv')
        for index, row in data[company].iterrows():
            if (row.CDLEVENINGSTAR == -100) and (data[company].iloc[index-3]['Trend'] == 1):
                profitsAll1.append((data[company].Close[index+1] / data[company].Open[index+1]) * 100 - 100)
                profitsBySector1[sector].append((data[company].Close[index+1] / data[company].Open[index+1]) * 100 - 100)
                if data[company].Close[index+1] >= data[company].Open[index+1]:
                    postiveTradesAll1 += 1
                    positiveTradesBySector1[sector] += 1
                elif data[company].Close[index+1] < data[company].Open[index+1]:
                    negativeTradesAll1 += 1
                    negativeTradesBySector1[sector] += 1

# Calculatations after 3 days
for sector, companies in sectors.items():
    for company in companies:
        data[company] = pd.read_csv(f'Stock-Data/{sector}/{company}.csv')
        for index, row in data[company].iterrows():
            if (row.CDLEVENINGSTAR == -100) and (data[company].iloc[index-3]['Trend'] == 1):
                profitsAll3.append((data[company].Close[index+3] / data[company].Open[index+1]) * 100 - 100)
                profitsBySector3[sector].append((data[company].Close[index+3] / data[company].Open[index+1]) * 100 - 100)
                if data[company].Close[index+3] >= data[company].Open[index+1]:
                    postiveTradesAll3 += 1
                    positiveTradesBySector3[sector] += 1
                elif data[company].Close[index+3] < data[company].Open[index+1]:
                    negativeTradesAll3 += 1
                    negativeTradesBySector3[sector] += 1

# Calculatations after 5 days
for sector, companies in sectors.items():
    for company in companies:
        data[company] = pd.read_csv(f'Stock-Data/{sector}/{company}.csv')
        for index, row in data[company].iterrows():
            if (row.CDLEVENINGSTAR == -100) and (data[company].iloc[index-3]['Trend'] == 1):
                profitsAll5.append((data[company].Close[index+5] / data[company].Open[index+1]) * 100 - 100)
                profitsBySector5[sector].append((data[company].Close[index+5] / data[company].Open[index+1]) * 100 - 100)
                if data[company].Close[index+5] >= data[company].Open[index+1]:
                    postiveTradesAll5 += 1
                    positiveTradesBySector5[sector] += 1
                elif data[company].Close[index+5] < data[company].Open[index+1]:
                    negativeTradesAll5 += 1
                    negativeTradesBySector5[sector] += 1

# Calculatations after 7 days
for sector, companies in sectors.items():
    for company in companies:
        data[company] = pd.read_csv(f'Stock-Data/{sector}/{company}.csv')
        for index, row in data[company].iterrows():
            if (row.CDLEVENINGSTAR == -100) and (data[company].iloc[index-3]['Trend'] == 1):
                profitsAll7.append((data[company].Close[index+7] / data[company].Open[index+1]) * 100 - 100)
                profitsBySector7[sector].append((data[company].Close[index+7] / data[company].Open[index+1]) * 100 - 100)
                if data[company].Close[index+7] >= data[company].Open[index+1]:
                    postiveTradesAll7 += 1
                    positiveTradesBySector7[sector] += 1
                elif data[company].Close[index+7] < data[company].Open[index+1]:
                    negativeTradesAll7 += 1
                    negativeTradesBySector7[sector] += 1

# Calculatations after 10 days
for sector, companies in sectors.items():
    for company in companies:
        data[company] = pd.read_csv(f'Stock-Data/{sector}/{company}.csv')
        for index, row in data[company].iterrows():
            if (row.CDLEVENINGSTAR == -100) and (data[company].iloc[index-3]['Trend'] == 1):
                profitsAll10.append((data[company].Close[index+10] / data[company].Open[index+1]) * 100 - 100)
                profitsBySector10[sector].append((data[company].Close[index+10] / data[company].Open[index+1]) * 100 - 100)
                if data[company].Close[index+10] >= data[company].Open[index+1]:
                    postiveTradesAll10 += 1
                    positiveTradesBySector10[sector] += 1
                elif data[company].Close[index+10] < data[company].Open[index+1]:
                    negativeTradesAll10 += 1
                    negativeTradesBySector10[sector] += 1


# Create a dataframe of all negative and positive trades by sectors
positiveTradesBySector1["All"] = postiveTradesAll1
negativeTradesBySector1["All"] = negativeTradesAll1
df_positive1 = pd.DataFrame.from_dict(positiveTradesBySector1, orient='index', columns=['Positive Trades'])
df_negative1 = pd.DataFrame.from_dict(negativeTradesBySector1, orient='index', columns=['Negative Trades'])
# combine dataframes
df_postivie_negative1 = pd.concat([df_positive1, df_negative1], axis=1)
# add a column for total trades
df_postivie_negative1['Total Trades'] = df_postivie_negative1['Positive Trades'] + df_postivie_negative1['Negative Trades']
df_postivie_negative1['Negative Trades Portion'] = df_postivie_negative1['Negative Trades'] / df_postivie_negative1['Total Trades']
df_postivie_negative1 = df_postivie_negative1.transpose()
print("\nPostitive / Negative after 1 Days\n")
print(df_postivie_negative1)
 # Save the dataframe as a CSV pfile
path = r'Analysis/RowData/EveningStar-1-PosNeg.csv'
df_postivie_negative1.to_csv(path)

# Calculate the mean profits of all sectors and all trades
meanprofitsAll1 = statistics.mean(profitsAll1)
meanprofitsBySector1 = {}
for sector, profits in profitsBySector1.items():
    meanprofitsBySector1[sector] = statistics.mean(profits)
# Create a dataframe with all mean values for profits
meanprofitsBySector1["All"] = meanprofitsAll1
df_MeanProfits1 = pd.DataFrame.from_dict(meanprofitsBySector1, orient='index', columns=['Profits'])
print("\nMean Profit after 1 Days\n")
print(df_MeanProfits1)
path = r'Analysis/RowData/EveningStar-1-MeanProfits.csv'
df_MeanProfits1.to_csv(path)

profitsBySector1["All"] = profitsAll1
# Add NaN to the shorter arrays that a dataframe can be created
max_len = max(len(lst) for lst in profitsBySector1.values())
profitsBySector1 = {k: lst + [float('nan')] * (max_len - len(lst)) for k, lst in profitsBySector1.items()}
# create DataFrame with profits of sectors
df_Profits1 = pd.DataFrame.from_dict(profitsBySector1)
print("\nProfits after 1 Days\n")
print(df_Profits1)
path = r'Analysis/RowData/EveningStar-1-Profits.csv'
df_Profits1.to_csv(path, index=False)




# Create a dataframe of all negative and positive trades by sectors
positiveTradesBySector3["All"] = postiveTradesAll3
negativeTradesBySector3["All"] = negativeTradesAll3
df_positive3 = pd.DataFrame.from_dict(positiveTradesBySector3, orient='index', columns=['Positive Trades'])
df_negative3 = pd.DataFrame.from_dict(negativeTradesBySector3, orient='index', columns=['Negative Trades'])
# combine dataframes
df_postivie_negative3 = pd.concat([df_positive3, df_negative3], axis=1)
# add a column for total trades
df_postivie_negative3['Total Trades'] = df_postivie_negative3['Positive Trades'] + df_postivie_negative3['Negative Trades']
df_postivie_negative3['Negative Trades Portion'] = df_postivie_negative3['Negative Trades'] / df_postivie_negative3['Total Trades']
df_postivie_negative3 = df_postivie_negative3.transpose()
print("\nPostitive / Negative after 3 Days\n")
print(df_postivie_negative3)
 # Save the dataframe as a CSV pfile
path = r'Analysis/RowData/EveningStar-3-PosNeg.csv'
df_postivie_negative3.to_csv(path)

# Calculate the mean profits of all sectors and all trades
meanprofitsAll3 = statistics.mean(profitsAll3)
meanprofitsBySector3 = {}
for sector, profits in profitsBySector3.items():
    meanprofitsBySector3[sector] = statistics.mean(profits)
# Create a dataframe with all mean values for profits
meanprofitsBySector3["All"] = meanprofitsAll3
df_MeanProfits3 = pd.DataFrame.from_dict(meanprofitsBySector3, orient='index', columns=['Profits'])
print("\nMean Profit after 3 Days\n")
print(df_MeanProfits3)
path = r'Analysis/RowData/EveningStar-3-MeanProfits.csv'
df_MeanProfits3.to_csv(path)

profitsBySector3["All"] = profitsAll3
# Add NaN to the shorter arrays that a dataframe can be created
max_len = max(len(lst) for lst in profitsBySector3.values())
profitsBySector3 = {k: lst + [float('nan')] * (max_len - len(lst)) for k, lst in profitsBySector3.items()}
# create DataFrame with profits of sectors
df_Profits3 = pd.DataFrame.from_dict(profitsBySector3)
print("\nProfits after 3 Days\n")
print(df_Profits3)
path = r'Analysis/RowData/EveningStar-3-Profits.csv'
df_Profits3.to_csv(path, index=False)




# Create a dataframe of all negative and positive trades by sectors
positiveTradesBySector5["All"] = postiveTradesAll5
negativeTradesBySector5["All"] = negativeTradesAll5
df_positive5 = pd.DataFrame.from_dict(positiveTradesBySector5, orient='index', columns=['Positive Trades'])
df_negative5 = pd.DataFrame.from_dict(negativeTradesBySector5, orient='index', columns=['Negative Trades'])
# combine dataframes
df_postivie_negative5 = pd.concat([df_positive5, df_negative5], axis=1)
# add a column for total trades
df_postivie_negative5['Total Trades'] = df_postivie_negative5['Positive Trades'] + df_postivie_negative5['Negative Trades']
df_postivie_negative5['Negative Trades Portion'] = df_postivie_negative5['Negative Trades'] / df_postivie_negative5['Total Trades']
df_postivie_negative5 = df_postivie_negative5.transpose()
print("\nPostitive / Negative after 5 Days\n")
print(df_postivie_negative5)
 # Save the dataframe as a CSV pfile
path = r'Analysis/RowData/EveningStar-5-PosNeg.csv'
df_postivie_negative5.to_csv(path)

# Calculate the mean profits of all sectors and all trades
meanprofitsAll5 = statistics.mean(profitsAll5)
meanprofitsBySector5 = {}
for sector, profits in profitsBySector5.items():
    meanprofitsBySector5[sector] = statistics.mean(profits)
# Create a dataframe with all mean values for profits
meanprofitsBySector5["All"] = meanprofitsAll5
df_MeanProfits5 = pd.DataFrame.from_dict(meanprofitsBySector5, orient='index', columns=['Profits'])
print("\nMean Profit after 5 Days\n")
print(df_MeanProfits5)
path = r'Analysis/RowData/EveningStar-5-MeanProfits.csv'
df_MeanProfits5.to_csv(path)

profitsBySector5["All"] = profitsAll5
# Add NaN to the shorter arrays that a dataframe can be created
max_len = max(len(lst) for lst in profitsBySector5.values())
profitsBySector5 = {k: lst + [float('nan')] * (max_len - len(lst)) for k, lst in profitsBySector5.items()}
# create DataFrame with profits of sectors
df_Profits5 = pd.DataFrame.from_dict(profitsBySector5)
print("\nProfits after 5 Days\n")
print(df_Profits5)
path = r'Analysis/RowData/EveningStar-5-Profits.csv'
df_Profits5.to_csv(path, index=False)



# Create a dataframe of all negative and positive trades by sectors
positiveTradesBySector7["All"] = postiveTradesAll7
negativeTradesBySector7["All"] = negativeTradesAll7
df_positive7 = pd.DataFrame.from_dict(positiveTradesBySector7, orient='index', columns=['Positive Trades'])
df_negative7 = pd.DataFrame.from_dict(negativeTradesBySector7, orient='index', columns=['Negative Trades'])
# combine dataframes
df_postivie_negative7 = pd.concat([df_positive7, df_negative7], axis=1)
# add a column for total trades
df_postivie_negative7['Total Trades'] = df_postivie_negative7['Positive Trades'] + df_postivie_negative7['Negative Trades']
df_postivie_negative7['Negative Trades Portion'] = df_postivie_negative7['Negative Trades'] / df_postivie_negative7['Total Trades']
df_postivie_negative7 = df_postivie_negative7.transpose()
print("\nPostitive / Negative after 7 Days\n")
print(df_postivie_negative7)
 # Save the dataframe as a CSV pfile
path = r'Analysis/RowData/EveningStar-7-PosNeg.csv'
df_postivie_negative7.to_csv(path)

# Calculate the mean profits of all sectors and all trades
meanprofitsAll7 = statistics.mean(profitsAll7)
meanprofitsBySector7 = {}
for sector, profits in profitsBySector7.items():
    meanprofitsBySector7[sector] = statistics.mean(profits)
# Create a dataframe with all mean values for profits
meanprofitsBySector7["All"] = meanprofitsAll7
df_MeanProfits7 = pd.DataFrame.from_dict(meanprofitsBySector7, orient='index', columns=['Profits'])
print("\nMean Profit after 7 Days\n")
print(df_MeanProfits7)
path = r'Analysis/RowData/EveningStar-7-MeanProfits.csv'
df_MeanProfits7.to_csv(path)

profitsBySector7["All"] = profitsAll7
# Add NaN to the shorter arrays that a dataframe can be created
max_len = max(len(lst) for lst in profitsBySector7.values())
profitsBySector7 = {k: lst + [float('nan')] * (max_len - len(lst)) for k, lst in profitsBySector7.items()}
# create DataFrame with profits of sectors
df_Profits7 = pd.DataFrame.from_dict(profitsBySector7)
print("\nProfits after 7 Days\n")
print(df_Profits7)
path = r'Analysis/RowData/EveningStar-7-Profits.csv'
df_Profits7.to_csv(path, index=False)



# Create a dataframe of all negative and positive trades by sectors
positiveTradesBySector10["All"] = postiveTradesAll10
negativeTradesBySector10["All"] = negativeTradesAll10
df_positive10 = pd.DataFrame.from_dict(positiveTradesBySector10, orient='index', columns=['Positive Trades'])
df_negative10 = pd.DataFrame.from_dict(negativeTradesBySector10, orient='index', columns=['Negative Trades'])
# combine dataframes
df_postivie_negative10 = pd.concat([df_positive10, df_negative10], axis=1)
# add a column for total trades
df_postivie_negative10['Total Trades'] = df_postivie_negative10['Positive Trades'] + df_postivie_negative10['Negative Trades']
df_postivie_negative10['Negative Trades Portion'] = df_postivie_negative10['Negative Trades'] / df_postivie_negative10['Total Trades']
df_postivie_negative10 = df_postivie_negative10.transpose()
print("\nPostitive / Negative after 10 Days\n")
print(df_postivie_negative10)
 # Save the dataframe as a CSV pfile
path = r'Analysis/RowData/EveningStar-10-PosNeg.csv'
df_postivie_negative10.to_csv(path)

# Calculate the mean profits of all sectors and all trades
meanprofitsAll10 = statistics.mean(profitsAll10)
meanprofitsBySector10 = {}
for sector, profits in profitsBySector10.items():
    meanprofitsBySector10[sector] = statistics.mean(profits)
# Create a dataframe with all mean values for profits
meanprofitsBySector10["All"] = meanprofitsAll10
df_MeanProfits10 = pd.DataFrame.from_dict(meanprofitsBySector10, orient='index', columns=['Profits'])
print("\nMean Profit after 10 Days\n")
print(df_MeanProfits10)
path = r'Analysis/RowData/EveningStar-10-MeanProfits.csv'
df_MeanProfits10.to_csv(path)

profitsBySector10["All"] = profitsAll10
# Add NaN to the shorter arrays that a dataframe can be created
max_len = max(len(lst) for lst in profitsBySector10.values())
profitsBySector10 = {k: lst + [float('nan')] * (max_len - len(lst)) for k, lst in profitsBySector10.items()}
# create DataFrame with profits of sectors
df_Profits10 = pd.DataFrame.from_dict(profitsBySector10)
print("\nProfits after 10 Days\n")
print(df_Profits10)
path = r'Analysis/RowData/EveningStar-10-Profits.csv'
df_Profits10.to_csv(path, index=False)