;;; CanftIn-dracula-theme.el --- CanftIn Dracula Theme

;; Copyright 2015-present, All rights reserved
;;
;; Code licensed under the MIT license

;; Author: film42
;; Version: 1.5.0
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/dracula/emacs

;;; Commentary:

;; A dark color theme available for a number of editors.

;;; Code:
(require 'cl-lib)
(deftheme CanftIn-dracula "The famous dracula themes, customized to CanftIn. Mix and modify with dracula/spacemacs-dark/zenburn/material")


(let* (
       ;; include color palette
       (colors '(
                 (fg1          "#f8f8f2")      ; Assigment form: VARIABLE COLOR [TTY-COLOR]
                 (fg2          "#e2e2dc")
                 (fg3          "#ccccc7")
                 (fg4          "#b6b6b2")
                 (bg1          "#282a36" "#000000")
                 (bg2          "#373844")
                 (bg3          "#464752")
                 (bg4          "#565761")
                 (bg5          "#44475a")
                 (bg6          "#b45bcf")
                 (key2         "#0189cc")
                 (key3         "#ff79c6")
                 (builtin      "#ffb86c")
                 (keyword      "#ff79c6")
                 (const        "#8be9fd")
                 (comment      "#6272a4")
                 (func         "#50fa7b")
                 (str          "#f1fa8c")
                 (type         "#bd93f9")
                 (var          "#f8f8f2")
                 (warning      "#ffb86c")
                 (rainbow-1    "#f8f8f2")
                 (rainbow-2    "#8be9fd")
                 (rainbow-3    "#bd93f9")
                 (rainbow-4    "#ff79c6")
                 (rainbow-5    "#ffb86c")
                 (rainbow-6    "#50fa7b")
                 (rainbow-7    "#f1fa8c")
                 (rainbow-8    "#0189cc")
                 (rainbow-9    "#ff5555")
                 (rainbow-10   "#a0522d")
                 (rainbow-11   "#EE5583")
                 (eph-verbatim "#f1fa8c")
                 (eph-code     "#ff79c6")


                 (act1            "#222226")
                 (act2            "#5d4d7a")
                 (base            "#b2b2b2")
                 (base-dim        "#686868")
                 ;;(bg1             "#292b2e")
                 ;;(bg2             "#212026")
                 ;;(bg3             "#100a14")
                 ;;(bg4             "#0a0814")
                 (border          "#5d4d7a")
                 (cblk            "#cbc1d5")
                 (cblk-bg         "#2f2b33")
                 (cblk-ln         "#827591")
                 (cblk-ln-bg      "#373040")
                 (cursor          "#e3dedd")
                 (const           "#a45bad")
                 ;; (comment         "#2aa1ae")
                 (comp            "#c56ec3")
                 (err             "#e0211d")
                 ;;(func            "#bc6ec5")
                 (head1           "#4f97d7")
                 (head1-bg        "#293239")
                 (head2           "#2d9574")
                 (head2-bg        "#293235")
                 (head3           "#67b11d")
                 (head3-bg        "#293235")
                 (head4           "#b1951d")
                 (head4-bg        "#32322c")
                 (highlight       "#444155")
                 (highlight-dim   "#3b314d")
                 (keyword         "#4f97d7")
                 (lnum            "#44505c")
                 (mat             "#86dc2f")
                 (meta            "#9f8766")
                 (str             "#2d9574")
                 (suc             "#86dc2f")
                 (ttip            "#9a9aba")
                 (ttip-sl         "#5e5079")
                 (ttip-bg         "#34323e")
                 (type            "#ce537a")
                 ;;(var             "#7590db")
                 (war             "#dc752f")
                 
                 ;; colors
                 (aqua            "#2d9574")
                 (aqua-bg         "#293235")
                 (green           "#67b11d")
                 (green-bg        "#293235")
                 (green-bg-s      "#29422d")
                 (cyan            "#28def0")
                 (red             "#f2241f")
                 (red-bg          "#3c2a2c")
                 (red-bg-s        "#512e31")
                 (blue            "#4f97d7")
                 (blue-bg         "#293239")
                 (blue-bg-s       "#2d4252")
                 (magenta         "#a31db1")
                 (yellow          "#b1951d")
                 (yellow-bg       "#32322c")

                 (zenburn-fg-1      "#656555")
                 (zenburn-fg-05     "#989890")
                 (zenburn-fg        "#DCDCCC")
                 (zenburn-fg+1      "#FFFFEF")
                 (zenburn-fg+2      "#FFFFFD")
                 (zenburn-bg-2      "#000000")
                 (zenburn-bg-1      "#2B2B2B")
                 (zenburn-bg-08     "#303030")
                 (zenburn-bg-05     "#383838")
                 (zenburn-bg        "#3F3F3F")
                 (zenburn-bg+05     "#494949")
                 (zenburn-bg+1      "#4F4F4F")
                 (zenburn-bg+2      "#5F5F5F")
                 (zenburn-bg+3      "#6F6F6F")
                 (zenburn-red-6     "#6C3333")
                 (zenburn-red-5     "#7C4343")
                 (zenburn-red-4     "#8C5353")
                 (zenburn-red-3     "#9C6363")
                 (zenburn-red-2     "#AC7373")
                 (zenburn-red-1     "#BC8383")
                 (zenburn-red       "#CC9393")
                 (zenburn-red+1     "#DCA3A3")
                 (zenburn-red+2     "#ECB3B3")
                 (zenburn-orange    "#DFAF8F")
                 (zenburn-yellow-2  "#D0BF8F")
                 (zenburn-yellow-1  "#E0CF9F")
                 (zenburn-yellow    "#F0DFAF")
                 (zenburn-green-5   "#2F4F2F")
                 (zenburn-green-4   "#3F5F3F")
                 (zenburn-green-3   "#4F6F4F")
                 (zenburn-green-2   "#5F7F5F")
                 (zenburn-green-1   "#6F8F6F")
                 (zenburn-green     "#7F9F7F")
                 (zenburn-green+1   "#8FB28F")
                 (zenburn-green+2   "#9FC59F")
                 (zenburn-green+3   "#AFD8AF")
                 (zenburn-green+4   "#BFEBBF")
                 (zenburn-cyan      "#93E0E3")
                 (zenburn-blue+3    "#BDE0F3")
                 (zenburn-blue+2    "#ACE0E3")
                 (zenburn-blue+1    "#94BFF3")
                 (zenburn-blue      "#8CD0D3")
                 (zenburn-blue-1    "#7CB8BB")
                 (zenburn-blue-2    "#6CA0A3")
                 (zenburn-blue-3    "#5C888B")
                 (zenburn-blue-4    "#4C7073")
                 (zenburn-blue-5    "#366060")
                 (zenburn-magenta   "#DC8CC3")

                 (class '((class color) (min-colors 89)))
                 (256color  (eq (display-color-cells (selected-frame)) 256))
                 (truecolor (eq (display-color-cells (selected-frame)) 16777216))

                 (background (if (or window-system truecolor) "#263238" "#262626")) ;; sidebar-container
                 (current-line (if (or window-system truecolor)  "#37474f" "#3a3a3a")) ;; tree-row
                 (far-background (if (or window-system truecolor)  "#1c1f26" "#121212")) ;; panel-control
                 (inactive-gray (if (or window-system truecolor) "#78909c" "#8a8a8a"))
                 (header-color (if (or window-system truecolor) "#455A64" "#5f5f5f"))
                 (subtle "#a7adba") ;; tree-row-hover-disclosure-button-control
                 (selection "#555555") ;; tab-control-dirty-tab-close-button
                 (secondary-selection "#bf616a") ;; tab-control-hover-tab-close-button
                 (foreground "#ffffff")
                 ;;(comment "#b0bec5") ;; table-row
                 ;;(red "#f36c60") ;; tab-control-hover-tab-close-button
                 (orange "#ff9800") ;; darker tab-control-dirty-tab-close-butto
                 ;;(yellow "#fff59d") ;; tab-control-dirty-tab-close-button
                 ;;(green "#8bc34a") ;; complement tab-control-dirty-tab-close-button
                 ;;(aqua "#81d4fa") ;; lighter complement tab-control-dirty-tab-close-button
                 ;;(blue "#4dd0e1") ;; complement tab-control-dirty-tab-close-button
                 (purple "#b39ddb") ;; complement tab-control-dirty-tab-close-button




                 ))
       (variable-pitch-font '(:family "iA Writer Quattro S" ))
       (fixed-pitch-font    '(:family "Iosevka Nerd Font" ))
       (fixed-pitch-font-alt '(:family "iA Writer Mono S" ))
       (faces '(;; variable-pitch-mode
                (variable-pitch ,@variable-pitch-font)
                (fixed-pitch ,@fixed-pitch-font)
                ;; include unchanged-faces
                ;; default
                (cursor :background ,fg3)
                (default :background ,bg1 :foreground ,fg1)
                (default-italic :italic t)
                (ffap :foreground ,fg4)
                (fringe :background ,bg1 :foreground ,fg4)
                (highlight :foreground ,fg3 :background ,bg3)
                (hl-line :background  ,bg5)
                (info-quoted-name :foreground ,builtin)
                (info-string :foreground ,str)
                (lazy-highlight :foreground ,fg2 :background ,bg3)
                (link :foreground ,const :underline t)
                (linum :slant italic :foreground ,bg4 :background ,bg1)
                (minibuffer-prompt :bold t :foreground ,keyword)
                (region :background ,str :foreground ,bg1)
                (show-paren-match-face :background ,warning)
                (trailing-whitespace :foreground nil :background ,warning)
                (vertical-border :foreground ,bg2)
                (warning :foreground ,warning)
                (whitespace-trailing :inherit trailing-whitespace)
                (header-line :background ,bg1)
                ;; syntax
                (font-lock-builtin-face :foreground ,builtin)
                (font-lock-comment-face :foreground ,comment)
                (font-lock-constant-face :foreground ,const)
                (font-lock-doc-face :foreground ,comment)
                (font-lock-function-name-face :foreground ,func :bold t)
                (font-lock-keyword-face :bold t :foreground ,keyword)
                (font-lock-negation-char-face :foreground ,const)
                (font-lock-reference-face :foreground ,const)
                (font-lock-string-face :foreground ,str)
                (font-lock-type-face :foreground ,type )
                (font-lock-variable-name-face :foreground ,var)
                (font-lock-warning-face :foreground ,warning :background ,bg2)
                ;; auto-complete
                (ac-completion-face :underline t :foreground ,keyword)
                ;; company
                (company-echo-common :foreground ,bg1 :background ,fg1)
                (company-preview :background ,bg1 :foreground ,key2)
                (company-preview-common :foreground ,bg2 :foreground ,fg3)
                (company-preview-search :foreground ,type :background ,bg1)
                (company-scrollbar-bg :background ,bg3)
                (company-scrollbar-fg :foreground ,keyword)
                (company-template-field :inherit region)
                (company-tooltip :foreground ,fg2 :background ,bg1 :bold t)
                (company-tooltip-annotation :foreground ,const)
                (company-tooltip-common  :foreground ,fg3)
                (company-tooltip-common-selection :foreground ,str)
                (company-tooltip-mouse :inherit highlight)
                (company-tooltip-selection :background ,bg3 :foreground ,fg3)
                ;; diff-hl
                (diff-hl-change :foreground ,rainbow-5 :background ,rainbow-5)
                (diff-hl-delete :foreground ,rainbow-9 :background ,rainbow-9)
                (diff-hl-insert :foreground ,rainbow-6 :background ,rainbow-6)
                ;; enh-ruby
                (enh-ruby-heredoc-delimiter-face :foreground ,str)
                (enh-ruby-op-face :foreground ,keyword)
                (enh-ruby-regexp-delimiter-face :foreground ,str)
                (enh-ruby-string-delimiter-face :foreground ,str)
                ;; font-latex
                (font-latex-bold-face :foreground ,type)
                (font-latex-italic-face :foreground ,key3 :italic t)
                (font-latex-match-reference-keywords :foreground ,const)
                (font-latex-match-variable-keywords :foreground ,var)
                (font-latex-string-face :foreground ,str)
                ;; gnus-group
                (gnus-group-mail-1 :foreground ,keyword :bold t)
                (gnus-group-mail-1-empty :inherit gnus-group-mail-1 :bold nil)
                (gnus-group-mail-2 :foreground ,const :bold t)
                (gnus-group-mail-2-empty :inherit gnus-group-mail-2 :bold nil)
                (gnus-group-mail-3 :foreground ,comment :bold t)
                (gnus-group-mail-3-empty :inherit gnus-group-mail-3 :bold nil)
                (gnus-group-mail-low :foreground ,bg5 :bold t)
                (gnus-group-mail-low-empty :inherit gnus-group-mail-low :bold nil)
                (gnus-group-news-1 :foreground ,keyword :bold t)
                (gnus-group-news-1-empty :inherit gnus-group-news-1 :bold nil)
                (gnus-group-news-2 :foreground ,const :bold t)
                (gnus-group-news-2-empty :inherit gnus-group-news-2 :bold nil)
                (gnus-group-news-3 :foreground ,comment :bold t)
                (gnus-group-news-3-empty :inherit gnus-group-news-3 :bold nil)
                (gnus-group-news-4 :inherit gnus-group-news-low)
                (gnus-group-news-4-empty :inherit gnus-group-news-low-empty)
                (gnus-group-news-5 :inherit gnus-group-news-low)
                (gnus-group-news-5-empty :inherit gnus-group-news-low-empty)
                (gnus-group-news-6 :inherit gnus-group-news-low)
                (gnus-group-news-6-empty :inherit gnus-group-news-low-empty)
                (gnus-group-news-low :foreground ,bg5 :bold t)
                (gnus-group-news-low-empty :inherit gnus-group-news-low :bold nil)
                (gnus-header-content :foreground ,keyword)
                (gnus-header-from :foreground ,var)
                (gnus-header-name :foreground ,type)
                (gnus-header-subject :foreground ,func :bold t)
                (gnus-summary-markup-face :foreground ,const)
                (gnus-summary-normal-ancient :inherit gnus-summary-normal-read)
                (gnus-summary-normal-read :foreground ,bg5 :weight normal)
                (gnus-summary-normal-ticked :foreground ,keyword :weight light)
                (gnus-summary-normal-unread :foreground ,comment :weight normal)
                (gnus-summary-selected :inverse-video t)
                ;; helm
                (helm-bookmark-w3m :foreground ,type)
                (helm-buffer-not-saved :foreground ,type :background ,bg1)
                (helm-buffer-process :foreground ,builtin :background ,bg1)
                (helm-buffer-saved-out :foreground ,fg1 :background ,bg1)
                (helm-buffer-size :foreground ,fg1 :background ,bg1)
                (helm-candidate-number :foreground ,bg1 :background ,fg1)
                (helm-ff-directory :foreground ,func :background ,bg1 :weight bold)
                (helm-ff-executable :foreground ,key2 :background ,bg1 :weight normal)
                (helm-ff-file :foreground ,fg1 :background ,bg1 :weight normal)
                (helm-ff-invalid-symlink :foreground ,key3 :background ,bg1 :weight bold)
                (helm-ff-prefix :foreground ,bg1 :background ,keyword :weight normal)
                (helm-ff-symlink :foreground ,keyword :background ,bg1 :weight bold)
                (helm-grep-cmd-line :foreground ,fg1 :background ,bg1)
                (helm-grep-file :foreground ,fg1 :background ,bg1)
                (helm-grep-finish :foreground ,fg2 :background ,bg1)
                (helm-grep-lineno :foreground ,fg1 :background ,bg1)
                (helm-grep-match :foreground nil :background nil :inherit helm-match)
                (helm-grep-running :foreground ,func :background ,bg1)
                (helm-header :foreground ,fg2 :background ,bg1 :underline nil :box nil)
                (helm-moccur-buffer :foreground ,func :background ,bg1)
                (helm-selection :background ,bg2 :underline nil)
                (helm-selection-line :background ,bg2)
                (helm-separator :foreground ,type :background ,bg1)
                (helm-source-go-package-godoc-description :foreground ,str)
                (helm-source-header :foreground ,keyword :background ,bg1 :underline nil :weight bold)
                (helm-time-zone-current :foreground ,builtin :background ,bg1)
                (helm-time-zone-home :foreground ,type :background ,bg1)
                (helm-visible-mark :foreground ,bg1 :background ,bg3)
                ;; highlight-indentation minor mode
                (highlight-indentation-face :background ,bg2)
                ;; icomplete
                (icompletep-determined :foreground ,builtin)
                ;; ido
                (ido-first-match :foreground ,keyword :bold t)
                (ido-only-match :foreground ,warning)
                (ido-subdir :foreground ,builtin)
                ;; isearch
                (isearch :bold t :foreground ,warning :background ,bg3)
                (isearch-fail :foreground ,bg1 :background ,warning)
                ;; jde-java
                (jde-java-font-lock-constant-face :foreground ,const)
                (jde-java-font-lock-modifier-face :foreground ,key3)
                (jde-java-font-lock-number-face :foreground ,var)
                (jde-java-font-lock-package-face :foreground ,var)
                (jde-java-font-lock-private-face :foreground ,keyword)
                (jde-java-font-lock-public-face :foreground ,keyword)
                ;; js2-mode
                (js2-external-variable :foreground ,type  )
                (js2-function-param :foreground ,const)
                (js2-jsdoc-html-tag-delimiter :foreground ,str)
                (js2-jsdoc-html-tag-name :foreground ,key2)
                (js2-jsdoc-value :foreground ,str)
                (js2-private-function-call :foreground ,const)
                (js2-private-member :foreground ,fg3)
                ;; js3-mode
                (js3-error-face :underline ,warning)
                (js3-external-variable-face :foreground ,var)
                (js3-function-param-face :foreground ,key3)
                (js3-instance-member-face :foreground ,const)
                (js3-jsdoc-tag-face :foreground ,keyword)
                (js3-warning-face :underline ,keyword)
                ;; magit
                (magit-branch :foreground ,const :weight bold)
                (magit-diff-context-highlight :background ,bg3 :foreground ,fg3)
                (magit-diff-file-header :foreground ,fg2 :background ,bg3)
                (magit-diffstat-added :foreground ,type)
                (magit-diffstat-removed :foreground ,var)
                (magit-hash :foreground ,fg2)
                (magit-hunk-heading :background ,bg3)
                (magit-hunk-heading-highlight :background ,bg3)
                (magit-item-highlight :background ,bg3)
                (magit-log-author :foreground ,fg3)
                (magit-process-ng :foreground ,warning :weight bold)
                (magit-process-ok :foreground ,func :weight bold)
                (magit-section-heading :foreground ,keyword :weight bold)
                (magit-section-highlight :background ,bg2)
                ;; mode-line
                (mode-line :foreground nil :background ,bg5 :box ,bg5)
                (mode-line-inactive :foreground ,fg1 :background ,bg2 :box ,bg2)

                ;; ----- CanftIn Change -----
                ;; ;; mu4e
                ;; (mu4e-cited-1-face :foreground ,fg2)
                ;; (mu4e-cited-7-face :foreground ,fg3)
                ;; (mu4e-header-marks-face :foreground ,type)
                ;; (mu4e-view-url-number-face :foreground ,type)
                ;; --------- <snip> ---------
                ;; outline
                (outline-1 :foreground ,rainbow-6)
                (outline-2 :foreground ,rainbow-3)
                (outline-3 :foreground ,rainbow-2)
                (outline-4 :foreground ,rainbow-5)
                (outline-5 :foreground ,rainbow-5)
                (outline-6 :foreground ,rainbow-8)
                ;; powerline
                (powerline-evil-base-face :foreground ,bg2)
                (powerline-evil-emacs-face :inherit powerline-evil-base-face :background ,rainbow-7)
                (powerline-evil-insert-face :inherit powerline-evil-base-face :background ,rainbow-2)
                (powerline-evil-motion-face :inherit powerline-evil-base-face :background ,rainbow-3)
                (powerline-evil-normal-face :inherit powerline-evil-base-face :background ,rainbow-6)
                (powerline-evil-operator-face :inherit powerline-evil-base-face :background ,rainbow-4)
                (powerline-evil-replace-face :inherit powerline-evil-base-face :background ,rainbow-9)
                (powerline-evil-visual-face :inherit powerline-evil-base-face :background ,rainbow-5)
                (powerline-active1 :background ,bg6 :foreground ,fg1)
                (powerline-active2 :background ,bg6 :foreground ,fg1)
                (powerline-inactive2 :background ,bg3 :foreground ,fg1)
                (powerline-inactive2 :background ,bg3 :foreground ,fg1)
                ;; rainbow-delimiters
                (rainbow-delimiters-depth-1-face :foreground ,rainbow-1)
                (rainbow-delimiters-depth-2-face :foreground ,rainbow-2)
                (rainbow-delimiters-depth-3-face :foreground ,rainbow-3)
                (rainbow-delimiters-depth-4-face :foreground ,rainbow-4)
                (rainbow-delimiters-depth-5-face :foreground ,rainbow-5)
                (rainbow-delimiters-depth-6-face :foreground ,rainbow-6)
                (rainbow-delimiters-depth-7-face :foreground ,rainbow-7)
                (rainbow-delimiters-depth-8-face :foreground ,rainbow-8)
                (rainbow-delimiters-unmatched-face :foreground ,warning)
                ;; --------- CanftIn addon ------------
                (rainbow-delimiters-mismatched-face :foreground ,err :overline t)
                ;; --------- CanftIn addon ------------
                ;; rpm-spec
                (rpm-spec-dir-face :foreground ,rainbow-6)
                (rpm-spec-doc-face :foreground ,rainbow-4)
                (rpm-spec-ghost-face :foreground ,rainbow-3)
                (rpm-spec-macro-face :foreground ,rainbow-7)
                (rpm-spec-obsolete-tag-face :inherit font-lock-warning-face)
                (rpm-spec-package-face :foreground ,rainbow-3)
                (rpm-spec-section-face :foreground ,rainbow-7)
                (rpm-spec-tag-face :foreground ,rainbow-2)
                (rpm-spec-var-face :foreground ,rainbow-10)
                ;; slime
                (slime-repl-inputed-output-face :foreground ,type)
                ;; spam
                (spam :inherit gnus-summary-normal-read :foreground ,warning :strike-through t :slant oblique)
                ;; term
                (term :foreground ,fg1 :background ,bg1)
                (term-color-black :foreground ,bg3 :background ,bg3)
                (term-color-blue :foreground ,func :background ,func)
                (term-color-cyan :foreground ,str :background ,str)
                (term-color-green :foreground ,type :background ,bg3)
                (term-color-magenta :foreground ,builtin :background ,builtin)
                (term-color-red :foreground ,keyword :background ,bg3)
                (term-color-white :foreground ,fg2 :background ,fg2)
                (term-color-yellow :foreground ,var :background ,var)
                ;; undo-tree
                (undo-tree-visualizer-current-face :foreground ,builtin)
                (undo-tree-visualizer-default-face :foreground ,fg2)
                (undo-tree-visualizer-register-face :foreground ,type)
                (undo-tree-visualizer-unmodified-face :foreground ,var)
                ;; web-mode
                (web-mode-builtin-face :inherit ,font-lock-builtin-face)
                (web-mode-comment-face :inherit ,font-lock-comment-face)
                (web-mode-constant-face :inherit ,font-lock-constant-face)
                (web-mode-doctype-face :inherit ,font-lock-comment-face)
                (web-mode-function-name-face :inherit ,font-lock-function-name-face)
                (web-mode-html-attr-name-face :foreground ,type)
                (web-mode-html-attr-value-face :foreground ,func)
                (web-mode-html-tag-face :foreground ,keyword :bold t)
                (web-mode-keyword-face :foreground ,keyword)
                (web-mode-string-face :foreground ,str)
                (web-mode-type-face :inherit ,font-lock-type-face)
                (web-mode-warning-face :inherit ,font-lock-warning-face)
                ;; which-func
                (which-func :inherit ,font-lock-function-name-face)
                (dired-directory :foreground ,func :weight normal)
                (dired-flagged :foreground ,keyword)
                (dired-header :foreground ,fg3 :background ,bg1)
                (dired-ignored :inherit shadow)
                (dired-mark :foreground ,var :weight bold)
                (dired-marked :foreground ,builtin :weight bold)
                (dired-perm-write :foreground ,fg3 :underline t)
                (dired-symlink :foreground ,str :weight normal :slant italic)
                (dired-warning :foreground ,warning :underline t)
                (diredp-compressed-file-name :foreground ,fg3)
                (diredp-compressed-file-suffix :foreground ,fg4)
                (diredp-date-time :foreground ,var)
                (diredp-deletion-file-name :foreground ,keyword :background ,bg5)
                (diredp-deletion :foreground ,keyword :weight bold)
                (diredp-dir-heading :foreground ,fg2 :background ,bg4)
                (diredp-dir-name :inherit dired-directory)
                (diredp-dir-priv :inherit dired-directory)
                (diredp-executable-tag :foreground ,builtin)
                (diredp-file-name :foreground ,fg1)
                (diredp-file-suffix :foreground ,fg4)
                (diredp-flag-mark-line :foreground ,fg2 :slant italic :background ,bg5)
                (diredp-flag-mark :foreground ,fg2 :weight bold :background ,bg5)
                (diredp-ignored-file-name :foreground ,fg1)
                (diredp-mode-line-flagged :foreground ,warning)
                (diredp-mode-line-marked :foreground ,warning)
                (diredp-no-priv :foreground ,fg1)
                (diredp-number :foreground ,const)
                (diredp-other-priv :foreground ,builtin)
                (diredp-rare-priv :foreground ,builtin)
                (diredp-read-priv :foreground ,type)
                (diredp-write-priv :foreground ,keyword)
                (diredp-exec-priv :foreground ,str)
                (diredp-symlink :foreground ,warning)
                (diredp-link-priv :foreground ,warning)
                (diredp-autofile-name :foreground ,str)
                (diredp-tagged-autofile-name :foreground ,str)
                (icicle-whitespace-highlight :background ,var)
                (icicle-special-candidate :foreground ,fg2)
                (icicle-extra-candidate :foreground ,fg2)
                (icicle-search-main-regexp-others :foreground ,var)
                (icicle-search-current-input :foreground ,keyword)
                (icicle-search-context-level-8 :foreground ,warning)
                (icicle-search-context-level-7 :foreground ,warning)
                (icicle-search-context-level-6 :foreground ,warning)
                (icicle-search-context-level-5 :foreground ,warning)
                (icicle-search-context-level-4 :foreground ,warning)
                (icicle-search-context-level-3 :foreground ,warning)
                (icicle-search-context-level-2 :foreground ,warning)
                (icicle-search-context-level-1 :foreground ,warning)
                (icicle-search-main-regexp-current :foreground ,fg1)
                (icicle-saved-candidate :foreground ,fg1)
                (icicle-proxy-candidate :foreground ,fg1)
                (icicle-mustmatch-completion :foreground ,type)
                (icicle-multi-command-completion :foreground ,fg2 :background ,bg2)
                (icicle-msg-emphasis :foreground ,func)
                (icicle-mode-line-help :foreground ,fg4)
                (icicle-match-highlight-minibuffer :foreground ,builtin)
                (icicle-match-highlight-Completions :foreground ,func)
                (icicle-key-complete-menu-local :foreground ,fg1)
                (icicle-key-complete-menu :foreground ,fg1)
                (icicle-input-completion-fail-lax :foreground ,keyword)
                (icicle-input-completion-fail :foreground ,keyword)
                (icicle-historical-candidate-other :foreground ,fg1)
                (icicle-historical-candidate :foreground ,fg1)
                (icicle-current-candidate-highlight :foreground ,warning :background ,bg3)
                (icicle-Completions-instruction-2 :foreground ,fg4)
                (icicle-Completions-instruction-1 :foreground ,fg4)
                (icicle-completion :foreground ,var)
                (icicle-complete-input :foreground ,builtin)
                (icicle-common-match-highlight-Completions :foreground ,type)
                (icicle-candidate-part :foreground ,var)
                (icicle-annotation :foreground ,fg4)

                ;; ----- CanftIn Change -----
                ;; ;; include org mode faces
                ;; ;; org-agenda
                ;; (org-agenda-date :foreground ,fg1)
                ;; (org-agenda-date-today :foreground ,fg1)
                ;; (org-agenda-date-weekend :foreground ,fg3 :weight normal)
                ;; (org-agenda-dimmed-todo-face :foreground ,comment)
                ;; (org-agenda-done :foreground ,rainbow-6)
                ;; (org-agenda-structure :foreground  ,fg3 :background ,bg2 :weight bold)
                ;; 
                ;; ;; important fix for variable pitch mode
                ;; ;; otherwise indents like within tables won't work well
                ;; ;; see https://lepisma.github.io/2017/10/28/ricing-org-mode/
                ;; (org-indent
                ;; (:inherit org-hide)
                ;; (:inherit (org-hide fixed-pitch)))
                ;; 
                ;; ;; everything related to (code) blocks
                ;; (org-block :inherit fixed-pitch :foreground ,rainbow-5)
                ;; (org-block-begin-line :inherit fixed-pitch :foreground ,bg4)
                ;; (org-block-end-line :inherit fixed-pitch :foreground ,bg4)
                ;; 
                ;; (org-checkbox :inherit fixed-pitch :weight bold)
                ;; (org-code :foreground ,rainbow-7)
                ;; (org-date :foreground ,rainbow-2 :underline t)
                ;; 
                ;; (org-column :background ,bg4)
                ;; (org-column-title :inherit org-column :weight bold :underline t)
                ;; 
                ;; (org-document-info :foreground ,rainbow-8)
                ;; (org-document-info-keyword :inherit fixed-pitch :foreground ,bg4)
                ;; (org-special-keyword :inherit fixed-pitch :foreground ,bg4)
                ;; (org-meta-line :inherit fixed-pitch :foreground ,bg4)
                ;; (org-property-value :inherit fixed-pitch :foreground ,bg4)
                ;; 
                ;; 
                ;; (org-todo :inherit fixed-pitch :foreground ,rainbow-5 :bold t :background ,bg2)
                ;; (org-done :inherit fixed-pitch :foreground ,rainbow-6)
                ;; (org-headline-done :foreground ,comment :bold nil :strike-through t)
                ;; 
                ;; (org-ellipsis :foreground ,comment)
                ;; (org-footnote :foreground ,rainbow-8)
                ;; (org-formula :foreground ,rainbow-4)
                ;; (org-hide :foreground ,bg1 :background ,bg1)
                ;; 
                ;; (org-document-title :foreground ,rainbow-11 :inherit bold :height 300)
                ;; (org-level-1 :foreground ,rainbow-11 :inherit bold :height 1.25)
                ;; (org-level-2 :foreground ,rainbow-11 :inherit bold :height 1.25)
                ;; (org-level-3 :foreground ,rainbow-11 :inherit bold :height 1.0)
                ;; (org-level-4 :foreground ,rainbow-11 :inherit bold)
                ;; (org-level-5 :foreground ,rainbow-11 :inherit bold)
                ;; (org-level-6 :foreground ,rainbow-11 :inherit bold)
                ;; (org-level-7 :foreground ,rainbow-11 :inherit bold)
                ;; (org-level-8 :foreground ,rainbow-11 :inherit bold)
                ;; 
                ;; (org-link :foreground ,rainbow-2 :underline t)
                ;; (org-priority :foreground ,rainbow-2)
                ;; (org-scheduled :foreground ,fg4)
                ;; (org-scheduled-previously :foreground ,rainbow-7)
                ;; (org-scheduled-today :foreground ,fg1)
                ;; (org-sexp-date :foreground ,fg4)
                ;; (org-table :inherit fixed-pitch :foreground ,rainbow-3)
                ;; 
                ;; 
                ;; (org-tag :inherit fixed-pitch :foreground ,bg4 :bold t :background ,bg2)
                ;; (org-upcoming-deadline :foreground ,rainbow-7)
                ;; (org-warning :weight bold :foreground ,rainbow-4)


                ;; ------------ CanftIn Customize ------------
                ;; CanftIn org in spacemacs-dark
                (org-agenda-clocking :background ,highlight :foreground ,comp)
                (org-agenda-date :foreground "#7590db" :height 1.1)
                (org-agenda-date-today :foreground ,keyword :inherit bold :height 1.3)
                (org-agenda-date-weekend :inherit bold :foreground "#7590db")
                (org-agenda-done :foreground ,suc :height 1.2)
                (org-agenda-structure :inherit bold :foreground ,comp)
                (org-block :background ,cblk-bg :foreground ,cblk :extend t)
                (org-block-begin-line :background ,cblk-ln-bg :foreground ,cblk-ln :extend t)
                (org-block-end-line :background ,cblk-ln-bg :foreground ,cblk-ln :extend t)
                (org-clock-overlay :foreground ,comp)
                (org-code :foreground ,cyan)
                (org-column :background ,highlight)
                (org-column-title :background ,highlight)
                (org-date :underline t :foreground ,var)
                (org-date-selected :background ,func :foreground ,bg1)
                (org-document-info-keyword :foreground ,meta)
                (org-document-title :foreground ,func :inherit bold :height 1.4 :underline t)
                (org-done :foreground ,suc :inherit bold :background ,green-bg)
                (org-ellipsis :foreground ,keyword)
                (org-footnote  :underline t :foreground ,base)
                (org-hide :foreground ,base)
                (org-kbd :inherit region :foreground ,base :box (:line-width 1 :style released-button))
                (org-level-1 :inherit bold :bold 'unspecified :foreground ,head1 :height 1.3) ;; :background ,head1-bg)
                (org-level-2 :inherit bold :bold 'unspecified :foreground ,head2 :height 1.2) ;; :background ,head2-bg)
                (org-level-3 :bold nil :foreground ,head3 :height 1.1) ;; :background ,head3-bg)
                (org-level-4 :bold nil :foreground ,head4) ;; :background ,head4-bg)
                (org-level-5 :bold nil :foreground ,head1)
                (org-level-6 :bold nil :foreground ,head2)
                (org-level-7 :bold nil :foreground ,head3)
                (org-level-8 :bold nil :foreground ,head4)
                (org-link :foreground ,rainbow-2 :underline t)
                (org-meta-line :foreground ,meta)
                (org-mode-line-clock-overrun :foreground ,err)
                (org-priority :foreground ,war :inherit bold :bold 'unspecified )
                (org-quote :inherit org-block :slant italic)
                (org-scheduled :foreground ,comp)
                (org-scheduled-today :foreground ,func :height 1.2)
                (org-scheduled-previously :foreground ,base :slant italic)
                (org-sexp-date :foreground ,base)
                (org-special-keyword :foreground ,func)
                (org-table :foreground ,base :background ,head1-bg)
                (org-tag :foreground ,meta)
                (org-time-grid :foreground ,str)
                (org-todo :foreground ,war :inherit bold :background ,yellow-bg)
                (org-upcoming-deadline :foreground ,war :inherit org-priority)
                (org-upcoming-distant-deadline :foreground ,suc :inherit org-priority)
                (org-verbatim :foreground ,keyword)
                (org-verse :inherit org-block :slant italic)
                (org-warning :foreground ,err :inherit org-priority)


;;;;; ace-window
                (aw-leading-char-face :foreground ,func :weight bold :height 2.0 :box (:line-width 1 :color ,keyword :style released-button))

;;;;; ahs
                (ahs-face :background ,highlight)
                (ahs-plugin-whole-buffer-face :background ,mat :foreground ,bg1)

;;;;; anzu-mode
                (anzu-mode-line :foreground ,yellow :inherit bold)

;;;;; avy
                (avy-lead-face   :background ,green-bg :foreground ,green)
                (avy-lead-face-0 :background ,green-bg :foreground ,yellow)
                (avy-lead-face-1 :background ,green-bg :foreground ,magenta)
                (avy-lead-face-2 :background ,green-bg :foreground ,blue)

;;;;; calfw
                (cfw:face-title               :foreground ,head1 :height 2.0 :weight bold :inherit variable-pitch)
                (cfw:face-header              :foreground ,base :weight bold)
                (cfw:face-saturday            :foreground ,base :weight bold)
                (cfw:face-sunday              :foreground ,base :weight bold)
                (cfw:face-holiday             :foreground ,head1 :weight bold)
                (cfw:face-grid                :foreground ,border)
                (cfw:face-default-content     :foreground ,green)
                (cfw:face-periods             :foreground ,cyan)
                ;;(cfw:face-day-title           :background ,head1-bg)
                (cfw:face-default-day         :foreground ,base :weight bold)
                (cfw:face-annotation          :foreground ,aqua)
                (cfw:face-disable             :foreground ,base-dim)
                (cfw:face-today-title         :background ,blue :weight bold)
                ;;(cfw:face-today               :background ,head1-bg :weight bold)
                (cfw:face-select              :background ,magenta :weight bold)
                (cfw:face-toolbar             :foreground ,base :background ,bg1)
                (cfw:face-toolbar-button-off  :foreground ,base :weight bold)
                (cfw:face-toolbar-button-on   :foreground ,base :weight bold)

;;;;; centaur-tabs
                (centaur-tabs-default :background ,bg1 :foreground ,bg1)
                (centaur-tabs-selected :background ,bg1 :foreground ,base :weight bold)
                (centaur-tabs-unselected :background ,bg2 :foreground ,base-dim :weight light)
                (centaur-tabs-selected-modified :background ,bg1
                                                :foreground ,blue :weight bold)
                (centaur-tabs-unselected-modified :background ,bg2 :weight light
                                                  :foreground ,blue)
                (centaur-tabs-active-bar-face :background ,keyword)
                (centaur-tabs-modified-marker-selected :inherit 'centaur-tabs-selected :foreground,keyword)
                (centaur-tabs-modified-marker-unselected :inherit 'centaur-tabs-unselected :foreground,keyword)

;;;;; cider
                (cider-enlightened :background nil :box (:color ,yellow :line-width -1 :style nil) :foreground ,yellow)
                (cider-enlightened-local :foreground ,yellow)
                (cider-instrumented-face :background nil :box (:color ,red :line-width -1 :style nil) :foreground ,red)
                (cider-result-overlay-face :background nil :box (:color ,blue :line-width -1 :style nil) :foreground ,blue)
                (cider-test-error-face :background ,war :foreground ,bg1)
                (cider-test-failure-face :background ,err :foreground ,bg1)
                (cider-test-success-face :background ,suc :foreground ,bg1)
                (cider-traced-face :box (:color ,cyan :line-width -1 :style nil))

;;;;; diff
                (diff-added             :background nil :foreground ,green :extend t)
                (diff-changed           :background nil :foreground ,blue)
                (diff-header            :background ,cblk-ln-bg :foreground ,func :extend t)
                (diff-file-header       :background ,cblk-ln-bg :foreground ,cblk :extend t)
                (diff-indicator-added   :background nil :foreground ,green :extend t)
                (diff-indicator-changed :background nil :foreground ,blue)
                (diff-indicator-removed :background nil :foreground ,red)
                (diff-refine-added      :background ,green :foreground ,bg1)
                (diff-refine-changed    :background ,blue :foreground ,bg1)
                (diff-refine-removed    :background ,red :foreground ,bg1)
                (diff-removed           :background nil :foreground ,red :extend t)

;;;;; ediff
                (ediff-current-diff-A :background ,red-bg :foreground ,red :extend t)
                (ediff-current-diff-Ancestor :background ,aqua-bg :foreground ,aqua :extend t)
                (ediff-current-diff-B :background ,green-bg :foreground ,green :extend t)
                (ediff-current-diff-C :background ,blue-bg :foreground ,blue :extend t)
                (ediff-even-diff-A :background ,bg3 :extend t)
                (ediff-even-diff-Ancestor :background ,bg3 :extend t)
                (ediff-even-diff-B :background ,bg3 :extend t)
                (ediff-even-diff-C :background ,bg3 :extend t)
                (ediff-fine-diff-A :background ,red :foreground ,bg1 :extend t)
                (ediff-fine-diff-Ancestor :background nil :inherit bold :extend t)
                (ediff-fine-diff-B :background ,green :foreground ,bg1)
                (ediff-fine-diff-C :background ,blue :foreground ,bg1)
                (ediff-odd-diff-A :background ,bg4 :extend t)
                (ediff-odd-diff-Ancestor :background ,bg4 :extend t)
                (ediff-odd-diff-B :background ,bg4 :extend t)
                (ediff-odd-diff-C :background ,bg4 :extend t)

;;;;; ein
                (ein:cell-input-area :background ,bg2)
                (ein:cell-input-prompt :foreground ,suc)
                (ein:cell-output-prompt :foreground ,err)
                (ein:notification-tab-normal :foreground ,keyword)
                (ein:notification-tab-selected :foreground ,suc :inherit bold)

;;;;; eldoc
                (eldoc-highlight-function-argument :foreground ,mat :inherit bold)

;;;;; elfeed
                (elfeed-search-date-face :foreground ,head2)
                (elfeed-search-feed-face :foreground ,blue)
                (elfeed-search-tag-face :foreground ,func)
                (elfeed-search-title-face :foreground ,var)
                (elfeed-search-unread-title-face :foreground ,base)

;;;;; enh-ruby
                (enh-ruby-op-face :background ,bg1 :foreground ,base)
                (enh-ruby-string-delimiter-face :foreground ,str)

;;;;; erc
                (erc-input-face :foreground ,func)
                (erc-my-nick-face :foreground ,keyword)
                (erc-nick-default-face :foreground ,keyword)
                (erc-nick-prefix-face :foreground ,yellow)
                (erc-notice-face :foreground ,str)
                (erc-prompt-face :foreground ,mat :inherit bold)
                (erc-timestamp-face :foreground ,keyword)

;;;;; eshell
                (eshell-ls-archive :foreground ,red :inherit bold)
                (eshell-ls-backup :inherit font-lock-comment-face)
                (eshell-ls-clutter :inherit font-lock-comment-face)
                (eshell-ls-directory :foreground ,keyword :inherit bold)
                (eshell-ls-executable :foreground ,suc :inherit bold)
                (eshell-ls-missing :inherit font-lock-warning-face)
                (eshell-ls-product :inherit font-lock-doc-face)
                (eshell-ls-special :foreground ,yellow :inherit bold)
                (eshell-ls-symlink :foreground ,cyan :inherit bold)
                (eshell-ls-unreadable :foreground ,base)
                (eshell-prompt :foreground ,keyword :inherit bold)

;;;;; ESS
                (ess-assignment-face :foreground ,type :inherit bold)
                (ess-backquoted-face :foreground ,var)
                (ess-constant-face :inherit font-lock-constant-face)
                (ess-f-t-face :inherit font-lock-constant-face)
                (ess-function-call-face :foreground ,func)
                (ess-keyword-face :inherit font-lock-keyword-face)
                (ess-matrix-face :foreground ,base-dim)
                (ess-modifiers-face :foreground ,keyword)
                (ess-numbers-face :inherit font-lock-constant-face)
                (ess-operator-face :foreground ,var)
                (ess-paren-face :foreground ,blue)
                (ess-r-control-flow-keyword-face :foreground ,keyword)
                (ess-r-signal-keyword-face :foreground ,war)


;;;;; evil
                (evil-ex-lazy-highlight :background ,mat :foreground ,bg1)
                (evil-ex-substitute-matches :background ,red-bg :foreground ,red)
                (evil-ex-substitute-replacement :background ,green-bg :foreground ,green)

;;;;; evil-goggles
                (evil-goggles--pulse-face :background ,yellow-bg :foreground ,yellow)
                (evil-goggles-change-face :background ,blue-bg-s :foreground ,blue)
                (evil-goggles-commentary-face :background ,aqua-bg :foreground ,aqua)
                (evil-goggles-delete-face :background ,red-bg-s :foreground ,red)
                (evil-goggles-fill-and-move-face :background ,green-bg-s :foreground ,green)
                (evil-goggles-indent-face :background ,green-bg-s :foreground ,green)
                (evil-goggles-join-face :background ,green-bg-s :foreground ,green)
                (evil-goggles-nerd-commenter-face :background ,aqua-bg :foreground ,aqua)
                (evil-goggles-paste-face :background ,green-bg-s :foreground ,green)
                (evil-goggles-record-macro-face :background ,blue-bg-s :foreground ,blue)
                (evil-goggles-replace-with-register-face :background ,yellow-bg :foreground ,yellow)
                (evil-goggles-set-marker-face :background ,blue-bg-s :foreground ,blue)
                (evil-goggles-shift-face :background ,blue-bg-s :foreground ,blue)
                (evil-goggles-surround-face :background ,blue-bg-s :foreground ,blue)
                (evil-goggles-yank-face :background ,blue-bg-s :foreground ,blue)
                (evil-goggles-undo-redo-add-face :background ,green-bg-s :foreground ,green)
                (evil-goggles-undo-redo-change-face :background ,blue-bg-s :foreground ,blue)
                (evil-goggles-undo-redo-remove-face :background ,red-bg-s :foreground ,red)

;;;;; evil-mc
                (evil-mc-cursor-bar-face :foreground ,aqua)
                (evil-mc-cursor-default-face :background ,aqua :foreground ,bg4)
                (evil-mc-cursor-hbar-face :foreground ,aqua)
                (evil-mc-region-face :inherit highlight)

;;;;; jabber
                (jabber-activity-face :inherit bold :foreground ,red)
                (jabber-activity-personal-face :inherit bold :foreground ,blue)
                (jabber-chat-error :inherit bold :foreground ,red)
                (jabber-chat-prompt-foreign :inherit bold :foreground ,red)
                (jabber-chat-prompt-local :inherit bold :foreground ,blue)
                (jabber-chat-prompt-system :inherit bold :foreground ,green)
                (jabber-chat-text-foreign :foreground ,base)
                (jabber-chat-text-local :foreground ,base)
                (jabber-rare-time-face :foreground ,green)
                (jabber-roster-user-away :foreground ,yellow)
                (jabber-roster-user-chatty :inherit bold :foreground ,green)
                (jabber-roster-user-dnd :foreground ,red)
                (jabber-roster-user-error :foreground ,err)
                (jabber-roster-user-offline :foreground ,base)
                (jabber-roster-user-online :inherit bold :foreground ,green)
                (jabber-roster-user-xa :foreground ,aqua)

;;;;; git-gutter-fr
                (git-gutter-fr:added :foreground ,green :inherit bold)
                (git-gutter-fr:deleted :foreground ,war :inherit bold)
                (git-gutter-fr:modified :foreground ,keyword :inherit bold)

;;;;; git-timemachine
                (git-timemachine-minibuffer-detail-face :foreground ,blue :inherit bold :background ,blue-bg)

;;;;; gnus
                (gnus-emphasis-highlight-words :background ,suc :foreground ,bg1)
                (gnus-header-content :foreground ,keyword)
                (gnus-header-from :foreground ,var)
                (gnus-header-name :foreground ,comp)
                (gnus-header-subject :foreground ,func :inherit bold)
                (gnus-summary-cancelled :background ,war :foreground ,bg1)

;;;;; guide-key
                (guide-key/highlight-command-face :foreground ,base)
                (guide-key/key-face :foreground ,keyword)
                (guide-key/prefix-command-face :foreground ,keyword :inherit bold)

;;;;; info
                (info-header-xref :foreground ,func :underline t)
                (info-menu :foreground ,suc)
                (info-node :foreground ,func :inherit bold)
                ;; (info-quoted-name :foreground ,keyword)
                (info-reference-item :background nil :underline t :inherit bold)
                ;; (info-string :foreground ,str)
                (info-title-1 :height 1.4 :inherit bold)
                (info-title-2 :height 1.3 :inherit bold)
                (info-title-3 :height 1.3)
                (info-title-4 :height 1.2)

;;;;; ivy
                (ivy-current-match :background ,highlight :inherit bold)
                (ivy-minibuffer-match-face-1 :inherit bold)
                (ivy-minibuffer-match-face-2 :foreground ,head1 :underline t)
                (ivy-minibuffer-match-face-3 :foreground ,head4 :underline t)
                (ivy-minibuffer-match-face-4 :foreground ,head3 :underline t)
                (ivy-remote :foreground ,cyan)
                
;;;;; ivy-posframe
                (ivy-posframe :background ,bg3)

;;;;; latex
                (font-latex-bold-face :foreground ,comp)
                (font-latex-italic-face :foreground ,keyword :italic t)
                (font-latex-match-reference-keywords :foreground ,const)
                (font-latex-match-variable-keywords :foreground ,var)
                ;; (font-latex-sectioning-0-face :inherit bold :foreground ,head3 :height 1.3 :background head3-bg)
                ;; (font-latex-sectioning-1-face :inherit bold :foreground ,head4 :height 1.3 :background head4-bg)
                ;; (font-latex-sectioning-2-face :inherit bold :foreground ,head1 :height 1.3 :background head1-bg)
                ;; (font-latex-sectioning-3-face :inherit bold :foreground ,head2 :height 1.2 :background head2-bg)
                ;; (font-latex-sectioning-4-face :bold nil :foreground ,head3 :height 1.1 :background head3-bg)
                ;; (font-latex-sectioning-5-face :bold nil :foreground ,head4 :background head4-bg)
                (font-latex-string-face :foreground ,str)
                (font-latex-warning-face :foreground ,war)

;;;;; ledger-mode
                (ledger-font-directive-face :foreground ,meta)
                (ledger-font-posting-amount-face :foreground ,yellow)
                (ledger-font-posting-date-face :foreground ,head1)
                (ledger-occur-xact-face :background ,bg2)

;;;;; magit
                (magit-blame-culprit :background ,yellow-bg :foreground ,yellow)
                (magit-blame-date    :background ,yellow-bg :foreground ,green)
                (magit-blame-hash    :background ,yellow-bg :foreground ,func)
                (magit-blame-header  :background ,yellow-bg :foreground ,green)
                (magit-blame-heading :background ,yellow-bg :foreground ,green)
                (magit-blame-name    :background ,yellow-bg :foreground ,yellow)
                (magit-blame-sha1    :background ,yellow-bg :foreground ,func)
                (magit-blame-subject :background ,yellow-bg :foreground ,yellow)
                (magit-blame-summary :background ,yellow-bg :foreground ,yellow :extend t)
                (magit-blame-time    :background ,yellow-bg :foreground ,green)
                ;;(magit-branch :foreground ,const :inherit bold)
                (magit-branch-current :background ,blue-bg :foreground ,blue :inherit bold :box t)
                (magit-branch-local :background ,blue-bg :foreground ,blue :inherit bold)
                (magit-branch-remote :background ,aqua-bg :foreground ,aqua :inherit bold)
                ;;(magit-diff-context-highlight :background ,bg2 :foreground ,base :extend t)
                (magit-diff-hunk-heading :background ,ttip-bg :foreground ,ttip :extend t)
                (magit-diff-hunk-heading-highlight :background ,ttip-sl :foreground ,base :extend t)
                ;;(magit-hash :foreground ,var)
                ;;(magit-hunk-heading           :background ,bg3 :extend t)
                ;;(magit-hunk-heading-highlight :background ,bg3 :extend t)
                ;;(magit-item-highlight :background ,bg2 :extend t)))
                ;;(magit-log-author :foreground ,func)
                (magit-log-head-label-head :background ,yellow :foreground ,bg1 :inherit bold)
                (magit-log-head-label-local :background ,keyword :foreground ,bg1 :inherit bold)
                (magit-log-head-label-remote :background ,suc :foreground ,bg1 :inherit bold)
                (magit-log-head-label-tags :background ,magenta :foreground ,bg1 :inherit bold)
                (magit-log-head-label-wip :background ,cyan :foreground ,bg1 :inherit bold)
                (magit-log-sha1 :foreground ,str)
                (magit-process-ng :foreground ,war :inherit bold)
                (magit-process-ok :foreground ,func :inherit bold)
                (magit-reflog-amend :foreground ,magenta)
                (magit-reflog-checkout :foreground ,blue)
                (magit-reflog-cherry-pick :foreground ,green)
                (magit-reflog-commit :foreground ,green)
                (magit-reflog-merge :foreground ,green)
                (magit-reflog-other :foreground ,cyan)
                (magit-reflog-rebase :foreground ,magenta)
                (magit-reflog-remote :foreground ,cyan)
                (magit-reflog-reset :foreground ,red)
                ;;(magit-section-heading        :foreground ,keyword :inherit bold :extend t)
                ;;(magit-section-highlight      :background ,bg2 :extend t)
                (magit-section-title :background ,bg1 :foreground ,keyword :inherit bold)

;;;;; man
                (Man-overstrike :foreground ,head1 :inherit bold)
                (Man-reverse :foreground ,highlight)
                (Man-underline :foreground ,comp :underline t)

;;;;; markdown
                ;;(markdown-header-face-1 :inherit bold :foreground ,head1 :height 1.3 :background head1-bg)
                ;;(markdown-header-face-2 :inherit bold :foreground ,head2 :height 1.2 :background head2-bg)
                ;;(markdown-header-face-3 :bold nil :foreground ,head3 :height 1.1 :background head3-bg)
                ;;(markdown-header-face-4 :bold nil :foreground ,head4 :background head4-bg)
                (markdown-header-face-5 :bold nil :foreground ,head1)
                (markdown-header-face-6 :bold nil :foreground ,head2)
                ;;(markdown-table-face :foreground ,base :background ,head1-bg)

;;;;; mu4e
                (mu4e-attach-number-face :foreground ,var)
                (mu4e-cited-1-face :foreground ,head1)
                (mu4e-cited-2-face :foreground ,head2)
                (mu4e-cited-3-face :foreground ,head3)
                (mu4e-cited-4-face :foreground ,head4)
                (mu4e-cited-5-face :foreground ,head1)
                (mu4e-cited-6-face :foreground ,head2)
                (mu4e-cited-7-face :foreground ,head3)
                (mu4e-contact-face :foreground ,func)
                (mu4e-draft-face :foreground ,var)
                (mu4e-flagged-face :foreground ,yellow :inherit bold)
                (mu4e-header-key-face :foreground ,meta :inherit bold)
                (mu4e-header-title-face :foreground ,keyword :inherit bold)
                (mu4e-header-marks-face :foreground ,comp)
                (mu4e-header-value-face :foreground ,keyword :inherit bold)
                (mu4e-header-highlight-face :background ,highlight)
                (mu4e-highlight-face :foreground ,comp)
                (mu4e-title-face :foreground ,head2 :inherit bold)
                (mu4e-replied-face :foreground ,green)
                (mu4e-modeline-face :foreground ,yellow)
                (mu4e-special-header-value-face :foreground ,green)
                (mu4e-unread-face :foreground ,head1 :inherit bold)
                (mu4e-view-url-number-face :foreground ,comp)

;;;;; mu4e-maildirs
                (mu4e-maildirs-extension-maildir-hl-face :foreground ,head1 :inherit bold)

;;;;; notmuch
                (notmuch-search-date :foreground ,func)
                (notmuch-search-flagged-face :weight extra-bold)
                (notmuch-search-non-matching-authors :foreground ,base-dim)
                (notmuch-search-unread-face :background ,highlight-dim)
                (notmuch-tag-face :foreground ,keyword)
                (notmuch-tag-flagged :foreground ,war)

;;;;; neotree
                (neo-dir-link-face :foreground ,keyword :inherit bold)
                (neo-expand-btn-face :foreground ,base)
                (neo-file-link-face :foreground ,base)
                (neo-root-dir-face :foreground ,func :inherit bold)

;;;;; swiper
                (swiper-line-face :background ,highlight :inherit bold)
                (swiper-match-face-1 :inherit bold)
                (swiper-match-face-2 :foreground ,head1 :underline t)
                (swiper-match-face-3 :foreground ,head4 :underline t)
                (swiper-match-face-4 :foreground ,head3 :underline t)

;;;;; tabbar
                (tabbar-button :inherit tabbar-default )
                (tabbar-button-highlight :inherit tabbar-default)
                (tabbar-default :background ,bg1 :foreground ,head1 :height 0.9)
                (tabbar-highlight :underline t)
                (tabbar-selected :inherit tabbar-default :foreground ,func :weight bold)
                (tabbar-selected-modified :inherit tabbar-default :foreground ,red :weight bold)
                (tabbar-separator :inherit tabbar-default)
                (tabbar-unselected :inherit tabbar-default :background ,bg1 :slant italic :weight light)
                (tabbar-unselected-modified :inherit tabbar-unselected :background ,bg1 :foreground ,red)                

;;;;; term
                (term :foreground ,base :background ,bg1)
                (term-color-black :foreground ,bg4 :background ,bg4)
                (term-color-blue :foreground ,keyword :background ,keyword)
                (term-color-cyan :foreground ,cyan :background ,cyan)
                (term-color-green :foreground ,green :background ,green)
                (term-color-magenta :foreground ,magenta :background ,magenta)
                (term-color-red :foreground ,red :background ,red)
                (term-color-white :foreground ,base :background ,base)
                (term-color-yellow :foreground ,yellow :background ,yellow)

;;;;; vterm
                (vterm-color-default :foreground ,base :background ,bg1)
                ;; vterm-color-black used to render black color code.
                ;; The foreground color is used as ANSI color 0 and the background
                ;; color is used as ANSI color 8.
                (vterm-color-black :foreground ,bg4 :background ,bg4)
                (vterm-color-blue :foreground ,blue :background ,blue)
                (vterm-color-cyan :foreground ,cyan :background ,cyan)
                (vterm-color-green :foreground ,green :background ,green)
                (vterm-color-magenta :foreground ,magenta :background ,magenta)
                (vterm-color-red :foreground ,red  :background ,red)
                (vterm-color-white :foreground ,base  :background ,base)
                (vterm-color-yellow :foreground ,yellow   :background ,yellow)

;;;;; tide
                (tide-hl-identifier-face :foreground ,yellow :background ,yellow-bg)

;;;;; treemacs
                (treemacs-git-added-face :foreground ,green :background ,green-bg)
                (treemacs-git-conflict-face :foreground ,red :background ,red-bg)
                (treemacs-git-ignored-face :foreground ,yellow)
                (treemacs-git-modified-face :foreground ,blue :background ,blue-bg)
                (treemacs-git-untracked-face :foreground ,aqua :background ,aqua-bg)

;;;;; web-mode
                (web-mode-builtin-face :inherit ,font-lock-builtin-face)
                (web-mode-comment-face :inherit ,font-lock-comment-face)
                (web-mode-constant-face :inherit ,font-lock-constant-face)
                (web-mode-current-element-highlight-face :background ,bg3)
                (web-mode-doctype-face :inherit ,font-lock-comment-face)
                (web-mode-function-name-face :inherit ,font-lock-function-name-face)
                (web-mode-html-attr-name-face :foreground ,func)
                (web-mode-html-attr-value-face :foreground ,keyword)
                (web-mode-html-tag-face :foreground ,keyword)
                (web-mode-keyword-face :foreground ,keyword)
                (web-mode-string-face :foreground ,str)
                (web-mode-symbol-face :foreground ,type)
                (web-mode-type-face :inherit ,font-lock-type-face)
                (web-mode-warning-face :inherit ,font-lock-warning-face)

;;;;; which-key
                ;;(which-key-command-description-face :foreground ,base)
                ;;(which-key-group-description-face :foreground ,keyword)
                ;;(which-key-key-face :foreground ,func :inherit bold)
                ;;(which-key-separator-face :background nil :foreground ,str)
                ;;(which-key-special-key-face :background ,func :foreground ,bg1)

;;;;; which-function-mode
                ;;(which-func :foreground ,func)

;;;;; whitespace-mode
                (whitespace-empty :background nil :foreground ,yellow)
                (whitespace-indentation :background nil :foreground ,war)
                (whitespace-line :background nil :foreground ,comp)
                (whitespace-newline :background nil :foreground ,comp)
                (whitespace-space :background nil :foreground ,act2)
                (whitespace-space-after-tab :background nil :foreground ,yellow)
                (whitespace-space-before-tab :background nil :foreground ,yellow)
                (whitespace-tab :background nil :foreground ,act2)
                (whitespace-trailing :background ,err :foreground ,war)

;;;;; other, need more work
                (ac-completion-face :underline t :foreground ,keyword)
                (ffap :foreground ,base)
                (flx-highlight-face :foreground ,comp :underline nil)
                (icompletep-determined :foreground ,keyword)
                (js2-external-variable :foreground ,comp)
                (js2-function-param :foreground ,const)
                (js2-jsdoc-html-tag-delimiter :foreground ,str)
                (js2-jsdoc-html-tag-name :foreground ,keyword)
                (js2-jsdoc-value :foreground ,str)
                (js2-private-function-call :foreground ,const)
                (js2-private-member :foreground ,base)
                (js3-error-face :underline ,war)
                (js3-external-variable-face :foreground ,var)
                (js3-function-param-face :foreground ,keyword)
                (js3-instance-member-face :foreground ,const)
                (js3-jsdoc-tag-face :foreground ,keyword)
                (js3-warning-face :underline ,keyword)
                (slime-repl-inputed-output-face :foreground ,comp)
                (trailing-whitespace :foreground nil :background ,err)
                (undo-tree-visualizer-current-face :foreground ,keyword)
                (undo-tree-visualizer-default-face :foreground ,base)
                (undo-tree-visualizer-register-face :foreground ,comp)
                (undo-tree-visualizer-unmodified-face :foreground ,var)

;;;;; shm
                (shm-current-face :background ,green-bg-s)
                (shm-quarantine-face :background ,red-bg-s)

;;;;; show-paren
                (show-paren-match :foreground ,mat :inherit bold  :underline t)
                (show-paren-match-expression :background ,green-bg-s)
                (show-paren-mismatch :foreground ,err :inherit bold :underline t)

;;;;; smartparens
                (sp-pair-overlay-face :background ,highlight :foreground nil)
                (sp-show-pair-match-face :foreground ,mat :inherit bold  :underline t)

;;;;; smerge
                (smerge-base :background ,yellow-bg :extend t)
                (smerge-markers :background ,ttip-bg :foreground ,ttip :extend t)
                (smerge-mine :background ,red-bg)
                (smerge-other :background ,green-bg)
                (smerge-refined-added :background ,green-bg-s :foreground ,green)
                (smerge-refined-changed :background ,blue-bg-s :foreground ,blue)
                (smerge-refined-removed :background ,red-bg-s :foreground ,red)

;;;;; solaire
                (solaire-default-face :inherit default :background ,bg2)
                (solaire-minibuffer-face :inherit default :background ,bg2)
                (solaire-hl-line-face :inherit hl-line :background ,bg2)
                (solaire-org-hide-face :inherit org-hide :background ,bg2)


;;;;; sml-mode-line
                (sml-modeline-end-face :inherit default :width condensed)
;;;;; SLIME
                (slime-repl-output-face :foreground ,zenburn-red)
                (slime-repl-inputed-output-face :foreground ,zenburn-green)
                (slime-error-face :underline (:style wave :color ,zenburn-red))
                (slime-warning-face :underline (:style wave :color ,zenburn-orange))
                (slime-style-warning-face :underline (:style wave :color ,zenburn-yellow))
                (slime-note-face :underline (:style wave :color ,zenburn-green))
                (slime-highlight-face :inherit highlight)

                ;; Flycheck
                (flycheck-error :underline (:style wave :color ,red))
                (flycheck-warning :underline (:style wave :color ,orange))

                ;; highlight indentation
                (highlight-indentation-face :background, current-line)
                (highlight-indentation-current-column-face :background, far-background)

                ;; Flymake
                (flymake-warnline :underline (:style wave :color ,orange) :background ,background)
                (flymake-errline :underline (:style wave :color ,red) :background ,background)

                ;; Clojure errors
                (clojure-test-failure-face :background nil :inherit flymake-warnline)
                (clojure-test-error-face :background nil :inherit flymake-errline)
                (clojure-test-success-face :background nil :foreground nil :underline ,green)
                (clojure-keyword-face :inherit font-lock-builtin-face)

                ;; EDTS errors
                (edts-face-warning-line :background nil :inherit flymake-warnline)
                (edts-face-warning-mode-line :background nil :foreground ,orange :weight bold)
                (edts-face-error-line :background nil :inherit flymake-errline)
                (edts-face-error-mode-line :background nil :foreground ,red :weight bold)

                ;; For Brian Carper's extended clojure syntax table
                (clojure-keyword :foreground ,yellow)
                (clojure-parens :foreground ,foreground)
                (clojure-braces :foreground ,green)
                (clojure-brackets :foreground ,yellow)
                (clojure-double-quote :foreground ,aqua :background nil)
                (clojure-special :foreground ,blue)
                (clojure-java-call :foreground ,purple)

                ;; diredfl
                (diredfl-compressed-file-suffix :foreground ,blue)
                (diredfl-compressed-file-name :foreground ,blue)
                (diredfl-ignored-file-name :foreground ,comment)
                (diredfl-date-time :foreground ,green)
                (diredfl-file-name :foreground ,foreground)
                (diredfl-read-priv :foreground ,green :background nil)
                (diredfl-write-priv :foreground ,yellow :background nil)
                (diredfl-exec-priv :foreground ,red :background nil)
                (diredfl-rare-priv :foreground ,orange :background nil)
                (diredfl-no-priv :background nil)
                (diredfl-deletion :inherit error :inverse-video t)
                (diredfl-deletion-file-name :inherit error)
                (diredfl-dir-heading :foreground ,green :weight bold)
                (diredfl-symlink :foreground ,purple)
                (diredfl-dir-priv :foreground ,blue :background nil)
                (diredfl-dir-name :foreground ,blue :background nil)
                (diredfl-number :foreground ,yellow :background nil)
                (diredfl-flag-mark :foreground ,orange :background nil)
                (diredfl-flag-mark-line :foreground ,nil :background ,selection)
                (diredfl-file-suffix :foreground ,aqua :background nil)

                ;; Grep
                (grep-context-face :foreground ,comment)
                (grep-error-face :foreground ,red :weight bold :underline t)
                (grep-hit-face :foreground ,blue)
                (grep-match-face :foreground nil :background nil :inherit match)

                (regex-tool-matched-face :foreground nil :background nil :inherit match)

                ;; elixir-mode
                (elixir-negation-face :foreground ,red)
                (elixir-attribute-face :foreground ,purple)
                (elixir-atom-face :foreground ,aqua)
                (elixir-ignored-var-face :foreground ,comment)

                ;; ansi-term
                (term :foreground nil :background nil :inherit default)
                (term-color-black   :foreground ,foreground :background ,foreground)
                (term-color-red     :foreground ,red :background ,red)
                (term-color-green   :foreground ,green :background ,green)
                (term-color-yellow  :foreground ,yellow :background ,yellow)
                (term-color-blue    :foreground ,blue :background ,blue)
                (term-color-magenta :foreground ,purple :background ,purple)
                (term-color-cyan    :foreground ,aqua :background ,aqua)
                (term-color-white   :foreground ,background :background ,background)


                )))

  (apply #'custom-theme-set-faces
         'CanftIn-dracula
         (let ((color-names (mapcar #'car colors))
               (graphic-colors (mapcar #'cadr colors))
               (tty-colors (mapcar #'car (mapcar #'last colors))))
           (cl-flet* ((expand-for-tty (spec) (cl-progv color-names tty-colors
                                               (eval `(backquote ,spec))))
                      (expand-for-graphic (spec) (cl-progv color-names graphic-colors
                                                   (eval `(backquote ,spec)))))
             (cl-loop for (face . spec) in faces
                      collect `(,face
                                ((((min-colors 16777216))
                                  ,(expand-for-graphic spec))
                                 (t
                                  ,(expand-for-tty spec)))))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'CanftIn-dracula)


;; Local Variables:
;; no-byte-compile: t
;; End:

;;; CanftIn-dracula-theme.el ends here
