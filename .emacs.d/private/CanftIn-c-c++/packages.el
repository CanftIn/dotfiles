;;; packages.el --- CanftIn-c-c++ layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author:  <wwc7033@gmail.com>
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
;; added to `CanftIn-c-c++-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `CanftIn-c-c++/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `CanftIn-c-c++/pre-init-PACKAGE' and/or
;;   `CanftIn-c-c++/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst CanftIn-c-c++-packages
  '(
    projectile
    irony
    )
  )

(defun CanftIn-c-c++/pre-init-projectile ()
  ;; (message "pre-init-projectile configs for cmake")
  (spacemacs|use-package-add-hook projectile
    :pre-config
    (progn
      (add-to-list 'projectile-project-root-files-top-down-recurring "CMakeLists.txt")
      (projectile-register-project-type
       'cmake '("CMakeLists.txt")
       :compile "cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -H. -Bbuild && cmake --build build --target all --config Release"
       :test "cmake --build build --target test"
       :run "cmake --build build --target run"))))

(defun CanftIn-c-c++/pre-init-irony ()
  (spacemacs|use-package-add-hook irony
    :pre-config
    (progn
      (defun CanftIn-c-c++//enable-irony-mode-if-server-found ()
        (let* ((exec-path (cons (expand-file-name "bin" irony-server-install-prefix) exec-path)))
          (if (executable-find "irony-server") (irony-mode))))
      (add-hook 'c-mode-hook 'CanftIn-c-c++//enable-irony-mode-if-server-found)
      (add-hook 'c++-mode-hook 'CanftIn-c-c++//enable-irony-mode-if-server-found)
      (with-eval-after-load "irony-cdb"
        ;; (add-to-list 'irony-cdb-compilation-databases 'CanftIn-c-c++-cdb-guess t)
        (setq irony-cdb-compilation-databases '(CanftIn-c-c++-cdb-guess))
        ;; (setq irony-cdb-compilation-databases '(CanftIn-c-c++-cdb-guess irony-cdb-clang-complete irony-cdb-json))
        ;; (add-to-list 'irony-cdb-compilation-databases 'CanftIn-c-c++-cdb-guess t)
        (setq irony-additional-clang-options `("-std=c++17" . ,irony-additional-clang-options))
        ))))
;;; packages.el ends here
