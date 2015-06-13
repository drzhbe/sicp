(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* (term a) result)))
            )
    (iter a 1)
    )

(define (identity x) x)
(define (inc x) (+ x 1))

(define (factorial n)
    (product identity 1 inc n)
    )

; (define (pi)
;     (define (vars divisor divisor-turn)
;         (define (term a) (/ a divisor))
;         (define (next a)
    ; 4/3 * 3/5 = 4/5
    ; 6/5 * 5/7 = 6/7
;             (if (divisor-turn)
;                 (vars (+ divisor 2) #f)
                
;                 )
;             )
;         )
;     )