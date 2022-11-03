;;; Assignment01: Scheme

(define (over-or-under a b)
  (if (> a b)
    1 
    (if (< a b) -1 0)
  )
)


(define (make-adder n)
  (lambda (x) (+ x n))
)


(define (composed f g)
  (lambda (x) (f (g x)))
)


(define (remainder a b)
  (- a (* b (quotient a b))))

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))
  )
)


(define (square x) (* x x))

(define (pow base exp) ; exp >= 0
  (if (even? exp)
    (if (= exp 0)
      1
      (square (pow base (quotient exp 2)))
    )
    (* base (square (pow base (quotient exp 2))))
  )
)
