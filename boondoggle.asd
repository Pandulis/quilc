;;;; boondoggle.asd
;;;;
;;;; Author: Eric Peterson

(asdf:defsystem #:boondoggle
  :description "A quilc/QVM/QPU integration tester."
  :author "Eric Peterson <eric@rigetti.com>"
  :version (:read-file-form "boondoggle/VERSION.txt")
  :depends-on (#:cl-quil
               #:command-line-arguments
               #:drakma
               #:uiop
               )
  :around-compile (lambda (compile)
                    (let (#+sbcl(sb-ext:*derive-function-types* t))
                      (funcall compile)))
  :pathname "boondoggle/src/"
  :serial t
  :components ((:file "package")
               (:file "options")
               (:file "producers")
               (:file "consumers")
               (:file "processors")
               (:file "pipeline")))
