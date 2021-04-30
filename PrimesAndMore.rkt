; Getting started with Racket 
; Racket Program:
; Redefine exp and multiply functions
; Make a GCD
; Calculate primes
; Prog Spring 21
; Sila. April 30th 2021.

; Make own exponential function
(define (newexpt b n)
   (if (= n 0)
       1
       (* b (expt b (- n 1)))))

; Multiplication, redefined
(define (multiply a b)
  (cond
        ((= a 0) 0) 
        ((= a 1) b)
        ((even? a) (multiply (/ a 2) (* b 2)))
        (else (+ b (multiply (- a 1) b)))))

; We have access to a remainder function
(remainder 12 5)

; Greatest common divider
(define (newgcd a b)
     (if (= b 0)
         a
         (newgcd b (remainder a b))))

; Calculate Primes
(define (divides? a b)
  (= (remainder b a) 0))

(define (find-divisor n test-divisor)
  (cond ((> (* test-divisor test-divisor) n) 
         n)
        ((divides? test-divisor n) 
         test-divisor)
        (else (find-divisor 
               n 
               (+ test-divisor 1)))))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (prime? n)
  (= n (smallest-divisor n)))

; List primes
(define list-primes
  (lambda (n)
    (cond ((> n 0)              ; keep iterating if we haven't reached zero
           (list-primes (- n 1)) ; advance the recursion
           (if (prime? n)
              (begin
                (display n)
                (newline)
               )
            )
       )))) 
