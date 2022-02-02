#lang racket

; (list.any pred lst): F X L -> B
; returns #t if any element of lst satisfies pred, #f otherwise
; : size(lst)=0      -> #f
; : (pred lst[0])=#t -> #t
; : else             -> (list.any pred lst[1..end])
(define list.any
  (lambda (pred lst)
    (if (null? lst)
        #f
        (if (pred (car lst))
            #t
            (list.any pred (cdr lst))))))
