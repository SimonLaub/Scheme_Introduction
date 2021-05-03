; Getting started with Scheme/Racket
; Prog Spring 21
; 
; Sila. April 30th 2021.
;
; Fibonacci numbers

(define (fibonacci n)
  (if (< n 2)
      n
      (+ (fibonacci (- n 1))
         (fibonacci (- n 2)))))

(define print-fibo
  (lambda (n)
    (cond ((> n 0)              ; keep iterating if we haven't reached zero
           (print-fibo (- n 1)) ; advance the recursion
           (display (fibonacci n))   ; display current value of fibo
           (newline)))))  