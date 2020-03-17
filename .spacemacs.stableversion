;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------

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
     c-c++
     java
     python
     scheme
     racket
     clojure
     common-lisp
     emacs-lisp
     ocaml
     sml
     asm
     (scala :variables scala-backend 'scala-metals)
     (elixir :variables elixir-backend 'alchemist)
     erlang
     (rust :variables rust-backend 'racer)
     fsharp
     ;; julia
     ;; kotlin
     ;; idris
     ;; elm
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
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence "jk"
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip nil
                      auto-completion-enable-sort-by-usage t
                      auto-completion-private-snippets-directory "~/.emacs.d/private/yasnippets"
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
     spell-checking
     syntax-checking
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-global-margin t)
     ;; ----------------     tools     ----------------

     ;; ---------------- my own layers ----------------
     CanftIn
     (display :location local)
     ;; (google-calendar :location local)
     ;;cc-c++
     ;; ---------------- my own layers ----------------
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages
   '(
     aggressive-indent
     all-the-icons
     all-the-icons-dired
     all-the-icons-ivy
     beacon
     dumb-jump
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
     centaur-tabs
     )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages
   '(
     ensime
     )

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; File path pointing to emacs 27.1 executable compiled with support
   ;; for the portable dumper (this is currently the branch pdumper).
   ;; (default "emacs-27.0.50")
   dotspacemacs-emacs-pdumper-executable-file "emacs-27.0.50"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
   ;; (default spacemacs.pdmp)
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         (CanftIn-dracula :location local)
                         ;;farmhouse-dark
                         ;;material
                         ;;material-light
                         ;; majapahit-dark
                         ;; majapahit-light
                         ;; moe-dark
                         ;; moe-light
                         ;; solarized-dark
                         ;; solarized-light
                         ;;spacemacs-dark
                         ;;spacemacs-light
                         )

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs
                                  :separator arrow ;;wave
                                  :separator-scale 1.5
                                  )

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '(
                               ("Iosevka Nerd Font" ;;"FiraCode Nerd Font Mono"
                                :size 16
                                :weight normal ;;medium
                                :width normal
                                :powerline-scale 1
                                )
                               ("Fira Code Symbol"
                                :size 16
                                :weight normal
                                :width normal
                                :powerline-scale 1
                                )

                               ;;("iosevka" ;;"Source Code Pro"
                               ;; :size 16
                               ;; :weight normal
                               ;; :width normal)

                               ;;("Fira Code"
                               ;; :size 16
                               ;; :weight normal
                               ;; :width normal) 
                               )

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t  ;;nil

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil;;t

   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers 'relative

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'origami

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
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
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  ;; spacemacs terminal background transparency setting
  (setq spacemacs-theme-comment-bg nil)
  ;; (setq-default configuration-layer-elpa-archives
  ;;               '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
  ;;                 ("org-cn"   . "http://elpa.emacs-china.org/org/")
  ;;                 ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))
  ;; change elpa source
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

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  ;; ---------------- copy && paste ----------------
  ;;https://github.com/syl20bnr/spacemacs/issues/2222
  (defun copy-to-clipboard ()
    "Copies selection to x-clipboard."
    (interactive)
    (if (display-graphic-p)
        (progn
          (message "Yanked region to x-clipboard!")
          (call-interactively 'clipboard-kill-ring-save)
          )
      (if (region-active-p)
          (progn
            (shell-command-on-region (region-beginning) (region-end) "xsel -i -b")
            (message "Yanked region to clipboard!")
            (deactivate-mark))
        (message "No region active; can't yank to clipboard!")))
    )

  (defun paste-from-clipboard ()
    "Pastes from x-clipboard."
    (interactive)
    (if (display-graphic-p)
        (progn
          (clipboard-yank)
          (message "graphics active")
          )
      (insert (shell-command-to-string "xsel -o -b"))
      )
    )
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
              ("\\(\\*\\*\\*\\)"             #Xe102)
              ("\\(\\*\\*/\\)"               #Xe103)
              ("\\(\\*>\\)"                  #Xe104)
              ("[^*]\\(\\*/\\)"              #Xe105)
              ("\\(\\\\\\\\\\)"              #Xe106)
              ("\\(\\\\\\\\\\\\\\)"          #Xe107)
              ("\\({-\\)"                    #Xe108)
              ;; ("\\(\\[\\]\\)"                #Xe109)
              ("\\(::\\)"                    #Xe10a)
              ("\\(:::\\)"                   #Xe10b)
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

  ;; ============ clojure setting ============
  ;; clojure ',-g-g' command for java source code
  (setq cider-jdk-src-paths '("C:/Program Files/Java/jdk1.8.0_171/src"))
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
  (setq scheme-program-name "chicken-csi")
  (setq geiser-chez-binary "chicken-csi")
  (setq geiser-active-implementations '(chicken-csi))
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
        lsp-haskell-process-wrapper-function (lambda (argv) (cons (car argv) (cddr argv)))
        )
  (add-hook 'haskell-mode-hook
            #'lsp)
  ;; ============ haskell setting ============

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

    (variable-pitch-mode 1)

    ;; (turn-on-olivetti-mode)
    ;; (with-eval-after-load 'olivetti
    ;;   (olivetti-set-width 81)
    ;;   (olivetti-mode 1))
    )

  (add-hook 'org-mode-hook 'my-org-config/after-org-mode-load)

  ;;Quick access to my most important org functions is given by opening the menu SPC o
  (spacemacs/declare-prefix "o" "org mode")
  ;;You can view my daily agenda with SPC o d
  (defun my-org-daily-agenda ()
    (interactive)
    (org-agenda nil "d")
    )

  (spacemacs/set-leader-keys "od" 'my-org-daily-agenda)
  
  ;;Add a new todo with preselected template with SPC o t
  (defun my-org-add-todo ()
    (interactive)
    (org-capture nil "t")
    )
  (spacemacs/set-leader-keys "ot" 'my-org-add-todo)

  (spacemacs/set-leader-keys "oc" 'org-capture)

  (spacemacs/set-leader-keys "oa" 'org-agenda)

  (spacemacs/set-leader-keys "ol" 'org-store-link)

  (defun my-org-helm-find-file ()
    (interactive)
    (helm-browse-project-find-files '(
                                      "~/CanftIn-GTD"
                                      "~/org"
                                      ))
    )

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
                                                   (org-agenda-scheduled-leaders '("   " "%2dx"))
                                                   ))
                                       (tags "+inbox"
                                             ((org-agenda-overriding-header "INBOX: Entries to refile")))
                                       (todo "VERIFY"
                                             ((org-agenda-overriding-header "FINAL VERIFICATION PENDING")))
                                       )
                                      )
                                     ("w" "WEEKLY REVIEW"
                                      (
                                       (todo "DONE"
                                             (
                                              (org-agenda-overriding-header "DONE!")
                                              ))
                                       (todo "CANCELLED"
                                             ((org-agenda-overriding-header "CANCELLED")))
                                       (todo "TODO"
                                             ((org-agenda-overriding-header "TODO Items (without time attached)")
                                              (org-agenda-skip-function '(org-agenda-skip-entry-if 'deadline 'scheduled 'timestamp))))
                                       (todo "WAIT"
                                             ((org-agenda-overriding-header "WAIT: Items on hold (without time attached)")
                                              (org-agenda-skip-function '(org-agenda-skip-entry-if 'deadline 'scheduled 'timestamp))))
                                       )
                                      )
                                     ("d" "DAILY"
                                      ((agenda "" ((org-agenda-span 'day)
                                                   (org-agenda-compact-blocks t)
                                                   ;; (org-agenda-deadline-leaders)
                                                   ;; (org-agenda-scheduled-leaders)
                                                   (org-agenda-prefix-format '(
                                                                               (agenda . "  %?-12t")
                                                                               ))
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

                                                      (:auto-category t)
                                                      ))
                                                   ))
                                       (alltodo "" ((org-agenda-overriding-header "")
                                                    (org-agenda-prefix-format '(
                                                                                (todo . "  ")
                                                                                ))
                                                    (org-super-agenda-groups
                                                     '(
                                                       (:name "Inbox" :tag "inbox")
                                                       (:name "Verify" :todo "VERIFY")
                                                       (:discard (:anything t))
                                                       )
                                                     ))))
                                      )
                                     ))
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

         (variable-pitch-font `(:family "Iosevka" ;;"iA Writer Quattro S"
                                        ))
         (fixed-pitch-font    `(:family "Iosevka Nerd Font" ))
         (fixed-pitch-font-alt `(:family "Iosevka" ;; "iA Writer Mono S"
                                         )))

    (setq org-todo-keyword-faces (list
                                  `("TODO"
                                    ,@fixed-pitch-font
                                    :foreground ,comment
                                    :weight bold
                                    )
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
                                    :weight bold)
                                  ))
    )
  (setq org-todo-keywords
        '(
          (sequence "TODO" "NEXT" "WAIT" "|" "DONE(d)" "CANCELED")
          ))
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
  (setq-default scroll-margin 5
                ;; scroll-conservatively 9999
                ;; scroll-step 1
                )
  (setq-default google-translate-default-source-language "en"
                google-translate-default-target-language "th")
  ;; useless, go spacemacs/init() for setting
  ;;(setq powerline-default-separator 'arrow)
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1)

  ;; plantuml
  (setq plantuml-default-exec-mode 'jar)

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
  (add-hook 'prog-mode-hook #'aggressive-indent-mode)


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

  ;; ---------------- Some theme Settings ----------------

  )

;; Do not write anything past this comment. This is where Emacs will ;; auto-generate custom variable definitions.
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
   '(org-agenda-files (quote ("d:/linux_home/CanftIn-GTD/todo.org")))
   '(haskell-stylish-on-save t)
   '(package-selected-packages
     (quote
      (utop tuareg caml seeing-is-believing rvm ruby-tools ruby-test-mode ruby-refactor ruby-hash-syntax rubocopfmt rubocop rspec-mode robe rbenv rake ocp-indent ob-elixir minitest flycheck-ocaml merlin flycheck-mix flycheck-credo dune chruby bundler inf-ruby alchemist elixir-mode mvn meghanada maven-test-mode groovy-mode groovy-imports pcache gradle-mode yapfify stickyfunc-enhance pytest pyenv-mode py-isort pippel pipenv pyvenv pip-requirements live-py-mode importmagic epc ctable concurrent helm-pydoc helm-gtags helm-cscope xcscope ggtags cython-mode counsel-gtags company-anaconda anaconda-mode pythonic ox-twbs ox-gfm material-theme emojify ht emoji-cheat-sheet-plus company-emoji all-the-icons-dired yasnippet-snippets ws-butler writeroom-mode winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package unfill toc-org symon string-inflection spaceline-all-the-icons sound-wav smeargle restart-emacs rainbow-mode rainbow-identifiers rainbow-delimiters prodigy popwin persp-mode pcre2el password-generator paradox overseer orgit org-tree-slide org-projectile org-present org-pomodoro org-mime org-download org-bullets org-brain open-junk-file neotree nameless mwim move-text mmm-mode markdown-toc magit-svn magit-gitflow macrostep lorem-ipsum linum-relative link-hint indent-guide hungry-delete htmlize hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-rtags helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-hoogle helm-gitignore helm-git-grep helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag haskell-snippets graphviz-dot-mode google-translate google-c-style golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fuzzy font-lock+ flycheck-rtags flycheck-pos-tip flycheck-haskell flx-ido fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu engine-mode elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline disaster diminish diff-hl define-word counsel-projectile company-statistics company-rtags company-ghci company-cabal company-c-headers column-enforce-mode color-identifiers-mode cmm-mode clojure-snippets clean-aindent-mode clang-format cider-eval-sexp-fu cider centered-cursor-mode browse-at-remote auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent ace-window ace-link ace-jump-helm-line ac-ispell 2048-game)))
   '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e"))))
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
