#lang racket
(define (DoublePositivesAbsNegativesStripZeros lst)
  (define (helper lst)
    (cond
      [(empty? lst) '()]
      [(= (car lst) 0) (DoublePositivesAbsNegativesStripZeros (cdr lst))]
      [(< (car lst) 0) (cons (abs (car lst)) (DoublePositivesAbsNegativesStripZeros (cdr lst)))] ;negative
      [else (cons (double (car lst)) (DoublePositivesAbsNegativesStripZeros (cdr lst)))]))
  (helper lst)
)

(define (abs n)
  (cond
    [(< n 0) (* -1 n)]
    [else n]))

(define (double n)
  (* n 2))

(DoublePositivesAbsNegativesStripZeros '(0 2 -2 3 -3 4 0 -6))
(DoublePositivesAbsNegativesStripZeros '(1 2 3))