#lang sicp

(define (f g) (g 2))

; The intepreter would try to evaluate the following:
; (f f)
; (f 2)
; (2 2)
; 2 is not a procedure