#lang racket
; 2つ目の方法の場合

(define (inc n)
    (+ n 1))

(define (dec n)
    (- n 1))

(define (add2 a b)
    (if (= a 0)
        b
        (add2 (dec a) (inc b))))

; 反復的プロセス
(add2 4 5)
(add2 (dec 4) (inc 5))
(add2 3 6)
(add2 (dec 3) (inc 6))
(add2 2 7)
(add2 (dec 2) (inc 7))
(add2 1 8)
(add2 (dec 1) (inc 8))
(add2 0 9)
9


