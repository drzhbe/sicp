(define (accumulate combine null-value term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                  (combine (term a) result))
            )
        )
    (iter a null-value)
    )

(define (product-combination a b) (* a b))
(define (product term a next b)
    (accumulate product-combination 1 term a next b)
    )

(define (identity x) x)
(define (inc x) (+ x 1))

(product identity 1 inc 5)