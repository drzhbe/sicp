; recursive abstract product function
(define (product term a next b)
    (if (> a b)
        1
        (* (term a)
            (product term (next a) next b))
        )
    )

(define (identity x) x)
(define (inc x) (+ x 1))

(product identity 1 inc 4)