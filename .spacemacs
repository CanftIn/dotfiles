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
     ;; ----------------------------------------------------------------
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------

     ;; ----------------   languages beg   ----------------

     ;; ***lisp series***
     (clojure :variables
              clojure-enable-fancify-symbols t
              clojure-enable-sayid t
              clojure-enable-clj-refactor t
              clojure-enable-linters '(clj-kondo joker)
              )
     common-lisp
     emacs-lisp

     ;; ***interpretive languages***
     python

     ;; ***compiled language***
     (c-c++ :variables
            =c-c++-backend= 'lsp-ccls ;;'lsp-clangd
            c-c++-adopt-subprojects t
            c-c++-lsp-enable-semantic-highlight 'rainbow
            c-c++-default-mode-for-headers 'c++-mode
            ;;c++-enable-organize-includes-on-save t
            c-c++-enable-clang-format-on-save t
            c-c++-enable-google-style t
            c-c++-enable-google-newline t
            c-c++-dap-adapters '(dap-lldb dap-cpptools)
            )

     ;; ***text language***
     (org :variables
          org-enable-github-support t
          org-enable-bootstrap-support t)

     ;; ----------------   languages end   ----------------

     ;; ----------------   tools beg   ----------------
     (syntax-checking :variables
                      syntax-checking-enable-tooltips t
                      syntax-checking-enable-by-default t
                      syntax-checking-use-original-bitmaps t
                      )
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
     ;; better-defaults
     git
     helm
     ;; lsp
     ;; markdown
     multiple-cursors
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; version-control
     treemacs

     ;; ------------------- system setup -----------------------
     (osx :variables osx-command-as       'hyper
          osx-option-as        'meta
          osx-control-as       'control
          osx-function-as      nil
          osx-right-command-as 'left
          osx-right-option-as  'left
          osx-right-control-as 'left
          osx-swap-option-and-command nil) 

     )

   dotspacemacs-additional-packages 
   '(
     aggressive-indent
     all-the-icons
     all-the-icons-dired
     all-the-icons-ivy
     beacon
     )

   dotspacemacs-frozen-packages '()

   dotspacemacs-excluded-packages '()

   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  (setq-default

   dotspacemacs-enable-emacs-pdumper nil

   dotspacemacs-emacs-pdumper-executable-file "emacs"

   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   dotspacemacs-elpa-https t

   dotspacemacs-elpa-timeout 5

   dotspacemacs-gc-cons '(100000000 0.1)

   dotspacemacs-read-process-output-max (* 1024 1024)

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

   dotspacemacs-show-startup-list-numbers t

   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   dotspacemacs-startup-buffer-show-icons t

   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   dotspacemacs-scratch-mode 'text-mode

   dotspacemacs-scratch-buffer-persistent nil

   dotspacemacs-scratch-buffer-unkillable nil

   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
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

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(all-the-icons ;;spacemacs 
                                  :separator arrow ;;wave
                                  :separator-scale 1.5
                                  )

   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   dotspacemacs-default-font '("Iosevka SS05"
                               :size 14.0
                               :weight normal
                               :width normal)

   dotspacemacs-leader-key "SPC"

   dotspacemacs-emacs-command-key "SPC"

   dotspacemacs-ex-command-key ":"

   dotspacemacs-emacs-leader-key "M-m"

   dotspacemacs-major-mode-leader-key ","

   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

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

   dotspacemacs-maximized-at-startup t

   dotspacemacs-undecorated-at-startup nil

   dotspacemacs-active-transparency 80

   dotspacemacs-inactive-transparency 80

   dotspacemacs-show-transient-state-title t

   dotspacemacs-show-transient-state-color-guide t

   dotspacemacs-mode-line-unicode-symbols t

   dotspacemacs-smooth-scrolling t

   dotspacemacs-scroll-bar-while-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
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

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   dotspacemacs-enable-server nil

   dotspacemacs-server-socket-dir nil

   dotspacemacs-persistent-server nil

   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   dotspacemacs-icon-title-format nil

   dotspacemacs-show-trailing-whitespace t

   dotspacemacs-whitespace-cleanup nil

   dotspacemacs-use-clean-aindent-mode t

   dotspacemacs-use-SPC-as-y nil

   dotspacemacs-swap-number-row nil

   dotspacemacs-zone-out-when-idle nil

   dotspacemacs-pretty-docs nil

   dotspacemacs-home-shorten-agenda-source nil

   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  ;; (setq configuration-layer-elpa-archives
  ;;       '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
  ;;         ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
  ;;         ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))
  )


(defun dotspacemacs/user-load ())


(defun dotspacemacs/user-config ()
  ;; ---------------- emacs-mac port for ligature ----------------
  (if (fboundp 'mac-auto-operator-composition-mode)
      (mac-auto-operator-composition-mode))
  ;; ---------------- emacs-mac port for ligature ----------------

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
  (global-prettify-symbols-mode 1)
  
  (setq-default prettify-symbols-alist '(
                                         ("[ ]" . "☐")
                                         ("[-]" . "◼")
                                         ("[X]" . "☑")
                                         ("::" . "∷")
                                         ("#+BEGIN_SRC" . "✎")
                                         ("#+END_SRC" . "□")
                                         ("#+begin_src" . "✎")
                                         ("#+end_src" . "□")
                                         ;;("..." . "…")
                                         ;;("->" . "→")
                                         ;;("←" . "←")
                                         ("#+title:" . "❤")
                                         ("#+subtitle:" . "𝙩")
                                         ("#+author:" . "✍")
                                         ("#+date:" . "⚓")
                                         ("#+property:" . "☸")
                                         ("#+options:" . "⌥")
                                         ("#+latex_class:" . "🄲")
                                         ("#+latex_header:" . "⇥")
                                         ("#+beamer_header:" . "↠")
                                         ("#+attr_latex:" . "🄛")
                                         ("#+attr_html:" . "🄗")
                                         ("#+end_quote" . "❮")
                                         ("#+begin_quote" . "❯")
                                         ("#+caption:" . "☰")
                                         ("#+header:" . "›")
                                         ("#+results:" . "🍌")
                                         ("#+begin_export" . "⏩")
                                         ("#+end_export" . "⏪")
                                         (":PROPERTIES:" . "⚙")
                                         (":END:" . "∎")
                                         ("[#A]" . "🅰")
                                         ("[#B]" . "🅱")
                                         ("[#C]" . "🅲")
                                         ("[#D]" . "🅳")
                                         ("[#E]" . "🅴")
                                         ))
  (add-hook 'org-mode-hook 'prettify-symbols-mode)
  ;; ---------------- ligature font && prettify symbols ----------------


  ;; ---------------- language settings ----------------

  ;; ============ emacs lisp setting ============
  (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
  ;; ============ emacs lisp setting ============

  ;; ============ clojure setting ============
  (add-hook 'clojure-mode-hook #'smartparens-strict-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
  ;; ============ clojure setting ============


  ;; ============ scheme setting ============
  ;;https://zhuanlan.zhihu.com/p/32772065 
  ;;(setq scheme-program-name "racket")
  ;;(setq geiser-chez-binary "racket")
  ;;(setq geiser-active-implementations '(racket))
  (setq scheme-program-name "chicken")
  (setq geiser-chez-binary "chicken")
  (setq geiser-active-implementations '(chicken))
  ;; ============ scheme setting ============

  ;; ---------------- language settings ----------------



  ;; ---------------- other config ----------------

  ;; Auto start rainbow delimeters in most programming modes
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

  ;; Start beacon mode to show a light when the cursor moves
  (beacon-mode t)
  (setq beacon-color "#23cbfe")
  (setq beacon-blink-when-point-moves-vertically 1)
  (setq beacon-blink-when-point-moves-horizontally 1)
  (setq beacon-blink-when-focused t)
  (setq beacon-blink-when-window-scrolls t)

  ;; ---------------- other config ----------------
  )


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
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
   '(evil-want-Y-yank-to-eol nil)
   '(package-selected-packages
     '(reveal-in-osx-finder osx-trash osx-dictionary osx-clipboard launchctl zenburn-theme sublime-themes solarized-theme moe-theme material-theme majapahit-theme light-soap-theme inkpot-theme heroku-theme gruvbox-theme gotham-theme flatui-theme flatland-theme farmhouse-theme doom-themes darktooth-theme autothemer bubbleberry-theme apropospriate-theme alect-themes afternoon-theme yasnippet-snippets yapfify sphinx-doc slime-company pytest pyenv-mode pydoc py-isort poetry transient pippel pipenv pyvenv pip-requirements nose live-py-mode importmagic epc ctable concurrent helm-rtags helm-pydoc helm-company helm-c-yasnippet google-c-style gendoxy fuzzy flycheck-ycmd flycheck-rtags flycheck-pos-tip disaster cython-mode cpp-auto-include company-ycmd ycmd request-deferred deferred company-statistics company-rtags rtags company-quickhelp pos-tip company-c-headers company-box frame-local company-anaconda company common-lisp-snippets clojure-snippets blacken auto-yasnippet anaconda-mode pythonic ac-ispell auto-complete slime sayid flycheck-joker flycheck-clj-kondo clj-refactor inflections multiple-cursors yasnippet lv ws-butler writeroom-mode winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package undo-tree treemacs-projectile treemacs-persp treemacs-icons-dired treemacs-evil toc-org symon symbol-overlay string-inflection string-edit spaceline-all-the-icons restart-emacs request rainbow-delimiters quickrun popwin pcre2el password-generator paradox overseer org-superstar open-junk-file nameless multi-line macrostep lorem-ipsum link-hint inspector info+ indent-guide hybrid-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-purpose helm-projectile helm-org helm-mode-manager helm-make helm-ls-git helm-flx helm-descbinds helm-cider helm-ag google-translate golden-ratio font-lock+ flycheck-package flycheck-elsa flx-ido fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-easymotion evil-collection evil-cleverparens evil-args evil-anzu emr elisp-slime-nav editorconfig dumb-jump drag-stuff dotenv-mode dired-quick-sort diminish define-word column-enforce-mode clean-aindent-mode cider-eval-sexp-fu centered-cursor-mode auto-highlight-symbol auto-compile aggressive-indent ace-link ace-jump-helm-line)))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(highlight-parentheses-highlight ((nil (:weight ultra-bold))) t))
  )
