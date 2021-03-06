; efficiency: (theta (log n))
(define (even? n) (= (remainder n 2) 0))
(define (expmod base exp m)
    (define (carmichael? n)
        (newline)
        (display n)
        (if (= n 1) n n))
    (cond ((= exp 0) 1)
          ((even? exp)
            ; (remainder (carmichael? (square (expmod base (/ exp 2) m)))
            ;             m))
            (carmichael? (remainder (square (expmod base (/ exp 2) m))
                                    m)))
          (else (remainder (* base (expmod base (- exp 1) m))
                            m))
          )
    )
(define (fermat-test n)
    (define (try-it a) (newline) (display "checking: ") (display a) (newline) (= (expmod a (- n 1) n) 1))
    (try-it (+ 1 (random (- n 1)))))
(define (fast-prime? n times)
    (cond ((= times 0) #t)
          ((fermat-test n) (fast-prime? n (- times 1)))
          (else #f)
        )
    )
(fast-prime? 561 7)