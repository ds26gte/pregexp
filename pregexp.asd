(asdf:defsystem #:pregexp
  :description "Portable regular expressions for Common Lisp"
  :version "20200129"
  :author "Dorai Sitaram"
  :components ((:file "packages")
               (:file "pregexp" :depends-on ("packages"))))
