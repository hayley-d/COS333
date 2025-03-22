#lang racket

(define (surface_area width height depth)
    (cons (* width height) (* (* width height) depth)))

(if (pair? (surface_area 2 2 2))
  "True"
  "False")

(if (equal? (surface_area 2 2 2) (cons 4 8))
  "True"
  "False")
