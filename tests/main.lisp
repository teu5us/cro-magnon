(defpackage cro-magnon/tests/main
  (:use :cl
        :cro-magnon
        :rove))
(in-package :cro-magnon/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cro-magnon)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
