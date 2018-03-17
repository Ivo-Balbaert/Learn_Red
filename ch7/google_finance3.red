Red []

url-base: http://finance.google.com/finance/historical?output=csv&q=AAPL
stock: ask "Which stock?"
start-date: ask "Start date (YYYY-MM-DD):"
end-date: ask "End date (YYYY-MM-DD):"
url: rejoin [url-base "&q=" stock "&startdate=" start-date "&enddate=" end-date]
quotes: read url
write %quotes_param.csv quotes
; Which stock? AAPL
; Start date (YYYY-MM-DD): 2017-12-05
; End date (YYYY-MM-DD): 2017-12-25