#lang racket

(define (set-alarm employed vaction)
  (and employed (not vaction)))

(if (set-alarm #t #t)
  (display "Failed")
  (display "Passed"))
(newline)
(if (set-alarm #t #f)
  (display "Passed")
  (display "Failed"))
(newline)
(if (set-alarm #f #t)
  (display "Failed")
  (display "Passed"))
(newline)
(if (set-alarm #f #f)
  (display "Failed")
  (display "Passed"))
(newline)

