#lang racket
; HEADER
; Name : Marina Nasralla
; Date : 7 / 15 /2023
; Title : Full Adder
; Desc: Simulate logic gates and a fulle adder using scheme functions

(define (l-and x y)
  (if(and (= x 1) (= y 1))
  1
  0
  )
 ); return true if both bits are true

(define (l-not x)
  (if (= x 0)
   1
   0)
  ) ; return opposite of input

(define (l-or x y)
  (if (or (= x 1) (= y 1))
    1
    0)
  ) ; return true if at least one bit is true

(define (l-xor x y)
  (cond
    ((= x y) 0)
    ((and (= x 0) (= y 1)) 1)
    ((and (= y 0) (= x 1)) 1)
    )
  ) ; return true if only 1 bit is true (no more no less)

(define (fulladder x a b)
  (let ((s 0)
        (c 0)) ; declare sum and carry
     (set! s (l-xor x (l-xor a b)))
     (set! c (l-or (l-and x (l-or a b)) (l-and a b))) ; translate circuit and call functions
     (list s c) ; return list
    )
  )
;

; testing according to truth table of a full adder
(fulladder 0 0 0) ; 0 0 
(fulladder 0 0 1) ; 1 0
(fulladder 0 1 0) ; 1 0
(fulladder 0 1 1) ; 0 1 
(fulladder 1 0 0) ; 1 0
(fulladder 1 0 1) ; 0 1
(fulladder 1 1 0) ; 0 1
(fulladder 1 1 1) ; 1 1
