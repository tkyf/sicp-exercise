(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

(a-plus-abs-b 5 -3)
;8
(a-plus-abs-b 5 3)
;8
;
; a-plus-abs-b 関数は、2つの引数a, bをとり、
; 「bの絶対値」と a の和を返す。
;
; a-plus-abs-b 関数の定義で使われているif式は、
; b が0以上の時、演算子+を返し、0より小さい時、演算子-を返している。
; それにより、aとbの計算時に使われる演算子が変わる。
;
