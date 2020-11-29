#lang scheme
;; define one or more expressions that can be used to
;; count the number of items on a list without using 
;; the length operator

;; insert work below
(define (count-list rem)
    (cond
        [(null? rem) 0]
        [else (+ 1 (count-list(cdr rem)))])
)
;; insert work above

(print (count-list '(3 14 15 9 62 64 37)))