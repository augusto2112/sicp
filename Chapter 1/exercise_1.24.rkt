#lang sicp

(define (square x) (* x x))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (fast-prime?  n 100)
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

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder 
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder 
          (* base (expmod base (- exp 1) m))
          m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) 
         (fast-prime? n (- times 1)))
        (else false)))


; The algorithms does grow logarithmically, it has two big problems though:
; For smallish numbers it has a big overhead, making it worse than the prime? algorithm
; For big numbers, if the numbers of tests is a constant, the chance of a number being prime is less and less likely

