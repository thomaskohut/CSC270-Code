#lang scheme
;; define one or more expressions that can be used to
;; computer the average of a list

;; insert work below
(define (average rem)
    (define (sum rem)
        (cond
            [(null? rem) 0]
            [else  (+ (car rem) (sum(cdr rem)))])
    )

    (define (len rem)
        (cond
            [(null? rem) 0]
            [else  (+ 1 (len(cdr rem)))])
    )

    (/ (sum rem) (len rem))
)

;; insert work above

(print (average '(3 14 15 9 62 64 37)))
