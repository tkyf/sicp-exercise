#lang racket

(define (square x)
    (* x x))

(define (max_square x y z)
    (if (<= x y)
        (if (<= z x) (+ (square x) (square y y))
            (+ (square y) (square z)))
        (if(<= z y) (+ (square x) (square y))
            (+ (square x) (square z)))))

