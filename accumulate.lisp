(define (accumulate combine null-value term a next b)
    (if (> a b)
        null-value
        (combine (term a) (accumulate combine null-value term (next a) next b))
        )
    )

(define (product-combination a b) (* a b))
(define (product term a next b)
    (accumulate product-combination 1 term a next b)
    )

(define (identity x) x)
(define (inc x) (+ x 1))

(product identity 1 inc 5)