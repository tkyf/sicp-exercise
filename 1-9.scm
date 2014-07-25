#lang racket

(define (inc n)
    (+ n 1))

(define (dec n)
    (- n 1))


(define (add a b)
    (if (= a 0)
        b
        (inc (add (dec a) b))))

(define (add2 a b)
    (if (= a 0)
        b
        (add2 (dec a) (inc b))))


