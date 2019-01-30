#lang sicp

(define (square n) (* n n))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) 
         n)
        ((divides? test-divisor n) 
         test-divisor)
        (else (find-divisor 
               n 
               (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))


(define (filtered-accumulate combiner filter null-value term a next b)
  (define (loop a accum)
    (define next-value (term a))
    (if (> a b)
        accum
        (loop (next a) (combiner (if (filter next-value) next-value null-value) accum))))
  (loop a null-value))

(define (sum-primes a b)
  (filtered-accumulate + prime? 0 identity a inc b))

(define (product-gcd n)
  (define (gcd1? i) (= (gcd i n) 1))
  (filtered-accumulate * gcd1? 1 identity 2 inc n))






