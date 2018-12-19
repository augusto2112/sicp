#lang racket

; A function f is defined by the rule that f(n)=n if n<3 and f(n)=f(n−1)+2f(n−2)+3f(n−3) if n≥3.
; Write a procedure that computes f by means of a recursive process.
; Write a procedure that computes f by means of an iterative process.

; Recursive
(define (f1 n)
  (if (< n 3)
      n
      (+ (f1 (- n 1)) (* 2 (f1 (- n 2))) (* 3 (f1 (- n 3))))))

; Iterative
(define (f2 n)
  (define (f2-iter first second third n)
    (cond ((= n 0) first)
          ((= n 1) second)
          ((= n 2) third)
          (else (f2-iter second third (+ third (* 2 second) (* 3 first)) (- n 1)))))
  (f2-iter 0 1 2 n))