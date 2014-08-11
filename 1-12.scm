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

; テスト
(define (pascal-test n)
        (pascal-test-iter 1 1 n))

(define (pascal-test-iter row column n)
    (if (< n row)
            ""
            (cond ((= row column)
                    (display (pascal row column))
                    (display "\n")
                    (pascal-test-iter (+ row 1) 1 n))
                   (else
                    (display (pascal row column))
                    (pascal-test-iter row (+ column 1) n)))))

(pascal-test 5)



