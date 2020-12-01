;;Assignment 15
;;Calculates resistance
;;Author: Thomas Kohut

(define (res reslist)
    (define (colorid id)
        (cond 
            ((string=?(car id) "black") "0")   ((string=? (car id) "brown") "1")
            ((string=? (car id) "red") "2")    ((string=? (car id) "orange") "3")
            ((string=? (car id) "yellow") "4") ((string=? (car id) "green") "5")
            ((string=? (car id) "blue") "6")   ((string=? (car id) "violet") "7")
            ((string=? (car id) "grey") "8")   ((string=? (car id) "white") "9")
        [else "-1"])
    )

    ;;Gets first part of list
    (define (pref pta)
        (reverse(cdr (reverse pta)))
    )

    ;;Gets last object in list
    (define (mult expnum)
        (string->number (let ((exp "")) (string-append exp 
            (colorid (car (reverse expnum)))))) ;;Fourth entry in list
    )

    ;;converts strings to corresponding numbers
    (define (getnum a)
        (string->number (let ((x "")) (string-append x 
            (colorid (car (pref a))) ;;First entry in list
            (colorid (car (cdr (pref a)))) ;;Second entry in list
            (colorid (car (cdr (cdr (pref a)))))))) ;;Third entry in list
    )
    
    ;;Calculates resistance
    (* (getnum reslist) (expt 10 (mult reslist)))
)

(display ((res '(("red") ("yellow") ("black") ("red")))))