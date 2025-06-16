#lang racket
(define (countDivisors n lst)
  (define (helper curr lst)
    (cond
      [(null? lst) curr]
      [(= (modulo n (car lst)) 0) (helper (+ curr 1) (cdr lst))]
      [else (helper curr (cdr lst))]))
  (helper 0 lst)
)

(define (coneArea r l)
  (let ([p 22/7])
    (+ (* p (* r r)) (* p (* r l)))))

(countDivisors 6 '()) ;0
(countDivisors 6 '(4 12)) ;0
(countDivisors 6 '(1 4 3 12)) ;2

(display (coneArea 1.2 2.1)) ; 12.....