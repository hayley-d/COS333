#lang racket

(define (countNonMatchingValues lst x)
  (let ((idx 0))
    (define (helper idx lst)
      (cond
        ((null? lst) idx)
        ((not (eqv? (car lst) x)) (helper (+ idx 1) (cdr lst)))
        (else (helper idx (cdr lst)))))
    (helper 0 lst)
    ))

(= (countNonMatchingValues '(1 2 3 4 1 2) 1) 4)
