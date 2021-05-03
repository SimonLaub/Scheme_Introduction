; Getting started with Scheme/Racket 
; Scheme Program:
;
; New Sqrt method
; Prog Spring 21
; Sila. April 30th 2021.

(define (square x)
  (* x x))

(define (newsqrt x)
  (define (average lhs rhs)
    (/ (+ lhs rhs) 2))
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) .0001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (try guess)
    (if (good-enough? guess)
	guess
	(try (improve guess))))
  (try 1))