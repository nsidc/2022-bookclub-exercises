#lang racket

(require srfi/1)

(define (divisibleby divisor num)
  (= 0 (modulo num divisor)))

(define (fizzbuzz n)
  (cond ((and (divisibleby 3 n) (divisibleby 5 n)) (list n "fizzbuzz"))
        ((divisibleby 3 n) (list n "fizz"))
        ((divisibleby 5 n) (list n "buzz"))
        (else (list n "nope"))))

(map fizzbuzz (iota 10 1))
