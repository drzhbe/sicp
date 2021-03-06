(define (f n)
    (define (f-recursive n)
        (cond ((< n 3) n)
        (else (+ (f-recursive (- n 1))
                 (f-recursive (- n 2))
                 (f-recursive (- n 3)))))
        )
    (define (f-iter first second third count max)
        (define (ff) (+ first second third))
        (define (fs) (f-iter second third (+ first second third) (+ count 1) max))
        (cond ((= count max) (ff))
            (else (fs)))
        )
    (f-iter 0 1 2 3 n))
    ; (f-recursive n))
(f 7)
