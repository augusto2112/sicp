#lang sicp

(define (double n) (* n 2))

(define (halve n) (/ n 2))


(define (mult a b)
  (define (mult_ a b accum)
    (cond ((= b 0) accum)
          ((even? b) (mult_ (double a) (halve b) accum))
          (else (mult_ a (- b 1) (+ a accum)))))
  (mult_ a b 0))