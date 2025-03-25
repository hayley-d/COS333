#lang racket

(define (cone-vol radius height)
  (let ((p (/ 22 7)))
    (* p (* (* radius radius) (/ height 3)))))


(if (= (cone-vol 3 99) 933.05)
  (display "Pass")
  (display "Fail"))
(newline)

