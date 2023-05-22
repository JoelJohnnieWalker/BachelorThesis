import yfinance as yf
import talib
import numpy as np
import pandas as pd
import datetime
import os

# Define Candlestick Pattern funktions
candle_names = [
    'CDL3BLACKCROWS',
    'CDLEVENINGSTAR',
    'CDLTASUKIGAP',
    'CDLINVERTEDHAMMER',
    'CDLMATCHINGLOW',
    'CDLABANDONEDBABY',
    'CDLMORNINGSTAR',
    'CDLPIERCING',
    'CDLSTICKSANDWICH',
    'CDLTHRUSTING',
    'CDLGRAVESTONEDOJI',
    'CDLDRAGONFLYDOJI',
    'CDLHAMMER',
    'CDLENGULFING',
]

#Define the companies in enrgy sector
companies = ['UNH', 'JNJ', 'ABBV', 'MRK', 'LLY', 'PFE', 'TMO', 'ABT', 'DHR', 'BMY']

# Download dataframes from Yahoo and set name of dataframe
dfs = {}
for company  in companies:
    i = yf.download(company, start="1999-12-15", end="2023-1-20")
    i.name = company
    dfs[company] = i

# Check if folder exists
pathFolder = 'Stock-Data/Healthcare/'
isExist = os.path.exists(pathFolder)
if not isExist:
   # Create a new directory because it does not exist
   os.makedirs(pathFolder)

# For loop for all dataframes
for company, i in dfs.items():
    op = i['Open']
    hi = i['High']
    lo = i['Low']
    cl = i['Close']

    # Run all functions in 'candle_names' trough all dataframes
    for candle in candle_names:
        i[candle] = getattr(talib, candle)(op, hi, lo, cl)

    # Get the EMA of a timeperoid of '10'
    EMA = talib.EMA(cl,timeperiod=10)
    # Add the EMA value to the dataframe
    i['EMA'] = EMA
    # Add the trend to the dataframe
    #   If Close value is bigger than EMA -> Uptrend = 1
    #   If Close value is smaller than EMA -> Downtrend = 0
    #   If EMA is empty -> Not possible to define Trend = Null
    i['Trend'] = np.where(i['EMA'] < i['Close'], 1, 0)
    i.loc[i['EMA'].isnull(), 'Trend'] = np.nan

    # Reset the index as the index uf the dataframe is the 'Date'
    i.reset_index(inplace=True)
    #Convert the 'Date' column to compare dates
    i['Date'] = pd.to_datetime(i['Date'])   

    # Remove all detected candlesticks if the date is
    #   Smaller than 2000-1-1
    #   Or Bigger than 2021-12-31
    for candle in candle_names:
        date_to_compare = datetime.date(2022, 12, 31)
        mask = i['Date'].apply(lambda ts: ts.date() > date_to_compare)
        i.loc[mask, [candle]] = 0
        date_to_compare2 = datetime.date(2000, 1, 1)
        mask2 = i['Date'].apply(lambda ts: ts.date() < date_to_compare2)
        i.loc[mask2, [candle]] = 0

    # Save the dataframe as a CSV file
    path = r'Stock-Data/Healthcare/' + i.name + '.csv'
    i.to_csv(path)