#lang racket

; (exists? pred lst): F X L -> B
; returns #t if any element of lst satisfies pred, #f otherwise
; : size(lst)=0      -> #f
; : (pred lst[0])=#t -> #t
; : else             -> (exists? pred lst[1..end])
(define exists?
  (lambda (pred lst)
    (if (null? lst)
        #f
        (if (pred (car lst))
            #t
            (exists? pred (cdr lst))))))
