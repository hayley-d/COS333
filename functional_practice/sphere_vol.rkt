#lang racket

(define (sphere-vol radius)
  (let ((p (/ 22 7)))
    (* (/ 4 3) (* p (* radius (* radius radius))))))

(display (= (sphere-vol 3.2) 137.189))
