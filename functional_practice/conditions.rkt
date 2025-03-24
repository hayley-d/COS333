#lang racket

(define (foo num)
  (cond
    ((> num 0) "Larger than 0")
    ((= num 0) "Equal to 0")
    ((< num 0) "Smaller than 0")
    (else "Something else idk")))

(if (string=? (foo 1) "Larger than 0")
  (display "Pass")
  (display "Fail"))
(newline)
(if (string=? (foo 0) "Equal to 0")
  (display "Pass")
  (display "Fail"))
(newline)
(if (string=? (foo -1) "Smaller than 0")
  (display "Pass")
  (display "Fail"))
(newline)

