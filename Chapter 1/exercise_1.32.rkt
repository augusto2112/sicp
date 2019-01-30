#lang sicp

(define (cube x) (* x x x))

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
         (accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
  (accumulate-iter + 0 term a next b))

(define (sum-integers a b)
  (sum identity a inc b))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b) 
     dx))

(define (product term a next b)
  (accumulate-iter * 1 term a next b))

(define (factorial n)
  (product identity 1 inc n))


(define (accumulate-iter combiner null-value term a next b)
  (define (loop a accum)
    (if (> a b)
        accum
        (loop (next a) (combiner (term a ) accum))))
  (loop a null-value))

