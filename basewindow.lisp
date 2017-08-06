;; Load packages
(load "packages.lisp" :external-format :utf-8)

;; Go into the defined package
(in-package :cl-ltk)

;; Main function
(defun main ()
  (with-ltk ()
	    (wm-title *tk* "BaseWindow")
	    (bind *tk* "<Alt-q>"
		  (lambda (event)
		    (setq *exit-mainloop* t)))))

;; Execution
(main)
