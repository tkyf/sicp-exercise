#lang racket

; pascalの三角形を出力しようと思ったら、リストの結合とか
; 必要になるんじゃないかと思ったけど、ググった感じだと、
; 上からn段、左からk番目の要素を計算するらしい。

(define (pascal n k)
    (if (< n k) 
        0
        (if (or (= n 1) (= k 1))
            1
            (+ (pascal (- n 1) (- k 1))
                (pascal (- n 1) k)))))

(display (pascal 1 1))
(display "\n")
(display (pascal 2 1))
(display (pascal 2 2))
(display "\n")
(display (pascal 3 1))
(display (pascal 3 2))
(display (pascal 3 3))
(display "\n")
(display (pascal 4 1))
(display (pascal 4 2))
(display (pascal 4 3))
(display (pascal 4 4))
(display "\n")
(display (pascal 5 1))
(display (pascal 5 2))
(display (pascal 5 3))
(display (pascal 5 4))
(display (pascal 5 5))
; これ絶対短く書けるやつ

