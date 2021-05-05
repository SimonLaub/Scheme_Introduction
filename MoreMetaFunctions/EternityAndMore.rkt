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

#lang Racket

; From Little Schemer chapter 9.
; This is not so good:
(define eternity
(lambda (x )
( eternity x )))


(define (all-positive x)
  (cond ((null? x) #t)
        ((<= (car x) 0) #f)
        (else (all-positive (cdr x)))))


;Using a map function
(map cdr '((1 2) (3 4) (5 6)))

;Using a filter
(filter (lambda (n) (> n 10)) '(5 10 15 20))

; Add to a list
(define (add-n-to-list alist n)
  (map (lambda (x) (+ n x)) alist))
; (add-n-to-list (list 1 3 5) 3)

; Define your own map function
(define (my-map f s)
   (if (null? s)
       '()
       (cons (f (car s)) (my-map f (cdr s)))))

; use it
; (my-map (lambda (x) (* 2 x)) (list 1 2))

;run a function on a number
(define (runfunc num)
  (lambda (x) (x num)))

;(define s (runfunc 3))
; (s (lambda (x) (* x x)))
