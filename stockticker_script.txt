#!/bin/bash

#Script used to prompt user for stock tickers and open Yahoo Finance in web browser with ticker provided.

echo "ENTER TOP THREE STOCKS ON YOUR WATCHLIST. TICKER FORMAT ONLY"
read -p "ENTER TOP 1: " TICKER
echo $TICKER

read -p "ENTER TOP 2: " TICKER2
echo $TICKER2

read -p "ENTER TOP 3: " TICKER3
echo $TICKER3

echo "OPENING BROWER NOW..."

xdg-open https://finance.yahoo.com/quote/$TICKER?p=$TICKER'&'.tsrc=fin-srch
xdg-open https://finance.yahoo.com/quote/$TICKER2?p=$TICKER2'&'.tsrc=fin-srch
xdg-open https://finance.yahoo.com/quote/$TICKER3?p=$TICKER3'&'.tsrc=fin-srch
