; 非常に値が大きい時、処理が止まらなくなる。
; 確認のため途中経過を表示する。

#lang racket

(define (average x y)
    (/ (+ x y) 2))

(define (square x) (* x x))


(define (sqrt-iter guess x)
    (print guess)  ; 途中経過
      (display "\n") ; 途中経過
        (if (good-enough? guess x)
                    guess
            (sqrt-iter (improve guess x)
                        x)))

(define (improve guess x)
    (average guess (/ x guess))
      )


(define (good-enough? guess x)
    (display "enough?: ")                   ; 途中経過
    (print (abs (- (square guess) x))) ; 途中経過
    (display "\n")                     ; 途中経過
    (< (abs (- (square guess) x)) 0.001)
        )

(define (sqrt2 x)
    (sqrt-iter 1.0 x))


; うまくいく例
(sqrt2 1e14)
; 10000000.0
(square (sqrt2 1e14))
; 1e+014

;うまくいかない例
(sqrt2 1e15)
;1.0
;enough?: 999999999999999.0
;500000000000000.5
;enough?: 2.499999999999995e+029
;250000000000001.25
;enough?: 6.249999999999962e+028
; * 中略 *
; 31622779.27999515
; enough?: 169391290.625
; 31622776.601683907
; enough?: 7.25
; 31622776.601683795
; enough?: 0.125
; 31622776.601683795
; enough?: 0.125
; * 以下ループ *

