#lang sicp

(define (square x) (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder 
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder 
          (* base (expmod base (- exp 1) m))
          m))))

(define (charmichael-test n)
  (define (iter a)
    (cond ((= a n) #t)
          ((= (expmod a n n) a) (iter (+ a 1)))
          (#t #f)))
  (iter 0))