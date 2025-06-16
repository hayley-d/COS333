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

(define (addValues lst)
  (define (helper curr lst)
    (cond
      [(empty? lst) '()]
      [(and (> (car lst) 0) (isEven (car lst))) (cons (+ curr (car lst)) (helper (+ curr (car lst)) (cdr lst)))]
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

(define (getEveryThirdElement lst)
  (define (helper curr lst)
    (cond
      [(empty? lst) '()]
      [(= (modulo curr 3) 0) (cons (car lst) (helper (+ curr 1) (cdr lst)))]
      [else (helper (+ curr 1) (cdr lst))]))
  (helper 1 lst))

(define (modulo a b)
  (cond
    [(< a b) a]
    [else (modulo (- a b) b)]))


(getEveryThirdElement '())
(getEveryThirdElement '(1 2 3))
(getEveryThirdElement '(1 2 3 4 5 6 7 8 9))
 