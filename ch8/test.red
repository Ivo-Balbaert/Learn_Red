Red []

digit: charset "0123456789"
letter: charset [#"a" - #"z" #"A" - #"Z"]
alpha-num: union letter digit

; parsing exchange rate string:
rate: "<title>1 USD = 0.81191502 EUR</title>"




; QA 6:
parse data [thru "= " copy exchange-rate to " " thru some letter]  ;== true
probe exchange-rate  ;== "0.81191502"

; using variables:
parse "xxxyyy" [copy letters some "x" (n: length? letters) n "y"]  ;== true
letters  ;== "xxx"

