; Getting started with Racket - Part 1
; Prog Spring 21
; Sila. April 30th 2021.

(define pi (/ 22 7))

(define (cubic z) (* (* z z) z))

(define (superabs x)
    (cond ((> x 0) x)
          ((= x 0) 0)
          ((< x 0) (* x -1))))

(define (newsupabs x)
    (if (>= 5 8) 3 (+ 7 2)))

(define (newsuperabs x)
    (if (>= x 0) x (* x -1)))

(define (fact n)
    (if (= n 0)
        1
        (* n (fact (- n 1)))))