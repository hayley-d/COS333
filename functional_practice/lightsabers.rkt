#lang racket

(define (lightsabers name)
  (if (string=? name "Zach")
    18
    0))

(if (= (lightsabers "Hayley") 0)
  "True"
  "False")
