;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname homework) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Problem 1
; lisp support symbol numbers and booleans
123
"$%"
"<>"

;Problem 2
;empty list
(cons '() '())
;list of symbols and numbers
(cons 1 (cons 2 (cons "a" (cons "b" '()))))
;nested list
(cons 2 (cons (cons "a" '()) '()))

;Problem 3
;(a)
(* (+ 59 8.2) (/ 2.3 1.5))
;(b)
(< 1 2)
(> 1 2 )
(<= 1.3 5.0)
(>= 1.3 5.1)
;(c)
(or (and true false) (not false))
;(d)
(cons 5 (cons 'abc (cons 17 '())))
(car (cdr (cons 5 (cons 'abc (cons 17 '())))))
;(e)
;lisp support symbol number boolean null and cons
(define m +)
m
(define j 10)
j
(define n <)
n
(define k null)
k
(define l (cons 1 '()))
l

;(f)
;example is
(eq? 1 1)
(eq? '(123) '(123))
;The result is false for (eq? ’(1 2 3) ’(1 2 3))

;Problem 4
;(a)
(define x 123)
#|| When I try to redefine x, error message appear saying defined previously and cannot be re-defined
||#
;(b)
(let ((a 10) (b 20)) (* a b))
;(c)
(define add(lambda(x y) (+ x y)))
(add 3 1)
(add 100 200)
(add 1 2)
(add 60 60)

;Problem 5
;(a)
(if (>= 10 2) #true #false)
;(b)
(define c 10)
(define d 20)
(cond ((symbol? 20) 1)
      ((number? 20) 2) (else 0))
      
;Problem 6
(define len (lambda (y)
 (cond ((null? y) 0)
       ((cons? y) (+(len(cdr y)) (len(car y))))
       (else 1))))

(len 'x)
(len '(x 6 1 2))
(len '((1 2) 3))
(len '((2 3) (1 2)) )