#lang sicp

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

; Normal order evaluation
; remainder is called in two places:
; (= b 0) and in the final a answer
(gcd 206 40)
(gcd 40 (remainder 206 40)) 
(= (remainder 206 40) 0) ; 1
(gcd (remainder 206 40) (remainder 40 (remainder 206 40)))
(= (remainder 40 (remainder 206 40)) 0) ; 3
(gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 
(= (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) 0) ; 7
(gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
(= (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 0) ; 14
; final step
(remainder (remainder 206 40) (remainder 40 (remainder 206 40))) ; 18

; Applicative order evaluation
; remainder is called before the recursive call
(gcd 206 40)
(gcd 206 (remainder 206 40)) ; 1
(gcd 6 (remainder 40 6)) ; 2
(gcd 4 (remainder 6 4)) ; 3
(gcd 2 (remainder 4 2)) ; 4
2
