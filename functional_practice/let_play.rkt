#lang racket

(define x 10)

(let ((x 2))
  (+ 1 x)
  (display x)
  (newline)
  )

(display x)
(newline)
