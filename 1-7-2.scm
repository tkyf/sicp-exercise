; 非常に値が大きい時
; imporoveの時の除算で丸め誤差が出てる？
; 途中経過を表示する。

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

; 実行
(sqrt2 1e+015)


