;;; Display Layer -*- lexical-binding: t; -*-

(setq display-packages
      '(;; Owned packages
        ;;pretty-mode
        (prettify-utils :location (recipe :fetcher github
                                          :repo "Ilazki/prettify-utils.el")) 
        ;; Personal display-related packages
        (pretty-code     :location local)
        (pretty-eshell   :location local)
        ;;(pretty-fonts    :location local)
        ))
;;;; Pretty-mode

;;(defun display/init-pretty-mode ()
;;  ;; I *only* use greek letter replacements at the moment.
;;  ;; However, I go back and forht on whether to use nil-like <-> emptyset.
;;  ;; I currently have it *enabled*. Uncomment the deactivation to remove it.
;;
;;  (use-package pretty-mode
;;    :config
;;    (progn
;;      (global-pretty-mode t)
;;
;;      (pretty-deactivate-groups
;;       '(:equality :ordering :ordering-double :ordering-triple
;;                   :arrows :arrows-twoheaded :punctuation
;;                   :logic :sets
;;                   ;; :nil
;;                   ))
;;      (pretty-activate-groups
;;       '(:greek)))))

(defun display/init-prettify-utils ()
  (use-package prettify-utils))

(defun display/init-pretty-code ()
  (use-package pretty-code
    :config
    (progn
      (pretty-code-add-hook 'scheme-mode-hook '((:def "defun")
                                                (:lambda "lambda")))
      (pretty-code-add-hook 'lisp-mode-hook '((:def "defun")
                                              (:lambda "lambda")
                                              (:parameter "defparameter")
                                              (:macro "defmacro")
                                              (:var "defvar")
                                              (:when "when")
                                              (:loop "loop")
                                              (:funcall "funcall")
                                              (:struct "defstruct")
                                              (:class "defclass")
                                              (:method "defmethod")))
      (pretty-code-add-hook 'emacs-lisp-mode-hook '((:def "defun")
                                                    (:lambda "lambda")))
      (pretty-code-add-hook 'hy-mode-hook         '((:def "defn")
                                                    (:lambda "fn")))
      (pretty-code-add-hook 'python-mode-hook     '((:def "def")
                                                    (:lambda "lambda")
                                                    (:in "in")
                                                    (:and "and")
                                                    (:or "or")
                                                    (:not-in "not-in")
                                                    )))))


;;;; Pretty-eshell

(defun display/init-pretty-eshell ()
  (use-package pretty-eshell
    :init
    (progn
      ;; Change default banner message
      (setq eshell-banner-message (s-concat (s-repeat 20 "---") "\n\n"))

      ;; More prompt styling
      (setq pretty-eshell-header "\n︳")
      (setq pretty-eshell-prompt-string "λ> "))

    :config
    (progn
      ;; Directory
      (pretty-eshell-section
       esh-dir
       "\xf07c"  ; 
       (abbreviate-file-name (eshell/pwd))
       '(:foreground "#268bd2" :bold bold :underline t))

      ;; Git Branch
      (pretty-eshell-section
       esh-git
       "\xe92d"  ; 
       (magit-get-current-branch)
       '(:foreground "#8D6B94"))

      ;; Python Virtual Environment
      (pretty-eshell-section
       esh-python
       "\xe928"  ; 
       pyvenv-virtual-env-name)

      ;; Time
      (pretty-eshell-section
       esh-clock
       "\xf017"  ; 
       (format-time-string "%H:%M" (current-time))
       '(:foreground "forest green"))

      ;; Prompt Number
      (pretty-eshell-section
       esh-num
       "\x2630" ;;"\xf0c9"  ; 
       (number-to-string pretty-eshell-prompt-num)
       '(:foreground "brown"))

      (setq pretty-eshell-funcs
            (list esh-dir esh-git esh-python esh-clock esh-num)))))



;;;; Pretty-fonts

;;(defun display/init-pretty-fonts ()
;;  (use-package pretty-fonts
;;    :config
;;    ;; !! This is required to avoid segfault when using emacs as daemon !!
;;    (spacemacs|do-after-display-system-init
;;     (pretty-fonts-add-hook 'prog-mode-hook pretty-fonts-fira-code-alist)
;;     (pretty-fonts-add-hook 'org-mode-hook  pretty-fonts-fira-code-alist)
;;
;;     (pretty-fonts-set-fontsets-for-fira-code)
;;     (pretty-fonts-set-fontsets
;;      '(;; All-the-icons fontsets
;;        ("fontawesome"
;;         ;;                         
;;         #xf07c #xf0c9 #xf0c4 #xf0cb #xf017 #xf101)
;;
;;        ("all-the-icons"
;;         ;;    
;;         #xe907 #xe928)
;;
;;        ("github-octicons"
;;         ;;                               
;;         #xf091 #xf059 #xf076 #xf075 #xe192  #xf016 #xf071)
;;
;;        ("material icons"
;;         ;;              
;;         #xe871 #xe918 #xe3e7  #xe5da
;;         ;;              
;;         #xe3d0 #xe3d1 #xe3d2 #xe3d4))))))

