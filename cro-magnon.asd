(defsystem "cro-magnon"
  :version "0.1.0"
  :author "Pavel Stepanov <paulkreuzmann@gmail.com>"
  :license "MIT"
  :depends-on (#:lack
               #:clack
               #:hermetic)
  :components ((:module "src"
                :components
                ((:file "main")))
               (:module "project"))
  :description "Another Common Lisp Web Framework"
  :in-order-to ((test-op (test-op "cro-magnon/tests"))))

(defsystem "cro-magnon/tests"
  :author "Pavel Stepanov <paulkreuzmann@gmail.com>"
  :license "MIT"
  :depends-on ("cro-magnon"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cro-magnon"
  :perform (test-op (op c) (symbol-call :rove :run c)))
