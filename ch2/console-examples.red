Red [
    Title: "Console examples"
]

"Red is awesome"    ;== "Red is awesome"
; Red is awesome      ;*** Script Error: awesome has no value

7 * 8           ;== 56
2.3 + 1         ;== 3.3
7 / 4           ;== 1
85.3 / 2.5      ;== 34.12
8 - 10          ;== -2
; 2+3             ;*** Syntax Error: invalid integer! at "2+3"

pwd             ;%/E/Red/
what-dir     ;== %/E/Red/

system/console/prompt: does [append to-local-file system/options/path "> "]  ;== 