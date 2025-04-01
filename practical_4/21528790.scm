#lang racket

(define (DoublePositivesAbsNegativesStripZeros lst)
  (cond
    [(empty? lst) '()]
    [(= (first lst) 0) (DoublePositivesAbsNegativesStripZeros (rest lst))]
    [(> (first lst) 0) (cons (* 2 (first lst)) (DoublePositivesAbsNegativesStripZeros (rest lst)))]
    [else (cons (abs (first lst)) (DoublePositivesAbsNegativesStripZeros (rest lst)))]))

(equal? (DoublePositivesAbsNegativesStripZeros '(1 2 3)) '(2 4 6))

(equal? (DoublePositivesAbsNegativesStripZeros '(0 2 -2 3 -3 4 0 -6)) '(4 2 6 3 8 6))

(equal? (DoublePositivesAbsNegativesStripZeros '()) '())
; => ()

