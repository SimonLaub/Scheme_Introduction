; Getting started with Scheme/Racket
; Prog Spring 21
; 
; Sila. April 30th 2021.
;
; Scheme/Racket Program:
; Closures

#lang Racket

#lang racket

(define (counter)
        (define c 0)
        (lambda ()
                (set! c (+ c 1))
                c))

;> (define a (counter))
;> (a)
;1
;> (a)
;2
;> (a)
;3
;> (define b (counter))
;> (b)
;1
;> (a)
;4
;> 
