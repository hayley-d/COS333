#lang racket

(define (cylinderArea rad height)
  (if (or (<= rad 0) (<= height 0))
    0
    (let ((pi (/ 22 7)))
      (+ (* 2 pi rad height) (* 2 pi rad rad)))))

(define (addPositiveEvenValues lst)
  (if (null? lst)
    0
    (let ((x (car lst)))
      (if (and (> x 0) (even? x))
        (+ x (addPositiveEvenValues (cdr lst)))
        (addPositiveEvenValues (cdr lst))))))

(cylinderArea 3.2 2.1)
(addPositiveEvenValues '())
(addPositiveEvenValues '(-8 0 7))
(addPositiveEvenValues '(3 4 0 -8 6))

