#lang racket


(define (sum a b)
  (+ a b))

(define (multiply a b)
  (* a b))

(define (minus a b)
  (- a b))

(define (sumList lst)
  (if (empty? lst)
      ; then
      0
      ;else
      (+ (car lst) (sumList (cdr lst)))))

(define (addPositives lst)
  (cond
    [(empty? lst) 0]
    [(> (car lst) 0) (+ (car lst) (addPositives (cdr lst)))]
    [else (addPositives (cdr lst))]))

(define (addNegatives lst)
  (cond
    [(empty? lst) 0]
    [(> 0 (car lst)) (+ (car lst) (addNegatives (cdr lst)))]
    [else (addNegatives (cdr lst))]))

(define (addDoublePositives lst)
  (cond
    [(empty? lst) 0]
    [(> (car lst) 0) (+ (* 2 (car lst)) (addDoublePositives (cdr lst)))]
    [else (addDoublePositives (cdr lst))]))

(define (makePositive lst)
  (cond
    [(empty? lst) '()]
    [(> 0 (car lst)) (cons (* -1 (car lst)) (makePositive (cdr lst)))]
    [else (cons (car lst) (makePositive (cdr lst)))]))

(define (makeNegative lst)
  (cond
    [(empty? lst) '()]
    [(> (car lst) 0) (cons (* -1 (car lst)) (makeNegative (cdr lst)))]
    [else (cons (car lst) (makeNegative (cdr lst)))]))

(define (countLst count)
  (define (helper curr lst)
    (cond
      [(> curr count) lst]
      [else (cons curr (helper (+ curr 1) lst))])
    )
  (helper 0 '()))

(define (countTrue lst)
  (define (helper curr lst)
    (cond
      [(empty? lst) curr]
      [(equal? (car lst) #t) (helper (+ curr 1) (cdr lst))]
      [else (helper curr (cdr lst))]))
  (helper 0 lst))

(define (countFalse lst)
  (define (helper curr lst)
    (cond
      [(empty? lst) curr]
      [(equal? (car lst) #f) (helper (+ 1 curr) (cdr lst))]
      [else (helper curr (cdr lst))]))
  (helper 0 lst))

(define (isEven n)
  (cond
    [(= n 2) #t]
    [(> 0 n) #f]
    [else (isEven (- n 2))]))

(define (isOdd n)
  (cond
    [(= 2 n) #f]
    [(> 0 n) #t]
    [else (isOdd (- n 2))]))

(define (modulo a b)
  (cond
    [(= 0 b) "Error"]
    [(< b 0) "Error"]
    [(> 0 a) (negModulo a b)]
    [else (posModulo a b)]))

(define (posModulo a b)
  (cond
    [(< a b) a]
    [else (posModulo (- a b) b)]))

(define (negModulo a b)
  (cond
    [(>= a 0) a]
    [else (negModulo (+ a b) b)]))

(modulo 10 3)
(modulo -10 3)



