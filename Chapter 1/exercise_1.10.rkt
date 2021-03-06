#lang racket

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))


;(A 1 10)
;(A (- 1 1) (A 1 (- 10 1)))
;(A (- 1 1) (A 1 9))
;(A (- 1 1) (A (- 1 1) (A 1 8)))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A 1 7))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 6)))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A 1 5))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A (-1 1) (A 1 4)))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A (-1 1) (A (- 1 1) (A 1 3))))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A (-1 1) (A (- 1 1) (A (- 1 1) (A 1 2)))))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 1))))))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) 2)))))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A (-1 1) (A (- 1 1) (A (- 1 1) (A 0 2)))))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A (-1 1) (A (- 1 1) (A (- 1 1) 4))))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A (-1 1) (A (- 1 1) (A 0 4))))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A (-1 1) (A (- 1 1) 8)))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A (-1 1) (A 0 8)))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A (-1 1) 16))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) (A 0 16))))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (-1 1) 32)))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 0 32)))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) 64))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) (A 0 64))))
;(A (-1 1) (A (- 1 1) (A (- 1 1) 128)))
;(A (-1 1) (A (- 1 1) (A 0 128)))
;(A (-1 1) (A (- 1 1) 256))
;(A (-1 1) (A 0 256))
;(A (-1 1) 512)
;(A 0 512)
;1024


;(A 2 4)
;(A (- 2 1) (A 2 3))
;(A (- 2 1) (A (- 2 1) (A 2 2)))
;(A (- 2 1) (A (- 2 1) (A (- 2 1) (A 2 1))))
;(A (- 2 1) (A (- 2 1) (A (- 2 1) 2)))
;(A (- 2 1) (A (- 2 1) (A 1 2)))
;(A (- 2 1) (A (- 2 1) (A (- 1 1) (A 1 1))))
;(A (- 2 1) (A (- 2 1) (A (- 1 1) 2)))
;(A (- 2 1) (A (- 2 1) (A 0 2)))
;(A (- 2 1) (A (- 2 1) 4))
;(A (- 2 1) (A 1 4))
;(A (- 2 1) (A (- 1 1) (A 1 3)))
;(A (- 2 1) (A (- 1 1) (A (- 1 1) (A 1 2))))
;(A (- 2 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 1)))))
;(A (- 2 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) 2))))
;(A (- 2 1) (A (- 1 1) (A (- 1 1) (A 0 2))))
;(A (- 2 1) (A (- 1 1) (A (- 1 1) 4)))
;(A (- 2 1) (A (- 1 1) (A 0 4)))
;(A (- 2 1) (A (- 1 1) 8))
;(A (- 2 1) (A 0 8))
;(A (- 2 1) 16)
;(A 1 16)
;(A (- 1 1) (A (- 1 1) (A 1 15)))
;(A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 14))))
;...
;(A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 1))))))))))))))))
;(A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) 2)))))))))))))))
;...
;65536 

;(A 3 3)
;(A (- 3 1) (A 3 2))
;(A (- 3 1) (A (- 3 1) (A 3 1)))
;(A (- 3 1) (A (- 3 1) 2))
;(A (- 3 1) (A 2 2))
;(A (- 3 1) (A (- 2 1) (A 2 1)))
;(A (- 3 1) (A (- 2 1) 2))
;(A (- 3 1) (A 1 2))
;(A (- 3 1) (A (- 1 1) (A 1 1)))
;(A (- 3 1) (A (- 1 1) 2))
;(A (- 3 1) (A 0 2))
;(A (- 3 1) 4)
;(A 2 4)
;as expanded before:
;65536


(define (f n) (A 0 n))
;; (f n) = 2 * n

(define (g n) (A 1 n))
;; (g n) = 2^n

(define (h n) (A 2 n))
;; (h n) = 2^(h (- n 1))


