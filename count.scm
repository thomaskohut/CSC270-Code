; ;;#lang scheme
; ;; define one or more expressions that can be used to
; ;; computer the average of a list


; ;;Scrap file for scheme

; ;; insert work below
; (define (standard-deviation rem)
;     ;;determines length of list
;     (define (len rem)
;         (cond
;             [(null? rem) 0]
;             [else  (+ 1 (len(cdr rem)))])
;     )

;     ;;determines average of list
;     (define (average rem)
;         (define (avgsum rem)
;             (cond
;                 [(null? rem) 0]
;                 [else  (+ (car rem) (avgsum(cdr rem)))])
;         )
;         (/ (avgsum rem) (len rem))
;     )

;     ;;squares number
;     (define (sq x) (* x x))

;     ;;subtracts squares of 2 numbers
;     (define (difsquared x1 x2)
;         (- (sq x1) (sq x2))
;     ) 

;     (define (sumdif rem regavg)
;         (cond
;             [(null? rem) 0]
;             [else (+ (difsquared (car rem) regavg) (sumdif (cdr rem) regavg))]
;         )
;     )

;     ;;Determines squareroot of variance
;     (define (variancesqrt rem regavg)
;         (sqrt(* (/ 1 (len rem)) (sumdif rem regavg)))
;     )

;     (variancesqrt rem (average rem))
; )

; ;; insert work above

; (display (standard-deviation '(3 14 15 9 62 64 37)))