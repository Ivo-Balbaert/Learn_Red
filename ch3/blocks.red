Red []    ; minimal Red header/script

; block!
[
    "Jef"    jef@amz.com   #213-555-1010
    "Bill"   billg@ms.com  #315-555-1234
    "Steve"  jobs@apl.com  #408-555-4321
]

to-block {1 2 3}  ;== [1 2 3]

loop 10 [prin "hello" print " world"]

; foreach [site action] sites [
;     data: read site
;     do action
; ]

[ [125 12] [256 26] ]  ; nested blocks

; parens:
(1 + 2)  ;== 3
quote (1 + 2)       ;== (1 + 2)
type? quote (1 + 2) ;== paren!

