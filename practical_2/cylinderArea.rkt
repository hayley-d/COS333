#lang racket

(define (area rad height)
  (if (or (<= rad 0) (<= height 0))
    0
    (let ((pi (/ 22 7)))
      (+ (* 2 pi rad height) (* 2 pi rad rad)))))

(area 3.2 2.1)

