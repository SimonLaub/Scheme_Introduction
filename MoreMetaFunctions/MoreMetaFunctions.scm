; Getting started with Scheme/Racket
; Prog Spring 21
; 
; Sila. April 30th 2021.
;
; Scheme/Racket Program:
; Meta-Functions 

; Metaprogramming is a programming technique in which computer programs 
; have the ability to treat other programs as their data. 
; It means that a program can be designed to read, generate, a
; analyze or transform other programs, and even modify itself while running.

(define (times-n n) (lambda (x) (* n x)))
(define times3 (times-n 3))

; > (times3 2)
;6
;>

(define (trpl lst) (map times3 lst))
(trpl (list 1 2 3)) 