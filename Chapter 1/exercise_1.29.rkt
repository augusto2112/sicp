#lang sicp

(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (y k) (f (+ a (* k h))))
  (define (term k)
    (cond ((or (= 0 k) (= k n)) (y k))
          ((even? k) (* 2 (y k)))
          (#t (* 4 (y k)))))
  (* (/ h 3) (sum term 0 inc n)))


  