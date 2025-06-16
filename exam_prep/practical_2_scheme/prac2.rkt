#lang racket
(define (cylinderArea r h)
  (let ([p 22/7])
    (+ (* 2 (* p (* r r))) (* 2 (* p (* r h))))))

(define (addPositiveEvenValues lst)
  (define (helper curr lst)
    (cond
      [(empty? lst) curr]
      [(and (> (car lst) 0) (isEven (car lst))) (helper (+ curr (car lst)) (cdr lst))] ;positive
      [else (helper curr (cdr lst))]))
  (helper 0 lst))

  
(define (isEven n)
  (cond
    [(= 0 n) #t]
    [(> 0 n) #f]
    [else (isEven (- n 2))]))

(define (abs n)
  (cond
    [(< n 0) (* -1 n)]
    [else n]))

(cylinderArea 3.2 2.2)
(addPositiveEvenValues '())
(addPositiveEvenValues '(1))
(addPositiveEvenValues '(1 2 3 4))
 