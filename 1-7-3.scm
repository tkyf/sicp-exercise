#lang racket

; ある繰り返しから次へのguess への変化に注目した方法

(define (average x y)
    (/ (+ x y) 2))

(define (square x) (* x x))


(define (sqrt-iter guess x)
    (if (good-enough? guess (improve guess x))
            guess
        (sqrt-iter (improve guess x)
                    x)))

(define (improve guess x)
    (average guess (/ x guess))
      )

(define (good-enough? guess improved)
    (< (abs (abs (- guess improved))) 0.001)
      )

(define (sqrt2 x)
    (sqrt-iter 1.0 x))


; 実行
; 大きな数に対してはうまく動く
(square (sqrt2 1e20))
;1e+020
 
; 小さな数に対しては誤差が出る。
(square (sqrt2 1e20))
;1e+020
 
; 式が間違ってるのかな？

