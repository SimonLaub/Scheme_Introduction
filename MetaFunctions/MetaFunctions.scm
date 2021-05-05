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


(define (double value)
        (* 2 value))

(define (apply-twice fn value)
        (fn (fn value)))

(apply-twice double 3)

;
; then run on a whole list:
;> (map (lambda (x) (* x 2)) (list 1 2 3))
;(2 4 6)
;> (map (lambda (x) (double x)) (list 1 2 3))
;(2 4 6)
;> (map (lambda (x) (apply-twice double x)) (list 1 2 3))
;(4 8 12)
