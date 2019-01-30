#lang sicp


(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (factorial n)
  (product identity 1 inc n))

(define (pi-approx n)
  (define (term n)
    (if (even? n)
        (/ (+ n 2) (+ n 3))
        (/ (+ n 3) (+ n 2))))
  (* (product term 0 inc n) 4.0))

(define (product-iter term a next b)
  (define (loop a accum)
    (if (> a b)
        accum
        (loop (next a) (* (term a) accum))))
  (loop a 1))

(define (factorial-iter n)
  (product-iter identity 1 inc n))


