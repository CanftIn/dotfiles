;;; pretty-code.el --- Utils for prettify-symbols -*- lexical-binding: t; -*-

;;; Commentary:

;; Utility to centralize prettify-symbol replacements.

;; I'm not using many of the symbols I showed off in my blog or that are in
;; `pretty-code-options-alist'. The indentation/alignment issues got to me. I
;; want to solve this however it is a significant project so no ETA on when all
;; languages can be turned into agda...

;;; Code:
;;;; Utils

(require 'dash)
(require 'prettify-utils)

;;;; Configuration

;;(defvar pretty-code-options-alist
;;  ;; Functions
;;  '((:lambda "λ") (:def "ƒ")
;;
;;    ;; Types
;;    (:true "𝕋") (:false "𝔽") (:int "ℤ") (:float "ℝ") (:str "𝕊") (:bool "𝔹")
;;
;;    ;; Seqs
;;    (:for "∀") (:in "∈") (:not-in "∉")
;;
;;    ;; Flow
;;    (:not "￢") (:and "∧") (:or "∨")
;;
;;    ;; Misc
;;    (:return "⟼") (:yield "⟻") (:some "∃") (:composition "∘") (:tuple "⨂"))
;;  "kwd and composition-str alist.")

(defvar pretty-code-options-alist
  ;; Functions
  '((:lambda "λ") (:def "ƒ")

    ;; Types
    (:null "∅") (:true "𝕋") (:false "𝔽") (:int "ℤ") (:float "ℝ") (:str "𝕊") (:bool "𝔹")

    ;; Seqs
    (:for "∀") (:in "∈") (:not-in "∉")

    ;; Flow
    (:in          "∈") (:not-in      "∉")
    (:return     "⟼") (:yield      "⟻")
    (:and         "∧") (:or          "∨")
    (:not         "￢")
    (:for         "∀")
    (:some        "∃")

    ;; Other
    (:tuple       "⨂")
    (:pipe        "")

    ;; lisp
    (:parameter   "𝓟")
    (:var   "𝓥")
    (:macro   "𝕄")
    (:when   "𝓦")
    (:loop   "𝓛")
    (:funcall   "ℂ")
    (:struct   "𝓢")
    (:class   "𝓒")
    (:method   "𝓜")

    ;; Misc
    (:return "⟼") (:yield "⟻") (:some "∃") (:composition "∘") (:tuple "⨂"))
  "kwd and composition-str alist.")
;;;; Core

;;;###autoload
(defun pretty-code-add-hook (hook kwd-name-alist)
  "Set `prettify-symbols-alist' for HOOK with choices in KWD-NAME-ALIST."
  (add-hook hook
            (lambda ()
              (setq prettify-symbols-alist
                    (->> kwd-name-alist
                       (-map (-lambda ((kwd name))
                               (cons name
                                     (alist-get kwd pretty-code-options-alist))))
                       (apply #'prettify-utils-generate-f)))
              (prettify-symbols-mode 1))))

(provide 'pretty-code)
