(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; 正規順序の場合
(test 0 (p))
; test を評価
(if (= 0 0)
    0
    (p))
; if 式を評価
0

; 作用的順序の場合

(test 0 (p))
; (p) を評価、無限ループになる

