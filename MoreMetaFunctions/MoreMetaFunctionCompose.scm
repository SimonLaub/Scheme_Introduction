; Getting started with Scheme/Racket
; Prog Spring 21
; 
; Sila. April 30th 2021.
;
; Scheme/Racket Program:
; Meta-Functions Compose

; Metaprogramming is a programming technique in which computer programs 
; have the ability to treat other programs as their data. 
; It means that a program can be designed to read, generate, a
; analyze or transform other programs, and even modify itself while running.

(define (square x)
  (* x x))

(define (compose f g)
   (lambda (x) (f (g x))))

(define (repeated f n)
    (if (= n 0)
        (lambda (x) x)
        (compose f (repeated f (- n 1)))))

;> (define y (compose square square))
;> (y 2)
;16
;> (define y (repeated square 2))
;> (y 2)
;16
;> (y 3)
;81
;> 



