; from sum.lisp
(define (sum term a next b)
    (cond ((> a b) 0)
          (else (+ (term a)
                   (sum term (next a) next b)))
          )
    )

(define (cube x) (* x x x))

(define (integral f a b dx)
    (define (next x) (+ x dx))
    (* dx
       (sum f a next b))
    )
(integral cube 0 3 0.001)