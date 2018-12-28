#lang sicp

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder 
          (* (expmod base (/ exp 2) m)
             (expmod base (/ exp 2) m))
          m))
        (else
         (remainder 
          (* base 
             (expmod base (- exp 1) m))
          m))))

; The original expmod takes logarithmic time. But by having two recursive calls
; we have a tree with logarithmic size but with exponential number of nodes
; making it linear overall
