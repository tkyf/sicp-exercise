; new-if の 引数は 作用的順序評価によって評価される。
; そのため、 then-clause と eles-clause も cond による条件分岐より先に
; 評価される。
; よって本来、停止条件付きの再起として意図した部分で、
; 停止条件より先に再起の式が評価され、無限ループになる。

(define (square x) (* x x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))
(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 000.1))

; RS5S では sqrt は定義済だったので sqrt2
(define (sqrt2 x)
  (sqrt-iter 1.0 x))


; 実行
(sqrt2 10)
; 無限ループになる
