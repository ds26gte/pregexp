;last change 2020-01-29

(define (%lmacro xfmr)
  (let* ([old-datum->syntax-object datum->syntax-object]
         [datum->syntax (lambda (so output)
                          (old-datum->syntax-object
                            (syntax-case so () [(k . stuff) #'k])
                            output))])
    (lambda (so)
      (datum->syntax so
        (apply xfmr (cdr (syntax->datum so)))))))

(define-syntax define-macro
  (syntax-rules ()
    [(define-macro m xfmr)
     (define-syntax m (%lmacro xfmr))]))

(define-macro require
  (lambda ee '#f))

(load "pregexp-test.scm")
