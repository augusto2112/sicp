#lang sicp

(define (sum-recursive term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum-recursive term (next a) next b))))

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (cube x) (* x x x))
  
(define (sum-cubes a b)
  (sum cube a inc b))

(define (sum-cubes-rec a b)
  (sum-recursive cube a inc b))

(= (sum-cubes 1 10) (sum-cubes-rec 1 10))