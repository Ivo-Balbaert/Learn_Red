Red []
; alternative: use {} instead pf ""
url-base: http://finance.google.com/finance/historical?output=csv&q=AAPL
start-date: ask "Start date (YYYY-MM-DD): "
url: rejoin [url-base "&startdate=" start-date]
quotes: read url
write %quotes_start.csv quotes
