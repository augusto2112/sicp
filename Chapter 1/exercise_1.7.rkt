#lang racket

(define (square x) (* x x))

; Checks that the difference between the guess and last guess is very small, instead of an arbitrary delta
(define (new-good-enough? guess last-guess)
  (and (<= 0.9999 (abs (/ guess last-guess)))
       (<= (abs (/ guess last-guess)) 1.0001)))

(define (average x y) 
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (new-good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
