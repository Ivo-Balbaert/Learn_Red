Red []

; simple code
calc: "3.14 ** 2"
type? calc  ;== string!
calc        ;== "3.14 ** 2"
; :calc or get 'calc give the same result
code: load calc ;== [3.14 ** 2]
code            ;== [3.14 ** 2]
type? code      ;== block!
length? code    ;== 3
do code         ;== 9.8596

code/1: pi      ;== 3.141592653589793
code/3: 3       ;== 3
code            ;== [3.141592653589793 ** 3]
do code         ;== 31.00627668029982

code/2: -       ;*** Script Error: - operator is missing an argument
; solution:
code/2: '-      ;== -
code            ;== [3.141592653589793 - 3]
do code         ;== 0.1415926535897931

append code [- pi]   ;== [3.141592653589793 - 3 - pi]
code                 ;== [3.141592653589793 - 3 - pi]
do code              ;== -3.0

second code            ;== -
type? second code      ;== word!
type? get second code  ;op!

-: :+    ;== make op! [[    "Returns the sum of the two values" ...
code     ;== [3.141592653589793 - 3 - pi]
do code  ;== 9.283185307179586

; a function:
fun: "inc: func [n][n + 1]"  ;== "inc: func [n][n + 1]"
type? fun                    ;== string!
code: load fun               ;== [inc: func [n] [n + 1]]
code                         ;== [inc: func [n] [n + 1]]                   
type? code                   ;== block!

inc 7                        ;== *** Script Error: inc has no value
do code                      ;== func [n][n + 1]
inc 7                        ;== 8
:inc                         ;== func [n][n + 1]
body-of :inc                 ;== [n + 1]
type? :inc                   ;== function!

foreach item code [print [type? item mold item]]
set-word inc:
word func
block [n]
block [n + 1]