Red [
    Title: "Download historical quotes from Google Finance"
]

; 1. Read the url to get the quotes
; 2. Memorize the quotes in a memory variable
quotes: read http://finance.google.com/finance/historical?output=csv&q=AAPL 
; 3. Write the quotes contained in the variable to a csv file
write %quotes.csv quotes