#lang sicp

(define (square x) (* x x))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (next n)
  (if (= n 2)
      3
      (+ n 2)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) 
         n)
        ((divides? test-divisor n) 
         test-divisor)
        (else (find-divisor 
               n 
               (next test-divisor)))))

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

; 1.22: 24207+24499+23702+24053+42753+24863+26037 = 190114
; 1.23: 14271 + 14386 + 14724 + 30511+ 15099+ 14299 + 14439 = 117729
; On average, the new version is about 1.6 times faster. This can be explained by the extra conditional statement inside the next function

