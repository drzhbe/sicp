(define (fib n)
    (define (even? n) (= (remainder n 2) 0))
    (define (fib-iter a b p q count)
        (cond ((= count 0) b)
            ; ((even? count)
            ;     (fib-iter a
            ;               b
            ;               0
            ;               0
            ;               (/ count 2)))
            (else (fib-iter (+ (* b q) (* a q) (* a p))
                            (+ (* b p) (* a q))
                            p
                            q
                            (- count 1)))
            )
        )
    (fib-iter 1 0 0 1 n)
    )
; (fib 16)
(round (/ (expt 1.618 8) (sqrt 5)))
; 1 2 3 4 5 6 7  8  9  10 11 12  13  14  15  16
; 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987
; (+ (* 0 p) (* 1 q)) = 21
; a = 1, b = 0,
; 3: q = 21
; a = 1, b = 0,
; 2: q = ?
; a = 1, b = 0, p = 0, q = 1
; 1: q = ?

; 2: q = 3
; 1: q = ?