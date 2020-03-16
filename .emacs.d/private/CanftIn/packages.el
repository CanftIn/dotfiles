;;; packages.el --- CanftIn layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author:  <CanftIn@DESKTOP-KO6RD0M>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `CanftIn-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `CanftIn/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `CanftIn/pre-init-PACKAGE' and/or
;;   `CanftIn/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst CanftIn-packages
  '(
    ))
  "The list of Lisp packages required by the CanftIn layer."

;;; packages.el ends here
