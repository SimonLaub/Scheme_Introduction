; Getting started with Racket - Question 2
; Racket Program: Guess the number
; Prog Spring 21
; Sila. April 30th 2021.

; What does this give when you run the code?

#lang racket

(define NUM 47)
(define TRIES 6)

(define (num-message delta)
  (cond [(< delta 0) "... Too low ..."]
        [(> delta 0) "... Too high ..."]
        [else        "Correct! Well guessed! Or you read and understood the code .. !"]))

(define (guess-number target)
  (let ([delta (- (read) target)])
       (displayln (num-message delta))
       (zero? delta)))

(define (number-guessing-game target tries)
  (cond [(zero? tries)         (displayln "Too many attempts")]
        [(guess-number target) (displayln "You won")]
        [else                  (number-guessing-game target (- tries 1))]))

(number-guessing-game NUM TRIES)
