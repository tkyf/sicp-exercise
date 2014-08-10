#lacket

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

