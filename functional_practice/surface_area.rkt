#lang racket

(define (surface_area width height depth)
    (cons (* width height) (* (* width height) depth)))

(define (func width height depth)
  (list (* 2 (+ (* width height) (* width depth) (* height depth)))
        (* (* width height) depth)))

(if (pair? (surface_area 2 2 2))
  "True"
  "False")

(if (equal? (surface_area 2 2 2) (cons 4 8))
  "True"
  "False")

(if (equal? (func 4 2 6) '(88 48))
  "True"
  "False")
