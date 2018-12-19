#lang sicp

(define (square n) (* n n ))


(define (fast-expt b n)
  (define (fast-expt_ b n a)
    (cond ((= n 0)
           a)
          ((even? n)
           (fast-expt_ (square b) (/ n 2) a))
          (else 
           (fast-expt_ b (- n 1) (* a b)))))
  (fast-expt_ b n 1))