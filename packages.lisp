(defpackage :pregexp
  (:nicknames :pre)
  (:use :cl)
  (:export #:pregexp
           #:pregexp-match-positions
           #:pregexp-match
           #:pregexp-split
           #:pregexp-replace
           #:pregexp-replace*
           #:pregexp-quote
           ))
