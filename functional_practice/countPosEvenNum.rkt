#lang racket

(define (countPosEvenNum lst)
  (define (helper temp lst)
    (cond
      ((null? lst) temp)
      ((and (even? (car lst)) (not (<= (car lst) 0))) (helper (+ temp 1) (cdr lst)))
      (else (helper temp (cdr lst)))))
  (helper 0 lst))

(display (countPosEvenNum '(1 2 3 4 6 -2 -4)))
(newline)
