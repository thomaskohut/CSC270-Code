;;Scheme Exercise 1
;;Thomas Kohut
;;12/1/29

;;Exercise 2.2.1
    ;;A
        (display (+ (* 1.2 (- 2 (/ 1 3))) -8.7))
    ;;B
        (display (/ (+ (/ 2 3) (/ 4 9)) (- (/ 5 11) (/ 4 3))))
    ;;C
       (display  (+ 1 (/ 1 (+ 2 (/ 1 (+ 1 (/ 1 2)))))))
    ;;D
        (display (* 1 (* -2 (* 3 (* -4 (* 5 (* -6 7)))))))

;;Exercise 2.2.3
    ;;A (answer is (car . cdr))
        (display (cons 'car 'cdr) )
    ;;B (Answer is (this (is silly)))
        (display (list 'this '(is silly)))
   ;;C (Answer is (is this silly?))
        (display (cons 'is '(this silly?)) )
    ;;D (Answer is (+ 2 3))
        (display (quote (+ 2 3)))
    ;;E (Answer is (+ 2 3))
        (display (cons '+ '(2 3)))
    ;;F (Answer is +)
        (display (car '(+ 2 3)))
    ;;G (Answer is (2 3))
        (display (cdr '(+ 2 3)) )
    ;;H (Answer is #<procedure cons>)
        (display cons)
    ;;I (Answer is cons)
        (display (quote cons))
    ;;J (Answer is 'cons)
        (display (quote (quote cons)) )
    ;;K (Answer is quote)
        (display (car (quote (quote cons))))
    ;;L (Answer is 5)
        (display (+ 2 3))
    ;;M (Answer is 5)
        (display (+ '2 '3))
    ;;N (Answer is 5)
        (display  (+ (car '(2 3)) (car (cdr '(2 3)))))
    ;;O (Answer is 5)
        (display ((car (list + - * /)) 2 3) )
;;Exercise 2.2.4
    ;;Displays B
        (display (cdr (car '((a b) (c d)))))
    ;;Displays C
        (display (car (cdr '((a b) (c d))))))
    ;;Displays D
        (display (cdr (car (cdr '((a b) (c d))))))
