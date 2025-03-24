#lang racket

(define (contains lst item)
  (cond
    ((null? lst) #f)
    ((eq? (car lst) item) #t)
    (else (contains (cdr lst) item))))

(if (contains '(1 2 3 4) 4)
  (display "Passed")
  (display "Failed"))
(newline)

(if (contains '(1) 5)
  (display "Failed")
  (display "Passed"))
(newline)

