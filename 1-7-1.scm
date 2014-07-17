#lang racket

; 非常に小さい値の平方根を求める場合の、正確でない値が出る例
;


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
    (display "/ x guess:")
      (print (/ x guess))
        (display "\n")
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



(sqrt2 0.00001)
; 1.0
; enough?: 0.99999
; / x guess:1e-005
; 0.500005
; enough?: 0.24999500002500002
; / x guess:1.999980000199998e-005
; 0.250012499900001
; enough?: 0.06249625010624801
; / x guess:3.999800011599324e-005
; 0.1250262489500585
; enough?: 0.015621562926522007
; / x guess:7.998320419893971e-005
; 0.06255311607712873
; enough?: 0.00390289233095874
; / x guess:0.00015986413830559429
; 0.03135649010771716
; enough?: 0.0009732294718753642
; 0.03135649010771716

; より精度の高い平方根（組み込みの関数を使用）
(sqrt 0.00001)
; 0.0031622776601683794


; 誤差が出る原因は、誤差の許容範囲が0.001であるため.
; それよりも小さい値の平方根を求める場合、判定結果がすぐに許容範囲内になり、
; 正しく判定できない。

