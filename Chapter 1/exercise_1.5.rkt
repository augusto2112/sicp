#lang racket


; If the interpreter is using applicative order, the program would enter an infinite recursion evaluating (test 0 (p))
; if it's using normal order, it would evaluate to 0, as (p) would never be evaluated