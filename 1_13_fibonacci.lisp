(define (fib n)
    (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))))
(define (prove n)
    ; golden ratio: 1.618
    (= (fib n) (round (/ (expt 1.618 n) (sqrt 5)))))
(prove 8)
