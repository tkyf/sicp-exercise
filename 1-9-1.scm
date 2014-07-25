#lang racket
; 一つ目の方法の場合

(define (inc n)
    (+ n 1))

(define (dec n)
    (- n 1))


(define (add a b)
    (if (= a 0)
            b
                  (inc (add (dec a) b))))

; 再帰的プロセス
(add 4 5)
(inc (add (dec 4) 5))
(inc (add 3 5))
(inc (inc (add (dec 3) 5)))
(inc (inc (add 2 5)))
(inc (inc (inc (add (dec 2) 5))))
(inc (inc (inc (add 1 5))))
(inc (inc (inc (inc (add (dec 1) 5)))))
(inc (inc (inc (inc (add 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9



