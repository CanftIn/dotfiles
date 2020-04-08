;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   dotspacemacs-distribution 'spacemacs

   dotspacemacs-enable-lazy-installation 'unused

   dotspacemacs-ask-for-lazy-installation t

   dotspacemacs-configuration-layer-path '()

   dotspacemacs-configuration-layers
   '(
     ;; ----------------   languages   ----------------
     javascript
     typescript
     json
     yaml
     html
     sql
     (haskell :variables
              haskell-completion-backend 'lsp ;;'ghci 'dante
              haskell-enable-hindent t
              haskell-enable-hindent-style "johan-tibell")
     (c-c++ :variables
           =c-c++-backend= 'lsp-ccls;;'lsp-clangd
           c-c++-adopt-subprojects t
           c-c++-lsp-enable-semantic-highlight 'rainbow
           c-c++-default-mode-for-headers 'c++-mode
           ;;c++-enable-organize-includes-on-save t
           c-c++-enable-clang-format-on-save t
           c-c++-enable-google-style t
           c-c++-enable-google-newline t
           )
     (java :variables java-backend 'meghanada)
     python
     scheme
     racket
     (clojure :variables
              clojure-enable-fancify-symbols t
              clojure-enable-sayid t
              clojure-enable-clj-refactor t
              clojure-enable-linters '(clj-kondo joker)
              )
     common-lisp
     emacs-lisp
     ocaml
     sml
     (reasonml :variables reason-auto-refmt t)
     asm
     (scala :variables
            scala-backend 'scala-metals
            scala-indent:use-javadoc-style t
            scala-enable-eldoc t
            scala-auto-insert-asterisk-in-comments t
            scala-use-unicode-arrows t
            scala-auto-start-backend t
            )
     (elixir :variables elixir-backend 'alchemist)
     erlang
     (rust :variables rust-backend 'racer)
     fsharp
     ;; julia
     ;; kotlin
     ;; idris
     ;; elm
     coq
     (markdown :variables markdown-live-preview-engine 'vmd)
     asciidoc
     graphviz
     (plantuml :variables
               plantuml-jar-path "~/.emacs.d/private/third-party/plantuml.jar"
               org-plantuml-jar-path "~/.emacs.d/private/third-party/plantuml.jar"
               )
     lsp
     (go :variables
         go-use-golangci-lint t
         go-linter 'golangci-lint
         godoc-at-point-function 'godoc-gogetdoc
         go-format-before-save t
         gofmt-command "goimports"
         go-backend 'lsp
         go-tab-width 2)
     ;; ----------------   languages   ----------------
     (vue :variables vue-backend 'lsp)
     (node :variables node-add-modules-path t)
     (cmake :variables cmake-enable-cmake-ide-support t)

     ;; ----------------     tools     ----------------
     helm
     (colors :variables
             colors-colorize-identifiers 'variables ;; set to 'all or 'variables
             colors-enable-nyan-cat-progress-bar t
             )
     ;; prodigy
     emoji
     search-engine
     (chrome :variables chrome-exec-path "C:/Program Files (x86)/Google/Chrome/Application/chrome.exe")
     (auto-completion :variables
                      auto-completion-return-key-behavior nil ;;'complete
                      auto-completion-tab-key-behavior 'complete ;;'cycle
                      auto-completion-complete-with-key-sequence "jk"
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-idle-delay 0.2
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-use-company-box t
                      auto-completion-enable-help-tooltip 'manual
                      auto-completion-enable-sort-by-usage t
                      auto-completion-private-snippets-directory "d:/linux_home/.emacs.d/private/yasnippets"
                      )
     better-defaults
     helpful
     git
     github
     pdf
     epub
     command-log
     dap
     pandoc
     multiple-cursors
     ;; treemacs
     neotree
     deft
     imenu-list
     (ranger :variables
             ranger-show-preview t
             ranger-show-hidden t
             ranger-cleanup-eagerly t
             ranger-cleanup-on-disable t
             ranger-ignored-extensions '("mkv" "flv" "iso" "mp4"))
     (org :variables
          org-enable-github-support t
          org-enable-bootstrap-support t)
     (shell :variables
            shell-default-shell 'eshell
            shell-default-height 30
            shell-default-position 'bottom)
     ;; spell-checking
     (syntax-checking :variables
                      syntax-checking-enable-tooltips t
                      syntax-checking-enable-by-default t
                      syntax-checking-use-original-bitmaps t
                      )
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-diff-side 'left
                      version-control-global-margin t)
     ;; ----------------     tools     ----------------

     ;; ---------------- my own layers ----------------
     CanftIn
     (display :location local)
     ;; (google-calendar :location local)
     ;;cc-c++
     ;; ---------------- my own layers ----------------
     )

   dotspacemacs-additional-packages
   '(
     aggressive-indent
     all-the-icons
     all-the-icons-dired
     all-the-icons-ivy
     beacon
     (dumb-jump
      :bind (("M-g o" . dumb-jump-go-other-window)
             ("M-g j" . dumb-jump-go)
             ("M-g b" . dumb-jump-back)
             ("M-g i" . dumb-jump-go-prompt)
             ("M-g x" . dumb-jump-go-prefer-external)
             ("M-g z" . dumb-jump-go-prefer-external-other-window))
      :config (setq dumb-jump-selector 'ivy) ;; (setq dumb-jump-selector 'helm)
      :ensure
      )
     git-messenger
     highlight-indent-guides
     mode-icons
     prettier-js
     projectile
     org-super-agenda
     ;;git-auto-commit-mode
     olivetti
     nodejs-repl
     org-rich-yank
     unicode-fonts
     keyfreq
     go-playground
     gotest
     go-autocomplete
     doom-themes
     esup
     yascroll
     (forge
      :after magit)
     clojure-mode-extra-font-locking
     ;; (flycheck-clojure
     ;;  :defer t
     ;;  :commands (flycheck-clojure-setup)
     ;;  :config
     ;;  (eval-after-load 'flycheck
     ;;    '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))
     ;;  (add-hook 'after-init-hook #'global-flycheck-mode))
     (parinfer
      :ensure t
      :bind
      (("C-," . parinfer-toggle-mode))
      :init
      (progn
        (setq parinfer-extensions
              '(defaults       ; should be included.
                 pretty-parens  ; different paren styles for different modes.
                 evil           ; If you use Evil.
                 lispy          ; If you use Lispy. With this extension, you should install Lispy and do not enable lispy-mode directly.
                 paredit        ; Introduce some paredit commands.
                 smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
                 smart-yank))   ; Yank behavior depend on mode.
        (add-hook 'clojure-mode-hook #'parinfer-mode)
        (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
        (add-hook 'common-lisp-mode-hook #'parinfer-mode)
        (add-hook 'scheme-mode-hook #'parinfer-mode)
        (add-hook 'lisp-mode-hook #'parinfer-mode)))

     (helm-gtags
      :init
      (progn
        (setq helm-gtags-ignore-case t
              helm-gtags-auto-update t
              helm-gtags-use-input-at-cursor t
              helm-gtags-pulse-at-cursor t
              helm-gtags-prefix-key "\C-cg"
              helm-gtags-suggested-key-mapping t)

        ;; Enable helm-gtags-mode in Dired so you can jump to any tag
        ;; when navigate project tree with Dired
        (add-hook 'dired-mode-hook 'helm-gtags-mode)

        ;; Enable helm-gtags-mode in Eshell for the same reason as above
        (add-hook 'eshell-mode-hook 'helm-gtags-mode)

        ;; Enable helm-gtags-mode in languages that GNU Global supports
        (add-hook 'c-mode-hook 'helm-gtags-mode)
        (add-hook 'c++-mode-hook 'helm-gtags-mode)
        (add-hook 'java-mode-hook 'helm-gtags-mode)
        (add-hook 'asm-mode-hook 'helm-gtags-mode)

        ;; key bindings
        (with-eval-after-load 'helm-gtags
          (define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
          (define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
          (define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
          (define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
          (define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
          (define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history))))
     ede
     ggtags
     (cc-mode
      :init
      (define-key c-mode-map  [(tab)] 'company-complete)
      (define-key c++-mode-map  [(tab)] 'company-complete))
     semantic
     dtrt-indent
     irony
     flycheck
     flycheck-rtags
     flycheck-irony

     (ivy
      :init
      (progn
        (ivy-mode 1)
        (setq ivy-use-virtual-buffers t)
        (global-set-key (kbd "C-c s") 'swiper)))

     (counsel
      :bind
      (("M-x" . counsel-M-x)
       ("M-y" . counsel-yank-pop)
       ("C-c r" . counsel-recentf)
       ("C-x C-f" . counsel-find-file)
       ("<f1> f" . counsel-describe-function)
       ("<f1> v" . counsel-describe-variable)
       ("<f1> l" . counsel-load-library)
       ("C-h f" . counsel-describe-function)
       ("C-h v" . counsel-describe-variable)
       ("C-h l" . counsel-load-library)))

     (counsel-projectile
      :init
      (counsel-projectile-mode))

     (helm
      :init
      (progn
        (require 'helm-config)
        (require 'helm-grep)
        ;; To fix error at compile:
        ;; Error (bytecomp): Forgot to expand macro with-helm-buffer in
        ;; (with-helm-buffer helm-echo-input-in-header-line)
        (if (version< "26.0.50" emacs-version)
            (eval-when-compile (require 'helm-lib)))

        (defun helm-hide-minibuffer-maybe ()
          (when (with-helm-buffer helm-echo-input-in-header-line)
            (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
              (overlay-put ov 'window (selected-window))
              (overlay-put ov 'face (let ((bg-color (face-background 'default nil)))
                                      `(:background ,bg-color :foreground ,bg-color)))
              (setq-local cursor-type nil))))

        (add-hook 'helm-minibuffer-set-up-hook 'helm-hide-minibuffer-maybe)
        ;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
        ;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
        ;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
        (global-set-key (kbd "C-c h") 'helm-command-prefix)
        (global-unset-key (kbd "C-x c"))

        (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebihnd tab to do persistent action
        (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
        (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

        (define-key helm-grep-mode-map (kbd "<return>")  'helm-grep-mode-jump-other-window)
        (define-key helm-grep-mode-map (kbd "n")  'helm-grep-mode-jump-other-window-forward)
        (define-key helm-grep-mode-map (kbd "p")  'helm-grep-mode-jump-other-window-backward)

        (when (executable-find "curl")
          (setq helm-google-suggest-use-curl-p t))

        (setq helm-google-suggest-use-curl-p t
              helm-scroll-amount 4 ; scroll 4 lines other window using M-<next>/M-<prior>
              ;; helm-quick-update t ; do not display invisible candidates
              helm-ff-search-library-in-sexp t ; search for library in `require' and `declare-function' sexp.

              ;; you can customize helm-do-grep to execute ack-grep
              ;; helm-grep-default-command "ack-grep -Hn --smart-case --no-group --no-color %e %p %f"
              ;; helm-grep-default-recurse-command "ack-grep -H --smart-case --no-group --no-color %e %p %f"
              helm-split-window-in-side-p t ;; open helm buffer inside current window, not occupy whole other window

              helm-echo-input-in-header-line t

              ;; helm-candidate-number-limit 500 ; limit the number of displayed canidates
              helm-ff-file-name-history-use-recentf t
              helm-move-to-line-cycle-in-source t ; move to end or beginning of source when reaching top or bottom of source.
              helm-buffer-skip-remote-checking t

              helm-mode-fuzzy-match t

              helm-buffers-fuzzy-matching t ; fuzzy matching buffer names when non-nil
                                        ; useful in helm-mini that lists buffers
              helm-org-headings-fontify t
              ;; helm-find-files-sort-directories t
              ;; ido-use-virtual-buffers t
              helm-semantic-fuzzy-match t
              helm-M-x-fuzzy-match t
              helm-imenu-fuzzy-match t
              helm-lisp-fuzzy-completion t
              ;; helm-apropos-fuzzy-match t
              helm-buffer-skip-remote-checking t
              helm-locate-fuzzy-match t
              helm-display-header-line nil)

        (add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)

        (global-set-key (kbd "M-x") 'helm-M-x)
        (global-set-key (kbd "M-y") 'helm-show-kill-ring)
        (global-set-key (kbd "C-x b") 'helm-buffers-list)
        (global-set-key (kbd "C-x C-f") 'helm-find-files)
        (global-set-key (kbd "C-c r") 'helm-recentf)
        (global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)
        (global-set-key (kbd "C-c h o") 'helm-occur)
        (global-set-key (kbd "C-c h o") 'helm-occur)

        (global-set-key (kbd "C-c h w") 'helm-wikipedia-suggest)
        (global-set-key (kbd "C-c h g") 'helm-google-suggest)

        (global-set-key (kbd "C-c h x") 'helm-register)
        ;; (global-set-key (kbd "C-x r j") 'jump-to-register)

        (define-key 'help-command (kbd "C-f") 'helm-apropos)
        (define-key 'help-command (kbd "r") 'helm-info-emacs)
        (define-key 'help-command (kbd "C-l") 'helm-locate-library)

        ;; use helm to list eshell history
        (add-hook 'eshell-mode-hook
                  #'(lambda ()
                      (define-key eshell-mode-map (kbd "M-l")  'helm-eshell-history)))

        ;;; Save current position to mark ring
        (add-hook 'helm-goto-line-before-hook 'helm-save-current-pos-to-mark-ring)

        ;; show minibuffer history with Helm
        (define-key minibuffer-local-map (kbd "M-p") 'helm-minibuffer-history)
        (define-key minibuffer-local-map (kbd "M-n") 'helm-minibuffer-history)

        (define-key global-map [remap find-tag] 'helm-etags-select)

        (define-key global-map [remap list-buffers] 'helm-buffers-list)

        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        ;; PACKAGE: helm-swoop                ;;
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        ;; Locate the helm-swoop folder to your path
        (use-package helm-swoop
          :bind (("C-c h o" . helm-swoop)
                 ("C-c s" . helm-multi-swoop-all))
          :config
          ;; When doing isearch, hand the word over to helm-swoop
          (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)

          ;; From helm-swoop to helm-multi-swoop-all
          (define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)

          ;; Save buffer when helm-multi-swoop-edit complete
          (setq helm-multi-swoop-edit-save t)

          ;; If this value is t, split window inside the current window
          (setq helm-swoop-split-with-multiple-windows t)

          ;; Split direcion. 'split-window-vertically or 'split-window-horizontally
          (setq helm-swoop-split-direction 'split-window-vertically)

          ;; If nil, you can slightly boost invoke speed in exchange for text color
          (setq helm-swoop-speed-or-color t))

        (helm-mode 1)

        (use-package helm-projectile
          :init
          (helm-projectile-on)
          (setq projectile-completion-system 'helm)
          (setq projectile-indexing-method 'alien))))

     )

   dotspacemacs-frozen-packages '()

   dotspacemacs-excluded-packages
   '(
     ensime
     )

   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  (setq-default
   dotspacemacs-enable-emacs-pdumper nil

   dotspacemacs-emacs-pdumper-executable-file "emacs"

   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   dotspacemacs-elpa-https t

   dotspacemacs-elpa-timeout 5

   dotspacemacs-gc-cons '(100000000 0.1)

   dotspacemacs-use-spacelpa nil

   dotspacemacs-verify-spacelpa-archives t

   dotspacemacs-check-for-update nil

   dotspacemacs-elpa-subdirectory 'emacs-version

   dotspacemacs-editing-style 'vim

   dotspacemacs-startup-buffer-show-version t

   dotspacemacs-startup-banner 'official

   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   dotspacemacs-startup-buffer-responsive t

   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   dotspacemacs-scratch-mode 'text-mode

   dotspacemacs-initial-scratch-message nil

   dotspacemacs-themes '(
                         ;;(CanftIn-dracula :location local)
                         doom-molokai
                         doom-dracula
                         doom-one
                         doom-one-light
                         doom-vibrant
                         doom-acario-dark
                         doom-acario-light
                         doom-city-lights
                         doom-challenger-deep
                         doom-dark+
                         doom-ephemeral
                         doom-fairy-floss
                         doom-gruvbox
                         doom-horizon
                         doom-Iosvkem
                         doom-laserwave
                         doom-material
                         doom-manegarm
                         doom-monokai-classic
                         doom-monokai-pro
                         doom-moonlight
                         doom-nord
                         doom-nord-light
                         doom-nova
                         doom-oceanic-next
                         doom-opera
                         doom-opera-light
                         doom-outrun-electric
                         doom-palenight
                         doom-peacock
                         ;;doom-rouge
                         doom-snazzy
                         doom-solarized-dark
                         doom-solarized-light
                         doom-sourcerer
                         doom-spacegrey
                         doom-tomorrow-day
                         doom-tomorrow-night
                         doom-wilmersdorf
                         alect-dark
                         afternoon
                         brin
                         apropospriate-dark
                         bubbleberry
                         darktooth
                         flatland
                         gotham
                         gruvbox
                         inkpot
                         heroku
                         light-soap
                         odersky
                         zenburn
                         flatui
                         alect-light
                         farmhouse-dark
                         material
                         material-light
                         majapahit-dark
                         majapahit-light
                         moe-dark
                         moe-light
                         solarized-dark
                         solarized-light
                         spacemacs-dark
                         spacemacs-light
                         )

   dotspacemacs-mode-line-theme '(spacemacs
                                  :separator arrow ;;wave
                                  :separator-scale 1.5
                                  )

   dotspacemacs-colorize-cursor-according-to-state t

   dotspacemacs-default-font '(
                               ("Iosevka Nerd Font"
                                :size 16
                                :weight normal
                                :width normal
                                :powerline-scale 1
                                )
                               ("Fira Code Symbol"
                                :size 16
                                :weight normal
                                :width normal
                                :powerline-scale 1
                                )
                               )

   dotspacemacs-leader-key "SPC"

   dotspacemacs-emacs-command-key "SPC"

   dotspacemacs-ex-command-key ":"

   dotspacemacs-emacs-leader-key "M-m"

   dotspacemacs-major-mode-leader-key ","

   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   dotspacemacs-distinguish-gui-tab nil

   dotspacemacs-default-layout-name "Default"

   dotspacemacs-display-default-layout nil

   dotspacemacs-auto-resume-layouts nil

   dotspacemacs-auto-generate-layout-names nil

   dotspacemacs-large-file-size 1

   dotspacemacs-auto-save-file-location 'cache

   dotspacemacs-max-rollback-slots 5

   dotspacemacs-enable-paste-transient-state nil

   dotspacemacs-which-key-delay 0.4

   dotspacemacs-which-key-position 'bottom

   dotspacemacs-switch-to-buffer-prefers-purpose nil

   dotspacemacs-loading-progress-bar t

   dotspacemacs-fullscreen-at-startup nil

   dotspacemacs-fullscreen-use-non-native nil

   dotspacemacs-maximized-at-startup t ;; nil

   dotspacemacs-undecorated-at-startup nil

   dotspacemacs-active-transparency 80 ;;90

   dotspacemacs-inactive-transparency 99 ;; 90

   dotspacemacs-show-transient-state-title t

   dotspacemacs-show-transient-state-color-guide t

   dotspacemacs-mode-line-unicode-symbols t

   dotspacemacs-smooth-scrolling t

   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers 'relative

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'origami

   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   dotspacemacs-highlight-delimiters 'all

   dotspacemacs-enable-server nil

   dotspacemacs-server-socket-dir nil

   dotspacemacs-persistent-server nil

   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   dotspacemacs-frame-title-format "%I@%S"

   dotspacemacs-icon-title-format nil

   dotspacemacs-whitespace-cleanup nil

   dotspacemacs-use-clean-aindent-mode t

   dotspacemacs-zone-out-when-idle nil

   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()

  (setq configuration-layer-elpa-archives
        '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
          ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
          ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

  (defun on-after-init ()
    (unless (display-graphic-p (selected-frame))
      (set-face-background 'default "unspecified-bg" (selected-frame))))
  (add-hook 'window-setup-hook 'on-after-init)

  (add-to-list 'custom-theme-load-path "~/.emacs.d/private/CanftIn-theming")

  (eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-golangci-lint-setup))
  (add-hook 'web-mode-hook #'(lambda ()
                               (enable-minor-mode
                                '("\\.jsx?\\'" . prettier-js-mode))))

  )

(defun dotspacemacs/user-load ())


(defun dotspacemacs/user-config ()
  ;; ---------------- copy && paste ----------------
  ;;https://github.com/syl20bnr/spacemacs/issues/2222
  (defun copy-to-clipboard ()
    "Copies selection to x-clipboard."
    (interactive)
    (if (display-graphic-p)
        (progn
          (message "Yanked region to x-clipboard!")
          (call-interactively 'clipboard-kill-ring-save))

      (if (region-active-p)
          (progn
            (shell-command-on-region (region-beginning) (region-end) "xsel -i -b")
            (message "Yanked region to clipboard!")
            (deactivate-mark))
        (message "No region active; can't yank to clipboard!"))))


  (defun paste-from-clipboard ()
    "Pastes from x-clipboard."
    (interactive)
    (if (display-graphic-p)
        (progn
          (clipboard-yank)
          (message "graphics active"))

      (insert (shell-command-to-string "xsel -o -b"))))


  (evil-leader/set-key "o y" 'copy-to-clipboard)
  (evil-leader/set-key "o p" 'paste-from-clipboard)
  ;; ---------------- copy && paste ----------------

  ;; ---------------- ligature font && prettify symbols ----------------

  ;; ============ Using prettify-symbols ============
  (add-hook 'org-mode-hook (lambda ()
                             (setq prettify-symbols-alist
                                   (prettify-utils-generate
                                    ("[ ]" "☐")
                                    ("[X]" "☑")
                                    ("[-]" "❍")))
                             (prettify-symbols-mode)))
  (add-hook 'prog-mode-hook (lambda ()
                              (setq prettify-symbols-alist
                                    (prettify-utils-generate
                                     ("delta" "Δ")
                                     ("gamma" "Γ")
                                     ("phi" "φ")
                                     ("psi" "ψ")))
                              (prettify-symbols-mode)))

  ;;  (add-hook 'prog-mode-hook (lambda ()
  ;;                              (setq prettify-symbols-alist
  ;;                                    (prettify-utils-generate
  ;;                                     (">=" "≥")
  ;;                                     ("->" "→")
  ;;                                     ("<-" "←")
  ;;                                     ("<=" "≤")
  ;;                                     ("!=" "≠")
  ;;                                     ("<<" "«")
  ;;                                     (">>" "»")
  ;;                                     ("<<-" "↞")
  ;;                                     ("<~" "⇜")
  ;;                                     ("~>" "⇝")
  ;;                                     ("!==" "≢")
  ;;                                     ("<|" "◁")
  ;;                                     ("|>" "▷")
  ;;                                     ("|-" "┣")
  ;;                                     ("-|" "┫")
  ;;                                     ("1." "①")
  ;;                                     ("2." "②")
  ;;                                     ("3." "③")
  ;;                                     ("4." "④")
  ;;                                     ("5." "⑤")
  ;;                                     ("6." "⑥")
  ;;                                     ("7." "⑦")
  ;;                                     ("8." "⑧")
  ;;                                     ("9." "⑨")
  ;;                                     ("=>" "⇒")))
  ;;                              (prettify-symbols-mode)))


  ;;  ;; Fira Code Font Ligatures in Emacs/Spacemacs on (Arch) Linux thanks to:
  ;;  ;; https://www.rockyourcode.com/fira-code-font-ligatures-in-emacs-spacemacs-on-arch-linux
  ;;  (defun my-correct-symbol-bounds (pretty-alist)
  ;;    "Prepend a TAB character to each symbol in this alist,
  ;;    this way compose-region called by prettify-symbols-mode
  ;;    will use the correct width of the symbols
  ;;    instead of the width measured by char-width."
  ;;    (mapcar (lambda (el)
  ;;              (setcdr el (string ?\t (cdr el)))
  ;;              el)
  ;;            pretty-alist))
  ;;  (defun my-ligature-list (ligatures codepoint-start)
  ;;    "Create an alist of strings to replace with
  ;;    codepoints starting from codepoint-start."
  ;;    (let ((codepoints (-iterate '1+ codepoint-start (length ligatures))))
  ;;      (-zip-pair ligatures codepoints)))
  ;;  (setq my-fira-code-ligatures
  ;;        (let* ((ligs '("www" "**" "***" "**/" "*>" "*/" "\\\\" "\\\\\\"
  ;;                       "{-" "[]" "::" ":::" ":=" "!!" "!=" "!==" "-}"
  ;;                       "--" "---" "-->" "->" "->>" "-<" "-<<" "-~"
  ;;                       "#{" "#[" "##" "###" "####" "#(" "#?" "#_" "#_("
  ;;                       ".-" ".=" ".." "..<" "..." "?=" "??" ";;" "/*"
  ;;                       "/**" "/=" "/==" "/>" "//" "///" "&&" "||" "||="
  ;;                       "|=" "|>" "^=" "$>" "++" "+++" "+>" "=:=" "=="
  ;;                       "===" "==>" "=>" "=>>" "<=" "=<<" "=/=" ">-" ">="
  ;;                       ">=>" ">>" ">>-" ">>=" ">>>" "<*" "<*>" "<|" "<|>"
  ;;                       "<$" "<$>" "<!--" "<-" "<--" "<->" "<+" "<+>" "<="
  ;;                       "<==" "<=>" "<=<" "<>" "<<" "<<-" "<<=" "<<<" "<~"
  ;;                       "<~~" "</" "</>" "~@" "~-" "~=" "~>" "~~" "~~>";; Fira code
  ;;                       "x" ":" "+" "+" "*")))
  ;;          (my-correct-symbol-bounds (my-ligature-list ligs #Xe100))))
  ;;  (defun my-set-fira-code-ligatures ()
  ;;    "Add fira code ligatures for use with prettify-symbols-mode."
  ;;    (setq prettify-symbols-alist
  ;;          (append my-fira-code-ligatures prettify-symbols-alist))
  ;;    (prettify-symbols-mode))
  ;;  ;;(add-hook 'prog-mode-hook 'my-set-fira-code-ligatures)

  ;; ============ Using prettify-symbols ============

  ;; ============ Using font-lock keywords ============
  ;; https://gist.github.com/Althorion/9848043ce1b0dd9fe04a4b923aa46298
  ;; Fira code
  ;; This works when using emacs --daemon + emacsclient
  (add-hook 'after-make-frame-functions (lambda (frame) (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")))
  ;; This works when using emacs without server/client
  (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")
  ;; I haven't found one statement that makes both of the above situations work, so I use both for now

  (defconst fira-code-font-lock-keywords-alist
    (mapcar (lambda (regex-char-pair)
              `(,(car regex-char-pair)
                (0 (prog1 ()
                     (compose-region (match-beginning 1)
                                     (match-end 1)
                                     ;; The first argument to concat is a string containing a literal tab
                                     ,(concat "	" (list (decode-char 'ucs (cadr regex-char-pair)))))))))
            '(("\\(www\\)"                   #Xe100)
              ("[^/]\\(\\*\\*\\)[^/]"        #Xe101)
              ;;("\\(\\*\\*\\*\\)"             #Xe102)
              ;;("\\(\\*\\*/\\)"               #Xe103)
              ("\\(\\*>\\)"                  #Xe104)
              ("[^*]\\(\\*/\\)"              #Xe105)
              ("\\(\\\\\\\\\\)"              #Xe106)
              ("\\(\\\\\\\\\\\\\\)"          #Xe107)
              ("\\({-\\)"                    #Xe108)
              ;; ("\\(\\[\\]\\)"                #Xe109)
              ;; ("\\(::\\)"                    #Xe10a)
              ;; ("\\(:::\\)"                   #Xe10b)
              ("[^=]\\(:=\\)"                #Xe10c)
              ("\\(!!\\)"                    #Xe10d)
              ("\\(!=\\)"                    #Xe10e)
              ("\\(!==\\)"                   #Xe10f)
              ("\\(-}\\)"                    #Xe110)
              ("\\(--\\)"                    #Xe111)
              ("\\(---\\)"                   #Xe112)
              ("\\(-->\\)"                   #Xe113)
              ("[^-]\\(->\\)"                #Xe114)
              ("\\(->>\\)"                   #Xe115)
              ("\\(-<\\)"                    #Xe116)
              ("\\(-<<\\)"                   #Xe117)
              ("\\(-~\\)"                    #Xe118)
              ("\\(#{\\)"                    #Xe119)
              ("\\(#\\[\\)"                  #Xe11a)
              ("\\(##\\)"                    #Xe11b)
              ("\\(###\\)"                   #Xe11c)
              ("\\(####\\)"                  #Xe11d)
              ("\\(#(\\)"                    #Xe11e)
              ("\\(#\\?\\)"                  #Xe11f)
              ("\\(#_\\)"                    #Xe120)
              ("\\(#_(\\)"                   #Xe121)
              ("\\(\\.-\\)"                  #Xe122)
              ("\\(\\.=\\)"                  #Xe123)
              ("\\(\\.\\.\\)"                #Xe124)
              ("\\(\\.\\.<\\)"               #Xe125)
              ("\\(\\.\\.\\.\\)"             #Xe126)
              ("\\(\\?=\\)"                  #Xe127)
              ("\\(\\?\\?\\)"                #Xe128)
              ;;            ("\\(;;\\)"                    #Xe892)
              ("\\(;;\\)"                    #Xe129)
              ("\\(/\\*\\)"                  #Xe12a)
              ("\\(/\\*\\*\\)"               #Xe12b)
              ("\\(/=\\)"                    #Xe12c)
              ("\\(/==\\)"                   #Xe12d)
              ("\\(/>\\)"                    #Xe12e)
              ("\\(//\\)"                    #Xe12f)
              ("\\(///\\)"                   #Xe130)
              ("\\(&&\\)"                    #Xe131)
              ("\\(||\\)"                    #Xe132)
              ("\\(||=\\)"                   #Xe133)
              ("[^|]\\(|=\\)"                #Xe134)
              ("\\(|>\\)"                    #Xe135)
              ("\\(\\^=\\)"                  #Xe136)
              ("\\(\\$>\\)"                  #Xe137)
              ("\\(\\+\\+\\)"                #Xe138)
              ("\\(\\+\\+\\+\\)"             #Xe139)
              ("\\(\\+>\\)"                  #Xe13a)
              ("\\(=:=\\)"                   #Xe13b)
              ("[^!/]\\(==\\)[^>]"           #Xe13c)
              ("\\(===\\)"                   #Xe13d)
              ("\\(==>\\)"                   #Xe13e)
              ("[^=]\\(=>\\)"                #Xe13f)
              ("\\(=>>\\)"                   #Xe140)
              ("\\(<=\\)"                    #Xe141)
              ("\\(=<<\\)"                   #Xe142)
              ("\\(=/=\\)"                   #Xe143)
              ("\\(>-\\)"                    #Xe144)
              ("\\(>=\\)"                    #Xe145)
              ("\\(>=>\\)"                   #Xe146)
              ("[^-=]\\(>>\\)"               #Xe147)
              ("\\(>>-\\)"                   #Xe148)
              ("\\(>>=\\)"                   #Xe149)
              ("\\(>>>\\)"                   #Xe14a)
              ("\\(<\\*\\)"                  #Xe14b)
              ("\\(<\\*>\\)"                 #Xe14c)
              ("\\(<|\\)"                    #Xe14d)
              ("\\(<|>\\)"                   #Xe14e)
              ("\\(<\\$\\)"                  #Xe14f)
              ("\\(<\\$>\\)"                 #Xe150)
              ("\\(<!--\\)"                  #Xe151)
              ("\\(<-\\)"                    #Xe152)
              ("\\(<--\\)"                   #Xe153)
              ("\\(<->\\)"                   #Xe154)
              ("\\(<\\+\\)"                  #Xe155)
              ("\\(<\\+>\\)"                 #Xe156)
              ("\\(<=\\)"                    #Xe157)
              ("\\(<==\\)"                   #Xe158)
              ("\\(<=>\\)"                   #Xe159)
              ("\\(<=<\\)"                   #Xe15a)
              ("\\(<>\\)"                    #Xe15b)
              ("[^-=]\\(<<\\)"               #Xe15c)
              ("\\(<<-\\)"                   #Xe15d)
              ("\\(<<=\\)"                   #Xe15e)
              ("\\(<<<\\)"                   #Xe15f)
              ("\\(<~\\)"                    #Xe160)
              ("\\(<~~\\)"                   #Xe161)
              ("\\(</\\)"                    #Xe162)
              ("\\(</>\\)"                   #Xe163)
              ("\\(~@\\)"                    #Xe164)
              ("\\(~-\\)"                    #Xe165)
              ("\\(~=\\)"                    #Xe166)
              ("\\(~>\\)"                    #Xe167)
              ("[^<]\\(~~\\)"                #Xe168)
              ("\\(~~>\\)"                   #Xe169)
              ("\\(%%\\)"                    #Xe16a)
              ;; ("\\(x\\)"                   #Xe16b) This ended up being hard to do properly so i'm leaving it out.
              ("[^:=]\\(:\\)[^:=]"           #Xe16c)
              ("[^\\+<>]\\(\\+\\)[^\\+<>]"   #Xe16d)
              ("[^\\*/<>]\\(\\*\\)[^\\*/<>]" #Xe16f))))

  (defun add-fira-code-symbol-keywords ()
    (font-lock-add-keywords nil fira-code-font-lock-keywords-alist))

  (add-hook 'prog-mode-hook
            #'add-fira-code-symbol-keywords)

  ;; ============ Using font-lock keywords ============

  ;; ---------------- ligature font && prettify symbols ----------------


  ;; ---------------- Setting Chinese Font ----------------

  (when (and (spacemacs/system-is-mswindows) window-system)
    (setq ispell-program-name "aspell")
    (setq w32-pass-alt-to-system nil)
    (setq w32-apps-modifier 'super)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset
                        (font-spec :family "Microsoft Yahei" :size 17))))

  ;; ---------------- Setting Chinese Font ----------------


  ;; ---------------- language settings ----------------
  ;; ============ emacs lisp setting ============
  (setq helm-gtags-prefix-key "\C-cg")

  (ggtags-mode 1)
  (add-hook 'c-mode-common-hook
            (lambda ()
              (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
                (ggtags-mode 1))))

  (dolist (map (list ggtags-mode-map dired-mode-map))
    (define-key map (kbd "C-c g s") 'ggtags-find-other-symbol)
    (define-key map (kbd "C-c g h") 'ggtags-view-tag-history)
    (define-key map (kbd "C-c g r") 'ggtags-find-reference)
    (define-key map (kbd "C-c g f") 'ggtags-find-file)
    (define-key map (kbd "C-c g c") 'ggtags-create-tags)
    (define-key map (kbd "C-c g u") 'ggtags-update-tags)
    (define-key map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
    (define-key map (kbd "M-.") 'ggtags-find-tag-dwim)
    (define-key map (kbd "M-,") 'pop-tag-mark)
    (define-key map (kbd "C-c <") 'ggtags-prev-mark)
    (define-key map (kbd "C-c >") 'ggtags-next-mark))
  ;; ============ emacs lisp setting ============

  ;; ============ emacs lisp setting ============

  (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
  ;; ============ emacs lisp setting ============

  ;; ============ clojure setting ============
  ;; clojure ',-g-g' command for java source code
  ;;(setq cider-jdk-src-paths '("C:/Program Files/Java/jdk1.8.0_171/src"))
  (spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hook-clojure-mode)

  (require 'clojure-mode-extra-font-locking)
  (add-hook 'clojure-mode-hook #'smartparens-strict-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
  ;; Pretty print in Clojure to use the Fast Idiomatic Pretty-Printer. This is approximately 5-10x faster than clojure.core/pprint
  (setq cider-pprint-fn 'fipp)
  ;; Indentation of function forms
  ;; https://github.com/clojure-emacs/clojure-mode#indentation-of-function-forms
  (setq clojure-indent-style 'align-arguments)
  ;;
  ;; Vertically align s-expressions
  ;; https://github.com/clojure-emacs/clojure-mode#vertical-alignment
  (setq clojure-align-forms-automatically t)
  ;; ============ clojure setting ============

  ;; ============ python setting ============
  (setq exec-path (append exec-path '("C:/Program Files/Python37")))
  (setq python-shell-interpreter "c:/Program Files/Python37/python.exe")
  ;; ============ python setting ============

  ;; ============ scheme setting ============
  ;;https://zhuanlan.zhihu.com/p/32772065 
  ;;(setq scheme-program-name "racket")
  ;;(setq geiser-chez-binary "racket")
  ;;(setq geiser-active-implementations '(racket))
  ;;(setq scheme-program-name "chicken-csi")
  ;;(setq geiser-chez-binary "chicken-csi")
  ;;(setq geiser-active-implementations '(chicken-csi))
  (setq scheme-program-name "chicken")
  (setq geiser-chez-binary "chicken")
  (setq geiser-active-implementations '(chicken))
  (spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hook-scheme-mode)
  ;; ============ scheme setting ============

  ;; ============ haskell setting ============
  ;; Indentation doesn't reset when pressing return after an empty line
  ;; https://develop.spacemacs.org/layers/+lang/haskell/README.html#indentation-doesnt-reset-when-pressing-return-after-an-empty-line
  (defun haskell-indentation-advice ()
    (when (and (< 1 (line-number-at-pos))
               (save-excursion
                 (forward-line -1)
                 (string= "" (s-trim (buffer-substring (line-beginning-position) (line-end-position))))))
      (delete-region (line-beginning-position) (point))))

  (advice-add 'haskell-indentation-newline-and-indent
              :after 'haskell-indentation-advice)


  (setq lsp-haskell-process-args-hie '("exec" "ghcide" "--" "--lsp")
        lsp-haskell-process-path-hie "stack"
        lsp-haskell-process-wrapper-function (lambda (argv) (cons (car argv) (cddr argv))))
  
  (add-hook 'haskell-mode-hook
            #'lsp)
  ;;(setq lsp-haskell-process-args-hie (list "-d" "-l" (make-temp-file "hie." nil ".log")))
  ;; ============ haskell setting ============

  ;; ============ coq setting ============
  ;;(with-eval-after-load 'company-coq
  ;;  (add-to-list 'company-coq-disabled-features 'prettify-symbols))
  ;; ============ coq setting ============

  ;; ============ node setting ============
  (add-to-list 'exec-path "C:/Program Files/nodejs" t)
  (setq-default
   ;; js2-mode
   js2-basic-offset 2
   ;; web-mode
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2)
  (with-eval-after-load 'web-mode
    (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil)))
  ;; ============ node setting ============

  ;; ============ fsharo setting ============
  (setq inferior-fsharp-program "D:/Microsoft Visual Studio/Common7/IDE/CommonExtensions/Microsoft/FSharp/Fsi.exe")
  ;; ============ fsharo setting ============

  ;; ============ go setting ============

  ;; go build/install
  (setq default-go-package "")

  (defun go-build (&optional pkg)
    (interactive
     (list (read-string (format "Package Name[%s]: " default-go-package) nil nil "")))

    (if (not (string= pkg ""))
        (setq default-go-package pkg))

    (if (string= current-project-path "")
        (message "You MUST set current-project-path FIRST!")
      (projectile-with-default-dir current-project-path
        (projectile-run-compilation (concat "go build " default-go-package)))))


  (defun go-install (&optional pkg)
    (interactive
     (list (read-string (format "Package Name[%s]: " default-go-package) nil nil "")))

    (if (not (string= pkg ""))
        (setq default-go-package pkg))

    (if (string= current-project-path "")
        (message "You MUST set current-project-path FIRST!")
      (projectile-with-default-dir current-project-path
        (projectile-run-compilation (concat "go install " default-go-package)))))


  ;; set shortcuts
  (spacemacs/set-leader-keys-for-major-mode 'go-mode
    "xi" 'go-install)

  (spacemacs/set-leader-keys-for-major-mode 'go-mode
    "xb" 'go-build)

  (defun canftin-go-mode ()
    (local-set-key (kbd "C-c C-c") 'compile)
    (local-set-key (kbd "C-c C-k") 'godoc)
    (local-set-key (kbd "M-j") 'godef-jump)
    (local-set-key (kbd "C-c C-f") 'go-test-current-file)
    (local-set-key (kbd "C-c C-t") 'go-test-current-project)
    (local-set-key (kbd "C-c C-p") 'go-test-current-benchmark)
    (local-set-key (kbd "C-x x") 'go-run)
    (local-set-key (kbd "C-c C-e") 'go-errcheck)
    (local-set-key (kbd "C-c C-p") 'go-test-current-benchmark)
    (local-set-key (kbd "C-c C-g") 'go-goto-imports)
    (setq go-test-verbose t))
  (add-hook 'go-mode-hook 'canftin-go-mode)

  (add-hook 'completion-at-point-functions 'go-complete-at-point)

  ;; temporarily deal. uncomment golang only.
  ;;(require 'go-autocomplete)
  ;;(require 'auto-complete-config)
  ;;(ac-config-default)
  ;;(setq popup-use-optimized-column-computation nil)
  ;; ============ go setting ============


  ;; ---------------- language settings ----------------



  ;; ---------------- Org mode ----------------

  (setq org-folder "~/org")

  ;; ============ Org Agenda ============
  (setq org-agenda-log-mode-items '(closed clock state))
  (setq org-agenda-files '("~/CanftIn-GTD/todo.org"))
  (setq org-agenda-file-regexp "\\`[^.].*\\.org\\(_archive\\)?\\'") ;;archive事项也纳入agenda显示
  (setq org-agenda-include-diary t)       ;;将diary的事项也纳入agenda中显示
  ;; ============ Org Agenda ============

  ;;https://emacs.christianbaeuerlein.com/my-org-config.html
  (defun my-org-config/after-org-mode-load ()
    (visual-line-mode)
    (vi-tilde-fringe-mode -1)

    (require 'org-indent)
    (org-indent-mode)
    (set-face-attribute 'org-indent nil :inherit '(org-hide fixed-pitch))

    (variable-pitch-mode 1))

  ;; (turn-on-olivetti-mode)
  ;; (with-eval-after-load 'olivetti
  ;;   (olivetti-set-width 81)
  ;;   (olivetti-mode 1))


  (add-hook 'org-mode-hook 'my-org-config/after-org-mode-load)

  ;;Quick access to my most important org functions is given by opening the menu SPC o
  (spacemacs/declare-prefix "o" "org mode")
  ;;You can view my daily agenda with SPC o d
  (defun my-org-daily-agenda ()
    (interactive)
    (org-agenda nil "d"))


  (spacemacs/set-leader-keys "od" 'my-org-daily-agenda)

  ;;Add a new todo with preselected template with SPC o t
  (defun my-org-add-todo ()
    (interactive)
    (org-capture nil "t"))

  (spacemacs/set-leader-keys "ot" 'my-org-add-todo)

  (spacemacs/set-leader-keys "oc" 'org-capture)

  (spacemacs/set-leader-keys "oa" 'org-agenda)

  (spacemacs/set-leader-keys "ol" 'org-store-link)

  (defun my-org-helm-find-file ()
    (interactive)
    (helm-browse-project-find-files '(
                                      "~/CanftIn-GTD"
                                      "~/org")))



  (spacemacs/set-leader-keys "of" 'my-org-helm-find-file)

  ;; ============ org capture ============
  (setq org-capture-templates '(("t" "Todo [inbox]"
                                 entry
                                 (file "~/org/inbox.org")
                                 "* TODO %?\n:PROPERTIES:\n:CREATED: %U\n:END:\n  %i\n")
                                ("d" "Todo w/date [inbox]"
                                 entry
                                 (file "~/org/inbox.org")
                                 "* TODO %? %<%Y-%m-%d>\n:PROPERTIES:\n:CREATED: %U\n:END:\n  %i\n")
                                ("l" "Link currently stored [inbox]"
                                 entry
                                 (file "~/org/inbox.org")
                                 "* TODO %i%?\n:PROPERTIES:\n:CREATED: %U\n:END:\n\%A\n%i\n")
                                ("m" "Meeting [inbox]"
                                 entry
                                 (file "~/org/inbox.org")
                                 "* Meeting %<%Y-%m-%d>: %^{prompt}\n:PROPERTIES:\n:CREATED: %U\n:END:\n- [ ] %?\n\n")))
  ;; ============ org capture ============

  ;; ============ super agenda ============

  (org-super-agenda-mode)
  (setq org-super-agenda-header-map nil)
  (setq org-deadline-warning-days 7)
  (setq org-agenda-block-separator 9472)
  (setq org-agenda-skip-scheduled-if-done t)
  (setq org-agenda-start-on-weekday nil)

  (setq org-agenda-custom-commands '(
                                     ("h" "IOKI DASHBOARD"
                                      ((agenda "" (
                                                   (org-agenda-overriding-header "THIS WEEK")
                                                   (org-agenda-span 'day)
                                                   (org-agenda-scheduled-leaders '("   " "%2dx"))))

                                       (tags "+inbox"
                                             ((org-agenda-overriding-header "INBOX: Entries to refile")))
                                       (todo "VERIFY"
                                             ((org-agenda-overriding-header "FINAL VERIFICATION PENDING")))))


                                     ("w" "WEEKLY REVIEW"
                                      (
                                       (todo "DONE"
                                             (
                                              (org-agenda-overriding-header "DONE!")))

                                       (todo "CANCELLED"
                                             ((org-agenda-overriding-header "CANCELLED")))
                                       (todo "TODO"
                                             ((org-agenda-overriding-header "TODO Items (without time attached)")
                                              (org-agenda-skip-function '(org-agenda-skip-entry-if 'deadline 'scheduled 'timestamp))))
                                       (todo "WAIT"
                                             ((org-agenda-overriding-header "WAIT: Items on hold (without time attached)")
                                              (org-agenda-skip-function '(org-agenda-skip-entry-if 'deadline 'scheduled 'timestamp))))))


                                     ("d" "DAILY"
                                      ((agenda "" ((org-agenda-span 'day)
                                                   (org-agenda-compact-blocks t)
                                                   ;; (org-agenda-deadline-leaders)
                                                   ;; (org-agenda-scheduled-leaders)
                                                   (org-agenda-prefix-format '(
                                                                               (agenda . "  %?-12t")))

                                                   (org-super-agenda-groups
                                                    '(
                                                      (:name "⏰ Calendar" :time-grid t)
                                                      (:name "Optional" :priority "C" :order 90)

                                                      (:name "⚠ Overdue!" :deadline past)
                                                      (:name "⚠ Overdue!" :scheduled past)

                                                      ;; Discard full-day events from agenda
                                                      (:discard (:category "Cal"))

                                                      (:name "⭐ Next" :todo "NEXT")
                                                      (:name "⭐ Important" :priority "A")
                                                      (:name "📌 Routines" :category "Routines")

                                                      (:auto-category t)))))


                                       (alltodo "" ((org-agenda-overriding-header "")
                                                    (org-agenda-prefix-format '(
                                                                                (todo . "  ")))

                                                    (org-super-agenda-groups
                                                     '(
                                                       (:name "Inbox" :tag "inbox")
                                                       (:name "Verify" :todo "VERIFY")
                                                       (:discard (:anything t))))))))))




  ;; ============ super agenda ============

  (setq org-refile-use-outline-path 'file)
  (setq org-outline-path-complete-in-steps nil)
  (setq header-line-format " ")
  ;;(setq org-ellipsis "")
  (setq org-hide-emphasis-markers t)
  (setq org-fontify-whole-heading-line t)
  (setq org-fontify-whole-heading-line t)
  (setq org-fontify-done-headline t)
  (setq org-fontify-quote-and-verse-blocks t)
  ;;(setq org-bullets-bullet-list '("⬢" "◆" "▲" "■"))
  (setq org-tags-column 0)


  ;; ============ org todo keywords ============

  (let* (
         (comment      "#6272a4")
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

         (variable-pitch-font `(:family "Iosevka")) ;;"iA Writer Quattro S"

         (fixed-pitch-font    `(:family "Iosevka Nerd Font"))
         (fixed-pitch-font-alt `(:family "Iosevka"))) ;; "iA Writer Mono S"


    (setq org-todo-keyword-faces (list
                                  `("TODO"
                                    ,@fixed-pitch-font
                                    :foreground ,comment
                                    :weight bold)

                                  `("NEXT"
                                    ,@fixed-pitch-font
                                    :foreground ,warning
                                    :weight bold)
                                  `("WAIT"
                                    ,@fixed-pitch-font
                                    :foreground ,rainbow-2
                                    :weight bold)
                                  `("VERIFY"
                                    ,@fixed-pitch-font
                                    :foreground ,rainbow-7
                                    :weight bold)
                                  `("LOWPRIO"
                                    ,@fixed-pitch-font
                                    :foreground ,comment
                                    :weight bold)
                                  `("DONE"
                                    ,@fixed-pitch-font
                                    :foreground ,rainbow-6
                                    :weight bold)
                                  `("CANCELLED"
                                    ,@fixed-pitch-font
                                    :foreground ,rainbow-9
                                    :weight bold))))


  (setq org-todo-keywords
        '(
          (sequence "TODO" "NEXT" "WAIT" "|" "DONE(d)" "CANCELED")))

  ;;
  ;;  (setq org-todo-keyword-faces
  ;;        '(("TODO" . (:foreground "#ff39a3" :weight bold))
  ;;          ("PROGRESS" . "#4f97d7")
  ;;          ("STARTED" . "#E35DBF")
  ;;          ("CANCELED" . (:foreground "white" :background "#4d4d4d" :weight bold))
  ;;          ("DELEGATED" . "pink")
  ;;          ("POSTPONED" . "#008080")))

  ;; ============ org todo keywords ============

  (setq org-src-fontify-natively t)
  (setq org-edit-src-content-indentation 0)
  (setq org-src-tab-acts-natively t)
  (setq org-src-preserve-indentation t)
  (setq org-confirm-babel-evaluate nil)
  (org-babel-do-load-languages 'org-babel-load-languages
                               '((sql . t)
                                 (shell . t)
                                 (dot . t)
                                 (emacs-lisp . t)
                                 (ruby . t)
                                 (js . t)))

  ;; ---------------- Org mode ----------------


  ;; ---------------- Others ----------------

  (add-to-list 'exec-path "/usr/bin")
  ;;emacs25 supported emacs26 unsupported https://github.com/syl20bnr/spacemacs/issues/10853 
  ;;(linum-relative-global-mode t)
  ;;(spacemacs/toggle-relative-line-numbers-on)
  ;;fix date garbled
  ;;https://www.cqmaple.com/201709/win10-emacs-org-mode-agenda-time.html
  ;;https://emacs-china.org/t/org-mode-agenda-learn-emacs-in-21-days-day-6/2780 
  (setq language-environment 'utf-8)
  ;;(add-hook 'org-mode-hook
  ;;            (lambda ()
  ;;              (set (make-local-variable 'system-time-locale) "C")))
  (setq system-time-locale "C")

  ;;https://github.com/magit/magit/issues/2492 
  (setq-default with-editor-emacsclient-executable "emacsclient")

  ;;https://github.com/off99555/.spacemacs.d
  (setq-default evil-escape-key-sequence "fd")
  (setq-default evil-escape-unordered-key-sequence t)
  (setq-default scroll-margin 5)
  ;; scroll-conservatively 9999
  ;; scroll-step 1

  (setq-default google-translate-default-source-language "en"
                google-translate-default-target-language "th")
  ;; useless, go spacemacs/init() for setting
  ;;(setq powerline-default-separator 'arrow)
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1)

  ;; plantuml
  (setq plantuml-default-exec-mode 'jar)

  ;;(setq initial-frame-alist '((top . 30) (left . 700) (width . 212) (height . 81)))

  ;; dumb-jump
  (define-key global-map (kbd "M-g o") 'dumb-jump-go-other-window)
  (define-key global-map (kbd "M-g j") 'dumb-jump-go)
  (define-key global-map (kbd "M-g b") 'dumb-jump-back)
  (define-key global-map (kbd "M-g i") 'dumb-jump-go-prompt)
  (define-key global-map (kbd "M-g x") 'dumb-jump-go-prefer-external)
  (define-key global-map (kbd "M-g z") 'dumb-jump-go-prefer-external-other-window)
  (setq dumb-jump-selector 'ivy) ;; (setq dumb-jump-selector 'helm)
  (dumb-jump-mode)

  ;; tramp-mode
  ;; https://github.com/syl20bnr/spacemacs/issues/2705
  ;; (setq tramp-mode nil)
  (setq tramp-ssh-controlmaster-options "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

  ;; performance
  ;; boost find file and load saved persp layout  performance
  ;; which will break some function on windows platform
  ;; eg. known issues: magit related buffer color, reopen will fix it
  (when (spacemacs/system-is-mswindows)
    (progn (setq find-file-hook nil)
           (setq vc-handled-backends nil)
           (setq magit-refresh-status-buffer nil)
           (add-hook 'find-file-hook 'spacemacs/check-large-file)

           ;; emax.7z in not under pdumper release
           ;; https://github.com/m-parashar/emax64/releases/tag/pdumper-20180619
           (defvar emax-root (concat (expand-file-name "~") "/emax"))

           (when (file-exists-p emax-root)
             (progn
               (defvar emax-root (concat (expand-file-name "~") "/emax"))
               (defvar emax-bin64 (concat emax-root "/bin64"))
               (defvar emax-mingw64 (concat emax-root "/mingw64/bin"))
               (defvar emax-lisp (concat emax-root "/lisp"))

               (setq exec-path (cons emax-bin64 exec-path))
               (setenv "PATH" (concat emax-bin64 ";" (getenv "PATH")))

               (setq exec-path (cons emax-mingw64 exec-path))
               (setenv "PATH" (concat emax-mingw64 ";" (getenv "PATH")))))


           (add-hook 'projectile-mode-hook '(lambda () (remove-hook 'find-file-hook #'projectile-find-file-hook-function)))))

  ;; whitespace mode
  ;;(whitespace-mode)
  ;; activate whitespace-mode to view all whitespace characters
  (global-set-key (kbd "C-c w") 'whitespace-mode)

  ;; parinfer
  ;;(parinfer-toggle-mode)

  ;; cmake
  (cmake-ide-setup)

  ;; volatile-highlights
  (volatile-highlights-mode t)

  ;;Editing -> Undo -> Undo Tree
  (global-undo-tree-mode 1)

  ;; clean-aindent-mode
  (add-hook 'prog-mode-hook 'clean-aindent-mode)

  ;; dtrt indent
  (dtrt-indent-mode 1)
  (setq dtrt-indent-verbosity 0)

  ;; hs-minor-mode for folding source code
  (add-hook 'c-mode-common-hook 'hs-minor-mode)

  ;; semantic
  (semantic-mode 1)

  (defun CanftIn/cedet-hook ()
    (local-set-key "\C-c\C-j" 'semantic-ia-fast-jump)
    (local-set-key "\C-c\C-s" 'semantic-ia-show-summary))

  (add-hook 'c-mode-common-hook 'CanftIn/cedet-hook)
  (add-hook 'c-mode-hook 'CanftIn/cedet-hook)
  (add-hook 'c++-mode-hook 'CanftIn/cedet-hook)

  ;; irony mode
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)

  (defun my-irony-mode-hook ()
    (define-key irony-mode-map [remap completion-at-point]
      'irony-completion-at-point-async)
    (define-key irony-mode-map [remap complete-symbol]
      'irony-completion-at-point-async))

  (add-hook 'irony-mode-hook 'my-irony-mode-hook)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

  ;; flycheck
  (add-hook 'c++-mode-hook 'flycheck-mode)
  (add-hook 'c-mode-hook 'flycheck-mode)
  (defun my-flycheck-rtags-setup ()
    (flycheck-select-checker 'rtags)
    (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
    (setq-local flycheck-check-syntax-automatically nil))
  ;; c-mode-common-hook is also called by c++-mode
  (add-hook 'c-mode-common-hook #'my-flycheck-rtags-setup)
  (eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))



  ;; ede
  (global-ede-mode)


  ;; show whitespace in diff-mode
  (add-hook 'diff-mode-hook (lambda ()
                              (setq-local whitespace-style
                                          '(face
                                            tabs
                                            tab-mark
                                            spaces
                                            space-mark
                                            trailing
                                            indentation::space
                                            indentation::tab
                                            newline
                                            newline-mark))
                              (whitespace-mode 1)))

  ;; ---------------- Others ----------------


  ;; ---------------- New config ----------------

  ;; https://github.com/da-edra/dotfiles/blob/master/spacemacs
  ;; Activate column indicator in prog-mode and text-mode
  ;;(add-hook 'prog-mode-hook 'turn-on-fci-mode)
  ;;(add-hook 'text-mode-hook 'turn-on-fci-mode)
  ;;(setq fci-rule-color "#23cbfe")

  ;; Auto start rainbow delimeters in most programming modes
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

  ;; Auto start aggressive indent in most programming modes
  (add-hook 'lisp-mode-hook #'aggressive-indent-mode)


  ;; Add some nice additions like italicized comments, etc.
  (set-face-attribute 'font-lock-comment-delimiter-face nil :slant 'italic)
  (set-face-attribute 'font-lock-comment-face nil :slant 'italic)
  (set-face-attribute 'font-lock-doc-face nil :slant 'italic)
  (set-face-attribute 'font-lock-keyword-face nil :weight 'bold)
  (set-face-attribute 'font-lock-builtin-face nil :weight 'bold)
  (set-face-attribute 'font-lock-preprocessor-face nil :weight 'bold)

  ;; Start beacon mode to show a light when the cursor moves
  (beacon-mode t)
  (setq beacon-color "#23cbfe")
  (setq beacon-blink-when-point-moves-vertically 1)
  (setq beacon-blink-when-point-moves-horizontally 1)
  (setq beacon-blink-when-focused t)
  (setq beacon-blink-when-window-scrolls t)

  ;; Enable indent guide at startup
  (spacemacs/toggle-indent-guide-globally-on)
  (setq highlight-indent-guides-method 'character)

  ;; Visual line navigation for textual modes
  (spacemacs/toggle-visual-line-navigation-on)
  (setq truncate-lines t)
  (spacemacs/toggle-truncate-lines-on)
  (add-hook 'text-mode-hook 'spacemacs/toggle-visual-line-navigation-on)
  (add-hook 'prog-mode-hook 'spacemacs/toggle-visual-line-navigation-on)

  ;; JavaScript indent levels
  (setq javascript-indent-level 2)
  (setq js-indent-level 2)
  (setq js2-basic-offset 2)

  ;; Neo tree configuration
  (setq neo-theme 'icons)
  (setq mode-icons-change-mode-name t)
  (mode-icons-mode)

  ;; Add a new line to all visited and saved files
  (setq require-final-newline 'visit-save)

  ;; ---------------- New config ----------------


  ;; ---------------- Keybindings ----------------

  ;; mapping j to gj or k to gk will prohibit you from using dj or dk to delete 2 lines
  ;; (define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
  ;; (define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
  (defun swoop-find-todos () (interactive) (helm-swoop :$query "\\(fixme\\|todo\\|xxx\\)"))
  (defun swoop-find-todos-all () (interactive) (helm-multi-swoop-all "\\(fixme\\|todo\\|xxx\\)"))
  (evil-leader/set-key "o s t" 'swoop-find-todos)
  (evil-leader/set-key "o s T" 'swoop-find-todos-all)
  (define-key global-map (kbd "C-+") 'text-scale-increase)
  (define-key global-map (kbd "C-=") 'text-scale-increase)
  (define-key global-map (kbd "C--") 'text-scale-decrease)
  (global-set-key [f1] 'eshell)
  (with-eval-after-load 'helm
    (define-key helm-map (kbd "C-u") 'evil-delete-whole-line))
  ;; if you want to activate transient state, try `SPC n =' instead
  (define-key evil-normal-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
  (define-key evil-insert-state-map (kbd "C-f") 'comint-dynamic-complete-filename)
  (evil-define-key 'insert global-map (kbd "C-v") 'evil-paste-after)

  ;; ---------------- Keybindings ----------------

  ;; ---------------- Some theme Settings ----------------

  ;; Add personal script path, so that "require" works for personal scripts.
  (push "~/.spacemacs.d/config/" load-path)
  ;;(add-to-list 'load-path "~/.emacs.d/private/CanftIn-theming")
  ;;(spacemacs/toggle-highlight-current-line-globally-off)
  ;; Modify imenu-list so that the window position is centered after each jump.
  ;; (add-hook 'imenu-after-jump-hook (lambda () (recenter 10)))
  (colors/add-theme-sat&light 'material '(70 75))
  (colors/refresh-theme-look)
  ;; (remove-hook `python-mode-hook `turn-on-evil-matchit-mode)
  (setq evilmi-always-simple-jump t)
  ;; all-the-icons fonts are needed for neotree to display file icons properly
  ;; Download and install all fonts inside this repository: https://github.com/domtronn/all-the-icons.el/tree/master/fonts
  ;; (use-package all-the-icons)
  (setq neo-theme (if (display-graphic-p) 'icons 'ascii))
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
  (add-hook 'magit-mode-hook 'emoji-cheat-sheet-plus-display-mode)

  ;; yascroll
  (global-yascroll-bar-mode 1)

  ;; git-messenger
  (global-set-key (kbd "C-x v p") 'git-messenger:popup-message)

  ;; Use magit-show-commit for showing status/diff commands
  (custom-set-variables
   '(git-messenger:use-magit-popup t))

  ;; ---------------- Some theme Settings ----------------
  )

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(evil-want-Y-yank-to-eol nil)
 '(git-messenger:use-magit-popup t)
 '(haskell-stylish-on-save t t)
 '(org-agenda-files (quote ("d:/linux_home/CanftIn-GTD/todo.org")))
 '(package-selected-packages
   (quote
    (forge utop tuareg caml seeing-is-believing rvm ruby-tools ruby-test-mode ruby-refactor ruby-hash-syntax rubocopfmt rubocop rspec-mode robe rbenv rake ocp-indent ob-elixir minitest flycheck-ocaml merlin flycheck-mix flycheck-credo dune chruby bundler inf-ruby alchemist elixir-mode mvn meghanada maven-test-mode groovy-mode groovy-imports pcache gradle-mode yapfify stickyfunc-enhance pytest pyenv-mode py-isort pippel pipenv pyvenv pip-requirements live-py-mode importmagic epc ctable concurrent helm-pydoc helm-gtags helm-cscope xcscope ggtags cython-mode counsel-gtags company-anaconda anaconda-mode pythonic ox-twbs ox-gfm material-theme emojify ht emoji-cheat-sheet-plus company-emoji all-the-icons-dired yasnippet-snippets ws-butler writeroom-mode winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package unfill toc-org symon string-inflection spaceline-all-the-icons sound-wav smeargle restart-emacs rainbow-mode rainbow-identifiers rainbow-delimiters prodigy popwin persp-mode pcre2el password-generator paradox overseer orgit org-tree-slide org-projectile org-present org-pomodoro org-mime org-download org-bullets org-brain open-junk-file neotree nameless mwim move-text mmm-mode markdown-toc magit-svn magit-gitflow macrostep lorem-ipsum linum-relative link-hint indent-guide hungry-delete htmlize hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-rtags helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-hoogle helm-gitignore helm-git-grep helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag haskell-snippets graphviz-dot-mode google-translate google-c-style golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fuzzy font-lock+ flycheck-rtags flycheck-pos-tip flycheck-haskell flx-ido fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu engine-mode elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline disaster diminish diff-hl define-word counsel-projectile company-statistics company-rtags company-ghci company-cabal company-c-headers column-enforce-mode color-identifiers-mode cmm-mode clojure-snippets clean-aindent-mode clang-format cider-eval-sexp-fu cider centered-cursor-mode browse-at-remote auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent ace-window ace-link ace-jump-helm-line ac-ispell 2048-game)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e")))
 '(safe-local-variable-values
   (quote
    ((cider-preferred-build-tool . "clojure-cli")
     (typescript-backend . tide)
     (typescript-backend . lsp)
     (javascript-backend . tide)
     (javascript-backend . tern)
     (javascript-backend . lsp)
     (go-backend . go-mode)
     (go-backend . lsp)
     (elixir-enable-compilation-checking . t)
     (elixir-enable-compilation-checking)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markup-title-0-face ((t (:inherit markup-gen-face :height 1.6))))
 '(markup-title-1-face ((t (:inherit markup-gen-face :height 1.5))))
 '(markup-title-2-face ((t (:inherit markup-gen-face :height 1.4))))
 '(markup-title-3-face ((t (:inherit markup-gen-face :weight bold :height 1.3))))
 '(markup-title-5-face ((t (:inherit markup-gen-face :underline t :height 1.1)))))
)
