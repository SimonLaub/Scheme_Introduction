; Getting started with Scheme/Racket
; Prog Spring 21
; 
; Sila. April 30th 2021.
;
; Scheme/Racket Program:
; Code as Data

#lang Racket

(define s (list (quote +) 4 7))

;> s
;'(+ 4 7)

;> (eval s)
;11
