;;; Assignment 2, section 2: Scheme Lists

;;; Required Problems


; Problem L1

(define lst
  (cons (cons 1 nil)
    (cons 2 
      (cons
        (cons 3 (cons 4 nil))
        (cons 5 nil)
      )
    )
  )
)


; Problem L2

(define (filter-lst fn lst)
  (if (null? lst)
    lst
    (if (fn (car lst))
      (cons
        (car lst)
        (filter-lst fn (cdr lst))
      )
      (filter-lst fn (cdr lst))
    )
  )
)
