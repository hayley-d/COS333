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

(if (= (sub 3 4) 1)
  "True"
  "False")

(if (= (sub 5 8) 3)
  "True"
  "False")

(if (= (sub 9 10) 1)
  "True"
  "False")

(if (= (mul 3 4) 12)
  "True"
  "False")

(if (= (mul 5 8) 40)
  "True"
  "False")

(if (= (mul 9 10) 90)
  "True"
  "False")

(if (= (div 4 2) 2)
  "True"
  "False")

(if (= (div 10 5) 2)
  "True"
  "False")

(if (= (div 2 0) 0)
  "True"
  "False")


