#lang sicp

(define (square x) (* x x))

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

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) 
                       start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))


(define (search-for-primes start end)
  (define (seach-for-primes_ start end)
    (timed-prime-test start)
    (if (> start end)
        (display "\nend")
        (seach-for-primes_ (+ start 2) end)))
  (if (even? start)
      (seach-for-primes_ (+ start 1) end)
      (seach-for-primes_ start end)))

; More or less sqrt(10) growth, though not exactly (expected, since my computer is doing many other things)

