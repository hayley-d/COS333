#lang racket

(define (other-angle a b)
  (- 180 (+ a b)))

(= (other-angle 100 20) 60)
(= (other-angle 20 20) 140)
(= (other-angle 80 100) 0)


  
