#lang sicp


(define (double n) (* n 2))

(define (halve n) (/ n 2))

(define (mult a b)
  (cond ((= b 0) 0)
        ((even? b) (double (mult a (halve b))))
        (else (+ a (mult a (- b 1))))))