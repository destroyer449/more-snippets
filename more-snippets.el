;;; more-snippets.el --- a collection of yasnippet snippets
;;
;; Copyright (C) 2021 Dominic Adamson
;;
;; Author: Dominic Adamson <adamson.dom@gmail.com>
;; Created: September 27, 2021
;; Modified: September 27, 2021
;; Version: 0.0.1
;; Package-Requires: ((emacs "24.4") (cl-lib "0.5") (yasnippet "0.12.0"))
;;
;; This file is not part of GNU EMACS
;;
;;; Commentary:
;;
;; A collection of snippets that for Emacs designed to augment doom-snippets
;;
;;; Code:

(defvar doom-snippets-dir
  (file-name-directory
   (cond (load-in-progress load-file-name)
         ((bound-and-true-p byte-compile-current-file)
          byte-compile-current-file)
         (buffer-file-name)))
  "The base directory of the doom-snippets library.")

;;;###autoload
(defun more-snippets-initialize ()
"Add `more-snippets-dir' to `yas-snippet-dirs', replacing the default
yasnippet directory."
(setq yas-wrap-around-region nil)
(add-to-list 'yas-snippet-dirs 'doom-snippets-dir)
(yas-load-directory doom-snippets-dir t))

(provide 'more-snippets)
;;; more-snippets.el ends here
