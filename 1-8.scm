#lang racket

(define (average x y)
    (/ (+ x y) 2))

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (cbrt-iter guess x)
    (if (good-enough? guess (improve guess x))
            guess
        (cbrt-iter (improve guess x)
                    x)))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* guess 2)) 3)
      )

(define (good-enough? guess improved)
    (< (abs (abs (- guess improved))) 0.001)
      )

(define (cbrt x)
    (cbrt-iter 1.0 x))


(cbrt 1000)
;10.000000145265767
(cube (cbrt 1000))
;1000.0000435797309
 
