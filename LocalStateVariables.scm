; Getting started with Scheme/Racket
; Prog Spring 21
; 
; Sila. April 30th 2021.
;
; Scheme/Racket Program:
; Local State Variables. 
; Chapter 3, p 222, in Structure and Interpretation in Computer Programs.
; Abelson and Sussman


;(define balance 100)

;(define (withdraw amount)
;   (if (>= balance amount)
;     (begin (set! balance (- balance amount))
;            balance)
;     "Insufficient funds"))

(define new-withdraw
  (let ((balance 100))
    (lambda (amount)
      (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds"))))

(define (make-withdraw balance)
   (lambda (amount)
      (if (>= balance amount)
         (begin (set! balance (- balance amount))
                balance)
         "Insufficient funds")))

(define W1 (make-withdraw 100))
(define W2 (make-withdraw 100))

; (W1 50)