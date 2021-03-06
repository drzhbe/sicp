(define (expt b n)
    (define (even? n) (= (remainder n 2) 0))
    (define (expt-iter b n a)
        (cond ((or (= n 0) (and (= n 1) (= a b))) a)
            ((even? n)
                (expt-iter (square b) (/ n 2) a))
            (else (expt-iter b (- n 1) (* a b)))
            )
        )
    (expt-iter b n 1)
    )
(expt 2 1000)