#lang racket

; 再帰的プロセス
(define (f n)
    (cond ((< n 3) n)
    (else (+ (f (- n 1)) 
             (* 2 (f(- n 2))) 
             (* 3 (f(- n 3)))))))

(f 0)
; 0
(f 1)
; 1
(f 2)
; 2
(f 3)
; f(2) + 2f(1) + 3f(0)
; 2 + 2 = 4
(f 4)
; f(3) + 2f(2) + 3f(1)
; 4 + 4 + 3 = 11
(f 5)
; f(4) + 2f(3) + 3f(2)
; 11 + 8 + 6 = 25
(f 10)
; f(9) + 2f(8) + 3f(7)
; 1892
;

; 反復的プロセス
(define (g n)
    (if (< n 3)
        n
        (g-iter 2 1 0 (- n 2))))
(define (g-iter a b c count)
    (if (= count 0)
        a
        (g-iter (+ a (* 2 b) (* 3 c))
                a
                b
                (- count 1))))
 
(g 1)
(g 2)
(g 3)
(g 4)
(g 5)
(g 10)


