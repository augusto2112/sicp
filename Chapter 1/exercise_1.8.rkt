#lang racket

(define (square x) (* x x))

(define (cube-aproximation x y)
  (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (new-good-enough? guess last-guess)
  (and (<= 0.9999 (abs (/ guess last-guess)))
       (<= (abs (/ guess last-guess)) 1.0001)))

(define (cube-iter guess x)
  (if (new-good-enough? guess (cube-aproximation x guess))
      guess
      (cube-iter (cube-aproximation x guess) x)))

(define (cube-root x)
  (cube-iter 1.0 x))
