#lang racket

(define (cylinder-vol radius height)
    (let ((p (/ 22 7)))
    (cond 
      ((or (< radius 0) (< height 0)) 0)
      (else (* p (* (* radius radius) height))))))
    

(= (cylinder-vol 7 10) 1540) ; Expected 1540
(= (cylinder-vol -1 10) 0)
(= (cylinder-vol -100 -10) 0)
