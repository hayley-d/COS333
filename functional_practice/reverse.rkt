#lang racket

(define (rev lst)
  (cond
    ((null? lst) '())
    (else (append (rev (cdr lst)) (list (car lst))))))

(display (rev '(A B C D)))
(newline)
