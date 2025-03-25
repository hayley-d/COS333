#lang racket

(define (dupNonMatchingValues lst item)
  (define (helper temp lst)
    (cond
      ((null? lst) (list temp))
      ((eqv? (car lst) item) (helper (append temp (list (car lst))) (cdr lst)))
      (else (helper (append temp (list (car lst) (car lst))) (cdr lst)))))
  (helper '() lst))

(display (dupNonMatchingValues '(A B C D A B B) 'B))
(newline)
