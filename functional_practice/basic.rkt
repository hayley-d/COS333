#lang racket

(define (add x y)
  (+ x y))

(define (sub x y)
  (- y x))

(define (mul x y)
  (* x y))

(define (div x y)
  (if (not (= y 0))
    (/ x y)
    0))

(if (= (add 3 4) 7)
  "True"
  "False")
(if (= (add 5 8) 13)
  "True"
  "False")
(if (= (add 9 10) 19)
  "True"
  "False")

(sub 3 4)
(sub 5 8)
(sub 9 10)

(mul 3 4)
(mul 5 8)
(mul 9 10)

(div 4 2)
(div 10 5)
(div 2 0)


