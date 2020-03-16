;;; packages.el --- cc-c++ layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: chrischen <chrischen3121@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst cc-c++-packages
  '(
    google-c-style
    irony
    (company-irony :toggle (configuration-layer/package-usedp 'company))
    (company-irony-c-headers :toggle (configuration-layer/package-usedp 'company-irony))
    (irony-eldoc :toggle (configuration-layer/package-usedp 'eldoc))
    (flycheck-irony :toggle (configuration-layer/package-usedp 'flycheck))
    projectile
    ggtags
    cc-mode
    ))

(defun cc-c++/init-google-c-style ()
  (use-package google-c-style
    :defer t
    :init
    (add-hook 'c-mode-common-hook
              (lambda ()
                (google-set-c-style)
                (google-make-newline-indent)))))

(defun cc-c++/post-init-cc-mode ()
  (add-hook 'c-mode-common-hook
            (lambda ()
              (spacemacs/add-to-hooks 'irony-mode '(c-mode-hook c++-mode-hook))
              (add-hook 'irony-mode-hook #'irony-eldoc)
              (add-hook 'irony-mode-hook #'flycheck-irony-setup)
              (add-hook 'irony-mode-hook #'irony-cdb-autosetup-compile-options)
              (which-key-add-key-based-replacements "C-c i" "irony")
              (define-key c-mode-base-map (kbd "C-c i u") 'irony-cdb-autosetup-compile-options)
              (define-key c-mode-base-map (kbd "C-c i j") 'irony-cdb-json-add-compile-commands-path)
              (setq company-backends-c-mode-common
                    '((company-irony-c-headers :with company-yasnippet)
                      (company-irony :with company-yasnippet)
                      (company-dabbrev-code company-gtags company-etags company-keywords :with company-yasnippet)
                      (company-files :with company-yasnippet)
                      (company-dabbrev :with company-yasnippet)
                      ))
              (define-key c-mode-base-map (kbd "<backtab>") 'clang-format-buffer)
              (define-key c-mode-base-map (kbd "C-c d") 'disaster)
              )))

(defun cc-c++/init-irony ()
  (use-package irony
    :defer t
    :config
    (setq irony-additional-clang-options '("-std=c++14"))
    ))

(defun cc-c++/init-company-irony ()
  (use-package company-irony
    :defer t))

(defun cc-c++/init-company-irony-c-headers ()
  (use-package company-irony-c-headers
    :defer t))

(defun cc-c++/init-irony-eldoc ()
  (use-package irony-eldoc
    :defer t))

(defun cc-c++/init-flycheck-irony ()
  (use-package flycheck-irony
    :if (configuration-layer/package-usedp 'flycheck)
    :defer t))

(defun cc-c++/post-init-ggtags ()
  (which-key-add-key-based-replacements
    "M-m m g" "gtags"
    "M-RET g" "gtags"))

(defun cc-c++/post-init-projectile ()
  (use-package projectile
    :defer t))

;;; packages.el ends here
