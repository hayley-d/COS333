#lang racket
(define (getPositiveOddValues lst)
  (define (helper lst acc)
    (cond
      [(null? lst) '()]
      [(and (> (car lst) 0) (odd? (car lst))) (cons (car lst) (helper (cdr lst) acc))]
      [else (helper (cdr lst) acc)]))
  (helper lst '()))

(define (doublePositives lst)
  (define (helper lst)
    (cond
      [(null? lst) '()]
      [(> (car lst) 0) (cons (* 2 (car lst)) (helper (cdr lst)))]
      [else (helper (cdr lst))]))
  (helper lst))

(define (doublePositiveValues lst)
  (cond
    [(null? lst) '()]
    [(> (car lst) 0) (cons (* 2 (car lst)) (doublePositiveValues (cdr lst)))]
    [else (doublePositiveValues (cdr lst))]))

(define (countPositiveEven lst)
  (define (helper curr lst)
    (cond
      [(null? lst) curr]
      [(and (> (car lst) 0) (even? (car lst))) (helper (+ curr 1) (cdr lst))]
      [else (helper curr (cdr lst))]))
  (helper 0 lst))

(define (countDivisors n lst)
  (define (helper curr lst)
    (cond
      [(null? lst) curr]
      [(equal? (modulo n (car lst)) 0) (helper (+ curr 1) (cdr lst))]
      [else (helper curr (cdr lst))]))
  (helper 0 lst))

(countDivisors 6 '(1 4 2 3 5 6))

(countPositiveEven '())
(countPositiveEven '(1 3 4 5))
(countPositiveEven '(2 4 6 8 10))
(getPositiveOddValues '())
(getPositiveOddValues '(1 2 3 4))
(getPositiveOddValues '(1 2 3 4 -5 -7))
(doublePositives '(1 2 3))
(doublePositiveValues '(1 2 3))