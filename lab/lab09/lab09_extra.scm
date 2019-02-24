;; Extra Scheme Questions ;;


; Q5
(define lst
  (list (list 1) 2 (cons 3 4) 5)
)

; Q6
(define (composed f g)
  (define (apply x) (f (g x)))
  apply  
)

; Q7
(define (remove item lst)
  (cond
    ((null? lst) nil)
    ((= (car lst) item) (remove item (cdr lst)))
    (else (cons (car lst) (remove item (cdr lst))))	
  )
)


;;; Tests
(remove 3 nil)
; expect ()
(remove 3 '(1 3 5))
; expect (1 5)
(remove 5 '(5 3 5 5 1 4 5 4))
; expect (3 1 4 4)

; Q8
(define (max a b) (if (> a b) a b))
(define (min a b) (if (> a b) b a))
(define (gcd a b)
  (define c (max a b))
  (define d (min a b))
  (cond 
    ((zero? d) c)
	(else (gcd d (modulo c d)))
  )
)

;;; Tests
(gcd 24 60)
; expect 12
(gcd 1071 462)
; expect 21

; Q9
(define (no-repeats s)
  (cond
    ((null? s) nil)
	(else 
	  (cons (car s) 
	    (no-repeats (filter (helper (car s)) (cdr s)))
	  )
	)
  )
)

(define (helper set)
  (define (apply x) (not (= set x)))
  apply
)

(define (filter f lst)
  'YOUR-CODE-HERE
  (cond 
    ((null? lst) nil)
    ((f (car lst)) (cons (car lst) (filter f (cdr lst))))
    (else (filter f (cdr lst)))
  )
)

; Q10
(define (substitute s old new)
  'YOUR-CODE-HERE
  (cond
    ((null? s) nil)
	((pair? (car s)) (cons (substitute (car s) old new) (substitute (cdr s) old new)))
	((equal? old (car s)) (cons new (substitute (cdr s) old new)))
	(else (cons (car s) (substitute (cdr s) old new)))
  )
)

; Q11
(define (sub-all s olds news)
  'YOUR-CODE-HERE
  (cond 
    ((null? s) nil)
	((null? olds) s)
	(else (sub-all (substitute s (car olds) (car news)) (cdr olds) (cdr news)))
  )
  
)