;; [[file:~/.config/doom/config.org::*Rudimentary%20configuration][Rudimentary configuration:1]]
;;; config.el -*- lexical-binding: t; -*-
;; Rudimentary configuration:1 ends here

;; [[file:~/.config/doom/config.org::*Personal%20Information][Personal Information:1]]
(setq user-full-name "tecosaur"
      user-mail-address "tecosaur@gmail.com")
;; Personal Information:1 ends here

;; [[file:~/.config/doom/config.org::*Simple%20settings][Simple settings:1]]
(setq-default
 delete-by-moving-to-trash t                      ; Delete files to trash
 tab-width 4                                      ; Set width for tabs
 uniquify-buffer-name-style 'forward              ; Uniquify buffer names
 window-combination-resize t                      ; take new window space from all other windows (not just current)
 x-stretch-cursor t)                              ; Stretch cursor to the glyph width

(setq undo-limit 80000000                         ; Raise undo-limit to 80Mb
      evil-want-fine-undo t                       ; By default while in insert all changes are one big blob. Be more granular
      auto-save-default t                         ; Nobody likes to loose work, I certainly don't
      inhibit-compacting-font-caches t)           ; When there are lots of glyphs, keep them in memory

(delete-selection-mode 1)                         ; Replace selection when inserting text
(display-time-mode 1)                             ; Enable time in the mode-line
(display-battery-mode 1)                          ; On laptops it's nice to know how much power you have
(global-subword-mode 1)                           ; Iterate through CamelCase words
;; Simple settings:1 ends here

;; [[file:~/.config/doom/config.org::*Fullscreen][Fullscreen:1]]
(if (eq initial-window-system 'x)                 ; if started by emacs command or desktop file
    (toggle-frame-maximized)
  (toggle-frame-fullscreen))
;; Fullscreen:1 ends here

;; [[file:~/.config/doom/config.org::*Auto-customisations][Auto-customisations:1]]
(setq-default custom-file (expand-file-name ".custom.el" doom-private-dir))
(when (file-exists-p custom-file)
  (load custom-file))
;; Auto-customisations:1 ends here

;; [[file:~/.config/doom/config.org::*Windows][Windows:1]]
(setq evil-vsplit-window-right t
      evil-split-window-below t)
;; Windows:1 ends here

;; [[file:~/.config/doom/config.org::*Windows][Windows:2]]
(defadvice! prompt-for-buffer (&rest _)
  :after '(evil-window-split evil-window-vsplit)
  (+ivy/switch-buffer))
;; Windows:2 ends here

;; [[file:~/.config/doom/config.org::*Buffer%20defaults][Buffer defaults:1]]
;; (setq-default major-mode 'org-mode)
;; Buffer defaults:1 ends here

;; [[file:~/.config/doom/config.org::*Font%20Face][Font Face:1]]
(setq doom-font (font-spec :family "Fira Code" :size 22)
      doom-big-font (font-spec :family "Fira Code" :size 36)
      doom-variable-pitch-font (font-spec :family "Overpass" :size 24))
;; Font Face:1 ends here

;; [[file:~/.config/doom/config.org::*Theme][Theme:1]]
(setq doom-theme 'doom-vibrant)
;; Theme:1 ends here

;; [[file:~/.config/doom/config.org::*Theme][Theme:2]]
(custom-set-faces!
  '(doom-modeline-buffer-modified :foreground "orange"))
;; Theme:2 ends here

;; [[file:~/.config/doom/config.org::*Miscellaneous][Miscellaneous:1]]
(setq display-line-numbers-type 'relative)
;; Miscellaneous:1 ends here

;; [[file:~/.config/doom/config.org::*Miscellaneous][Miscellaneous:2]]
(setq doom-fallback-buffer-name "► Doom"
      +doom-dashboard-name "► Doom")
;; Miscellaneous:2 ends here

;; [[file:~/.config/doom/config.org::*Miscellaneous][Miscellaneous:3]]
(custom-set-faces! '(doom-modeline-evil-insert-state :weight bold :foreground "#339CDB"))
;; Miscellaneous:3 ends here

;; [[file:~/.config/doom/config.org::*Mouse%20buttons][Mouse buttons:1]]
(map! :n [mouse-8] #'better-jumper-jump-backward
      :n [mouse-9] #'better-jumper-jump-forward)
;; Mouse buttons:1 ends here

;; [[file:~/.config/doom/config.org::*Window%20title][Window title:1]]
(setq frame-title-format
    '(""
      "%b"
      (:eval
       (let ((project-name (projectile-project-name)))
         (unless (string= "-" project-name)
           (format (if (buffer-modified-p)  " ◉ %s" "  ●  %s") project-name))))))
;; Window title:1 ends here

;; [[file:~/.config/doom/config.org::*Splash%20screen][Splash screen:1]]
(defvar fancy-splash-image-template
  (expand-file-name "misc/splash-images/blackhole-lines-template.svg" doom-private-dir)
  "Default template svg used for the splash image, with substitutions from ")
(defvar fancy-splash-image-nil
  (expand-file-name "misc/splash-images/transparent-pixel.png" doom-private-dir)
  "An image to use at minimum size, usually a transparent pixel")

(setq fancy-splash-sizes
  `((:height 500 :min-height 50 :padding (0 . 2) :template ,(expand-file-name "misc/splash-images/blackhole-lines-0.svg" doom-private-dir))
    (:height 440 :min-height 42 :padding (1 . 4) :template ,(expand-file-name "misc/splash-images/blackhole-lines-0.svg" doom-private-dir))
    (:height 400 :min-height 38 :padding (1 . 4) :template ,(expand-file-name "misc/splash-images/blackhole-lines-1.svg" doom-private-dir))
    (:height 350 :min-height 36 :padding (1 . 3) :template ,(expand-file-name "misc/splash-images/blackhole-lines-2.svg" doom-private-dir))
    (:height 300 :min-height 34 :padding (1 . 3) :template ,(expand-file-name "misc/splash-images/blackhole-lines-3.svg" doom-private-dir))
    (:height 250 :min-height 32 :padding (1 . 2) :template ,(expand-file-name "misc/splash-images/blackhole-lines-4.svg" doom-private-dir))
    (:height 200 :min-height 30 :padding (1 . 2) :template ,(expand-file-name "misc/splash-images/blackhole-lines-5.svg" doom-private-dir))
    (:height 100 :min-height 24 :padding (1 . 2) :template ,(expand-file-name "misc/splash-images/emacs-e-template.svg" doom-private-dir))
    (:height 0   :min-height 0  :padding (0 . 0) :file ,fancy-splash-image-nil)))

(defvar fancy-splash-sizes
  `((:height 500 :min-height 50 :padding (0 . 2))
    (:height 440 :min-height 42 :padding (1 . 4))
    (:height 330 :min-height 35 :padding (1 . 3))
    (:height 200 :min-height 30 :padding (1 . 2))
    (:height 0   :min-height 0  :padding (0 . 0) :file ,fancy-splash-image-nil))
  "list of plists with the following properties
  :height the height of the image
  :min-height minimum `frame-height' for image
  :padding `+doom-dashboard-banner-padding' to apply
  :template non-default template file
  :file file to use instead of template")

(defvar fancy-splash-template-colours
  '(("$colour1" . keywords) ("$colour2" . type) ("$colour3" . base5) ("$colour4" . base8))
  "list of colour-replacement alists of the form (\"$placeholder\" . 'theme-colour) which applied the template")

(unless (file-exists-p (expand-file-name "theme-splashes" doom-cache-dir))
  (make-directory (expand-file-name "theme-splashes" doom-cache-dir) t))

(defun fancy-splash-filename (theme-name height)
  (expand-file-name (concat (file-name-as-directory "theme-splashes")
                            (symbol-name doom-theme)
                            "-" (number-to-string height) ".svg")
                    doom-cache-dir))

(defun fancy-splash-clear-cache ()
  "Delete all cached fancy splash images"
  (interactive)
  (delete-directory (expand-file-name "theme-splashes" doom-cache-dir) t)
  (message "Cache cleared!"))

(defun fancy-splash-generate-image (template height)
  "Read TEMPLATE and create an image if HEIGHT with colour substitutions as  ;described by `fancy-splash-template-colours' for the current theme"
    (with-temp-buffer
      (insert-file-contents template)
      (re-search-forward "$height" nil t)
      (replace-match (number-to-string height) nil nil)
      (dolist (substitution fancy-splash-template-colours)
        (beginning-of-buffer)
        (while (re-search-forward (car substitution) nil t)
          (replace-match (doom-color (cdr substitution)) nil nil)))
      (write-region nil nil
                    (fancy-splash-filename (symbol-name doom-theme) height) nil nil)))

(defun fancy-splash-generate-images ()
  "Perform `fancy-splash-generate-image' in bulk"
  (dolist (size fancy-splash-sizes)
    (unless (plist-get size :file)
      (fancy-splash-generate-image (or (plist-get size :file)
                                       (plist-get size :template)
                                       fancy-splash-image-template)
                                   (plist-get size :height)))))

(defun ensure-theme-splash-images-exist (&optional height)
  (unless (file-exists-p (fancy-splash-filename
                          (symbol-name doom-theme)
                          (or height
                              (plist-get (car fancy-splash-sizes) :height))))
    (fancy-splash-generate-images)))

(defun get-appropriate-splash ()
  (let ((height (frame-height)))
    (cl-some (lambda (size) (when (>= height (plist-get size :min-height)) size))
             fancy-splash-sizes)))

(setq fancy-splash-last-size nil)
(setq fancy-splash-last-theme nil)
(defun set-appropriate-splash (&optional frame)
  (let ((appropriate-image (get-appropriate-splash)))
    (unless (and (equal appropriate-image fancy-splash-last-size)
                 (equal doom-theme fancy-splash-last-theme)))
    (unless (plist-get appropriate-image :file)
      (ensure-theme-splash-images-exist (plist-get appropriate-image :height)))
    (setq fancy-splash-image
          (or (plist-get appropriate-image :file)
              (fancy-splash-filename (symbol-name doom-theme) (plist-get appropriate-image :height))))
    (setq +doom-dashboard-banner-padding (plist-get appropriate-image :padding))
    (setq fancy-splash-last-size appropriate-image)
    (setq fancy-splash-last-theme doom-theme)
    (+doom-dashboard-reload)))

(add-hook 'window-size-change-functions #'set-appropriate-splash)
(add-hook 'doom-load-theme-hook #'set-appropriate-splash)
;; Splash screen:1 ends here

(defun +doom/update-all-pinned-package-form ()
  "Call `doom/update-pinned-package-form' on every package! statement in the buffer"
  (interactive)
  (beginning-of-buffer)
  (let ((progress 0) (total (how-many "package!")) (updated 0))
    (while (search-forward "package!" nil t)
      (setq progress (1+ progress))
      (forward-char) ;; move cursor to package name "package! |name"
      (message (format "Re-pinning package: %s/%s (%s)" progress total (current-word)))
      (backward-char)
      (evil-scroll-line-to-center (line-number-at-pos))
      (redisplay)
      (if (s-contains-p "Updated" (condition-case nil
                                      (doom/update-pinned-package-form)
                                    (user-error "")))
        (setq updated (1+ updated)))
      (search-forward "package!" nil t)) ;; because of cursor-moving done
    (message (format "%s packages updated" updated))))

;; [[file:~/.config/doom/config.org::*Abbrev%20mode][Abbrev mode:1]]
(use-package abbrev
  :init
  (setq-default abbrev-mode t)
  ;; a hook funtion that sets the abbrev-table to org-mode-abbrev-table
  ;; whenever the major mode is a text mode
  (defun tec/set-text-mode-abbrev-table ()
    (if (derived-mode-p 'text-mode)
        (setq local-abbrev-table org-mode-abbrev-table)))
  :commands abbrev-mode
  :hook
  (abbrev-mode . tec/set-text-mode-abbrev-table)
  :config
  (setq abbrev-file-name (expand-file-name "abbrev.el" doom-private-dir))
  (setq save-abbrevs 'silently))
;; Abbrev mode:1 ends here

;; [[file:~/.config/doom/config.org::*Centaur%20Tabs][Centaur Tabs:1]]
(after! centaur-tabs
  (centaur-tabs-mode -1)
  (setq centaur-tabs-height 36
        centaur-tabs-set-icons t
        centaur-tabs-modified-marker "o"
        centaur-tabs-close-button "×"
        centaur-tabs-set-bar 'above)
        centaur-tabs-gray-out-icons 'buffer
  (centaur-tabs-change-fonts "P22 Underground Book" 160))
;; (setq x-underline-at-descent-line t)
;; Centaur Tabs:1 ends here

;; [[file:~/.config/doom/config.org::*Company][Company:1]]
(after! company
  (setq company-idle-delay 0.5
        company-minimum-prefix-length 2)
  (setq company-show-numbers t)
(add-hook 'evil-normal-state-entry-hook #'company-abort)) ;; make aborting less annoying.
;; Company:1 ends here

;; [[file:~/.config/doom/config.org::*Company][Company:2]]
(setq-default history-length 1000)
(setq-default prescient-history-length 1000)
;; Company:2 ends here

;; [[file:~/.config/doom/config.org::*Plain%20Text][Plain Text:1]]
(set-company-backend! '(text-mode
                        markdown-mode
                        gfm-mode)
  '(:seperate company-ispell
              company-files
              company-yasnippet))
;; Plain Text:1 ends here

;; [[file:~/.config/doom/config.org::*ESS][ESS:1]]
(set-company-backend! 'ess-r-mode '(company-R-args company-R-objects company-dabbrev-code :separate))
;; ESS:1 ends here

;; [[file:~/.config/doom/config.org::*%5B%5Bhttps://github.com/zachcurry/emacs-anywhere%5D%5BEmacs%20Anywhere%5D%5D%20configuration][[[https://github.com/zachcurry/emacs-anywhere][Emacs Anywhere]] configuration:1]]
(defun markdown-window-p (window-title)
  "Judges from WINDOW-TITLE whether the current window likes markdown"
  (string-match-p (rx (or "Stack Exchange" "Stack Overflow"
                          "Pull Request" "Issue" "Discord"))
                  window-title))
;; [[https://github.com/zachcurry/emacs-anywhere][Emacs Anywhere]] configuration:1 ends here

;; [[file:~/.config/doom/config.org::*%5B%5Bhttps://github.com/zachcurry/emacs-anywhere%5D%5BEmacs%20Anywhere%5D%5D%20configuration][[[https://github.com/zachcurry/emacs-anywhere][Emacs Anywhere]] configuration:2]]
(define-minor-mode emacs-anywhere-mode
  "To tweak the current buffer for some emacs-anywhere considerations"
  :init-value nil
  :keymap (list
           ;; Finish edit, but be smart in org mode
           (cons (kbd "C-c C-c") (lambda! (if (and (eq major-mode 'org-mode)
                                                   (org-in-src-block-p))
                                              (org-ctrl-c-ctrl-c)
                                            (delete-frame))))
           ;; Abort edit. emacs-anywhere saves the current edit for next time.
           (cons (kbd "C-c C-k") (lambda! (setq ea-on nil)
                                          (delete-frame))))
  (when emacs-anywhere-mode
    ;; line breaking
    (turn-off-auto-fill)
    (visual-line-mode t)
    ;; DEL/C-SPC to clear (first keystroke only)
    (set-transient-map (let ((keymap (make-sparse-keymap)))
                         (define-key keymap (kbd "DEL")   (lambda! (delete-region (point-min) (point-max))))
                         (define-key keymap (kbd "C-SPC") (lambda! (delete-region (point-min) (point-max))))
                         keymap))
    ;; disable tabs
    (when (bound-and-true-p centaur-tabs-mode)
      (centaur-tabs-local-mode t))))

(defun ea-popup-handler (app-name window-title x y w h)
  (interactive)
  (set-frame-size (selected-frame) 80 12)
  ;; position the frame near the mouse
  (let* ((mousepos (split-string (shell-command-to-string "xdotool getmouselocation | sed -E \"s/ screen:0 window:[^ ]*|x:|y://g\"")))
         (mouse-x (- (string-to-number (nth 0 mousepos)) 100))
         (mouse-y (- (string-to-number (nth 1 mousepos)) 50)))
    (set-frame-position (selected-frame) mouse-x mouse-y))

  (set-frame-name (concat "Quick Edit ∷ " ea-app-name " — "
                          (truncate-string-to-width
                           (string-trim
                            (string-trim-right window-title
                                               (format "-[A-Za-z0-9 ]*%s" ea-app-name))
                            "[\s-]+" "[\s-]+")
                           45 nil nil "…")))
  (message "window-title: %s" window-title)

  ;; set major mode
  (cond
   ((markdown-window-p window-title) (gfm-mode))
   (t (org-mode)) ; default major mode
   )

  (when (gui-get-selection 'PRIMARY) (insert (gui-get-selection 'PRIMARY)))

  (evil-insert-state) ; start in insert
  (emacs-anywhere-mode 1))

(add-hook 'ea-popup-hook 'ea-popup-handler)
;; [[https://github.com/zachcurry/emacs-anywhere][Emacs Anywhere]] configuration:2 ends here

;; [[file:~/.config/doom/config.org::*Flyspell][Flyspell:1]]
(after! flyspell (require 'flyspell-lazy) (flyspell-lazy-mode 1))
;; Flyspell:1 ends here

;; [[file:~/.config/doom/config.org::*Tramp][Tramp:1]]
(after! tramp
  (setenv "SHELL" "/bin/bash")
  (setq tramp-shell-prompt-pattern "\\(?:^\\|\\)[^]#$%>\n]*#?[]#$%>] *\\(\\[[0-9;]*[a-zA-Z] *\\)*")) ;; defult + 
;; Tramp:1 ends here

;; [[file:~/.config/doom/config.org::*Treemacs][Treemacs:1]]
(after! treemacs
  (defvar treemacs-file-ignore-extensions '()
    "File extension which `treemacs-ignore-filter' will ensure are ignored")
  (defvar treemacs-file-ignore-globs '()
    "Globs which will are transformed to `treemacs-file-ignore-regexps' which `treemacs-ignore-filter' will ensure are ignored")
  (defvar treemacs-file-ignore-regexps '()
    "RegExps to be tested to ignore files, generated from `treeemacs-file-ignore-globs'")
  (defun treemacs-file-ignore-generate-regexps ()
    "Generate `treemacs-file-ignore-regexps' from `treemacs-file-ignore-globs'"
    (setq treemacs-file-ignore-regexps (mapcar 'dired-glob-regexp treemacs-file-ignore-globs)))
  (if (equal treemacs-file-ignore-globs '()) nil (treemacs-file-ignore-generate-regexps))
  (defun treemacs-ignore-filter (file full-path)
    "Ignore files specified by `treemacs-file-ignore-extensions', and `treemacs-file-ignore-regexps'"
    (or (member (file-name-extension file) treemacs-file-ignore-extensions)
        (let ((ignore-file nil))
          (dolist (regexp treemacs-file-ignore-regexps ignore-file)
            (setq ignore-file (or ignore-file (if (string-match-p regexp full-path) t nil)))))))
  (add-to-list 'treemacs-ignored-file-predicates #'treemacs-ignore-filter))
;; Treemacs:1 ends here

;; [[file:~/.config/doom/config.org::*Treemacs][Treemacs:2]]
(setq treemacs-file-ignore-extensions '(;; LaTeX
                                        "aux"
                                        "ptc"
                                        "fdb_latexmk"
                                        "fls"
                                        "synctex.gz"
                                        "toc"
                                        ;; LaTeX - glossary
                                        "glg"
                                        "glo"
                                        "gls"
                                        "glsdefs"
                                        "ist"
                                        "acn"
                                        "acr"
                                        "alg"
                                        ;; LaTeX - pgfplots
                                        "mw"
                                        ;; LaTeX - pdfx
                                        "pdfa.xmpi"
                                        ))
(setq treemacs-file-ignore-globs '(;; LaTeX
                                   "*/_minted-*"
                                   ;; AucTeX
                                   "*/.auctex-auto"
                                   "*/_region_.log"
                                   "*/_region_.tex"))
;; Treemacs:2 ends here

;; [[file:~/.config/doom/config.org::*calc][calc:1]]
(setq calc-angle-mode 'rad  ;; radians are rad
      calc-algebraic-mode t ;; allows '2*x instead of 'x<RET>2*
      calc-symbolic-mode t) ;; keeps stuff like √2 irrational for as long as possible
(after! calctex
  (setq calctex-format-latex-header (concat calctex-format-latex-header
                                            "\n\\usepackage{arevmath}")))
(add-hook 'calc-mode-hook #'calctex-mode)
;; calc:1 ends here

;; [[file:~/.config/doom/config.org::*electric%20pair%20mode][electric pair mode:1]]
(electric-pair-mode t)
;; electric pair mode:1 ends here

;; [[file:~/.config/doom/config.org::*ispell][ispell:1]]
(setq ispell-dictionary "en_GBs_au_SCOWL_80_0_k_hr")
;; ispell:1 ends here

;; [[file:~/.config/doom/config.org::*ispell][ispell:2]]
(setq ispell-personal-dictionary (expand-file-name ".hunspell_personal" doom-private-dir))
;; ispell:2 ends here

;; [[file:~/.config/doom/config.org::*spray][spray:1]]
(setq spray-wpm 500
      spray-height 700)
;; spray:1 ends here

;; [[file:~/.config/doom/config.org::*theme%20magic][theme magic:1]]
(add-hook 'doom-load-theme-hook 'theme-magic-from-emacs)
;; theme magic:1 ends here

;; [[file:~/.config/doom/config.org::*wttrin][wttrin:1]]
(setq wttrin-default-cities '(""))
;; wttrin:1 ends here

;; [[file:~/.config/doom/config.org::*elcord][elcord:1]]
(setq elcord-use-major-mode-as-main-icon t)
;; elcord:1 ends here

;; [[file:~/.config/doom/config.org::*File%20Templates][File Templates:1]]
(set-file-template! "\\.tex$" :trigger "__" :mode 'latex-mode)
;; File Templates:1 ends here

;; [[file:~/.config/doom/config.org::*Tweaking%20defaults][Tweaking defaults:1]]
(setq org-directory "~/.org"                      ; let's put files here
      org-use-property-inheritance t              ; it's convenient to have properties inherited
      org-log-done 'time                          ; having the time a item is done sounds convininet
      org-list-allow-alphabetical t               ; have a. A. a) A) list bullets
      org-export-in-background t                  ; run export processes in external emacs process
      org-catch-invisible-edits 'smart)           ; try not to accidently do weird stuff in invisible regions
;; Tweaking defaults:1 ends here

;; [[file:~/.config/doom/config.org::*Tweaking%20defaults][Tweaking defaults:2]]
(setq org-babel-default-header-args '((:session . "none")
                                      (:results . "replace")
                                      (:exports . "code")
                                      (:cache . "no")
                                      (:noweb . "no")
                                      (:hlines . "no")
                                      (:tangle . "no")
                                      (:comments . "link")))
;; Tweaking defaults:2 ends here

;; [[file:~/.config/doom/config.org::*Extra%20functionality][Extra functionality:1]]
(evil-define-command evil-buffer-org-new (count file)
  "Creates a new ORG buffer replacing the current window, optionally
   editing a certain FILE"
  :repeat nil
  (interactive "P<f>")
  (if file
      (evil-edit file)
    (let ((buffer (generate-new-buffer "*new org*")))
      (set-window-buffer nil buffer)
      (with-current-buffer buffer
        (org-mode)))))
(map! :leader
  (:prefix "b"
    :desc "New empty ORG buffer" "o" #'evil-buffer-org-new))
;; Extra functionality:1 ends here

;; [[file:~/.config/doom/config.org::*Extra%20functionality][Extra functionality:2]]
(setq org-list-demote-modify-bullet '(("+" . "-") ("-" . "+") ("*" . "+")))
;; Extra functionality:2 ends here

;; [[file:~/.config/doom/config.org::*Extra%20functionality][Extra functionality:3]]
(use-package! org-ref
   :after org
   :config
    (setq org-ref-completion-library 'org-ref-ivy-cite))
;; Extra functionality:3 ends here

;; [[file:~/.config/doom/config.org::*Extra%20functionality][Extra functionality:4]]
(after! org (add-hook 'org-mode-hook 'turn-on-org-cdlatex))
;; Extra functionality:4 ends here

;; [[file:~/.config/doom/config.org::*Extra%20functionality][Extra functionality:5]]
(after! org (add-hook 'org-mode-hook 'turn-on-flyspell))
;; Extra functionality:5 ends here

;; [[file:~/.config/doom/config.org::*Super%20agenda][Super agenda:1]]
(use-package! org-super-agenda
  :commands (org-super-agenda-mode))
(after! org-agenda
  (org-super-agenda-mode))

(setq org-agenda-skip-scheduled-if-done t
      org-agenda-skip-deadline-if-done t
      org-agenda-include-deadlines t
      org-agenda-block-separator nil
      org-agenda-compact-blocks t)

(setq org-agenda-custom-commands
      '(("o" "Overview"
         ((agenda "" ((org-agenda-span 'day)
                      (org-super-agenda-groups
                       '((:name "Today"
                                :time-grid t
                                :date today
                                :todo "TODAY"
                                :scheduled today
                                :order 1)))))
          (alltodo "" ((org-agenda-overriding-header "")
                       (org-super-agenda-groups
                        '((:name "Next to do"
                                 :todo "NEXT"
                                 :order 1)
                          (:name "Important"
                                 :tag "Important"
                                 :priority "A"
                                 :order 6)
                          (:name "Due Today"
                                 :deadline today
                                 :order 2)
                          (:name "Due Soon"
                                 :deadline future
                                 :order 8)
                          (:name "Overdue"
                                 :deadline past
                                 :face error
                                 :order 7)
                          (:name "Assignments"
                                 :tag "Assignment"
                                 :order 10)
                          (:name "Issues"
                                 :tag "Issue"
                                 :order 12)
                          (:name "Projects"
                                 :tag "Project"
                                 :order 14)
                          (:name "Emacs"
                                 :tag "Emacs"
                                 :order 13)
                          (:name "Research"
                                 :tag "Research"
                                 :order 15)
                          (:name "To read"
                                 :tag "Read"
                                 :order 30)
                          (:name "Waiting"
                                 :todo "WAITING"
                                 :order 20)
                          (:name "Trivial"
                                 :priority<= "E"
                                 :tag ("Trivial" "Unimportant")
                                 :todo ("SOMEDAY" )
                                 :order 90)
                          (:discard (:tag ("Chore" "Routine" "Daily")))))))))))
;; Super agenda:1 ends here

;; [[file:~/.config/doom/config.org::*Capture][Capture:1]]
(use-package! doct
  :commands (doct))

(after! org-capture
  (defun org-capture-select-template-prettier (&optional keys)
    "Select a capture template, in a prettier way than default
  Lisp programs can force the template by setting KEYS to a string."
    (let ((org-capture-templates
           (or (org-contextualize-keys
                (org-capture-upgrade-templates org-capture-templates)
                org-capture-templates-contexts)
               '(("t" "Task" entry (file+headline "" "Tasks")
                  "* TODO %?\n  %u\n  %a")))))
      (if keys
          (or (assoc keys org-capture-templates)
              (error "No capture template referred to by \"%s\" keys" keys))
        (org-mks org-capture-templates
                 "Select a capture template\n━━━━━━━━━━━━━━━━━━━━━━━━━"
                 "Template key: "
                 `(("q" ,(concat (all-the-icons-octicon "stop" :face 'all-the-icons-red :v-adjust 0.01) "\tAbort")))))))
  (advice-add 'org-capture-select-template :override #'org-capture-select-template-prettier)
  
  (defun org-mks-pretty (table title &optional prompt specials)
    "Select a member of an alist with multiple keys. Prettified.
  
  TABLE is the alist which should contain entries where the car is a string.
  There should be two types of entries.
  
  1. prefix descriptions like (\"a\" \"Description\")
     This indicates that `a' is a prefix key for multi-letter selection, and
     that there are entries following with keys like \"ab\", \"ax\"…
  
  2. Select-able members must have more than two elements, with the first
     being the string of keys that lead to selecting it, and the second a
     short description string of the item.
  
  The command will then make a temporary buffer listing all entries
  that can be selected with a single key, and all the single key
  prefixes.  When you press the key for a single-letter entry, it is selected.
  When you press a prefix key, the commands (and maybe further prefixes)
  under this key will be shown and offered for selection.
  
  TITLE will be placed over the selection in the temporary buffer,
  PROMPT will be used when prompting for a key.  SPECIALS is an
  alist with (\"key\" \"description\") entries.  When one of these
  is selected, only the bare key is returned."
    (save-window-excursion
      (let ((inhibit-quit t)
      (buffer (org-switch-to-buffer-other-window "*Org Select*"))
      (prompt (or prompt "Select: "))
      case-fold-search
      current)
        (unwind-protect
      (catch 'exit
        (while t
          (setq-local evil-normal-state-cursor (list nil))
          (erase-buffer)
          (insert title "\n\n")
          (let ((des-keys nil)
          (allowed-keys '("\C-g"))
          (tab-alternatives '("\s" "\t" "\r"))
          (cursor-type nil))
      ;; Populate allowed keys and descriptions keys
      ;; available with CURRENT selector.
      (let ((re (format "\\`%s\\(.\\)\\'"
            (if current (regexp-quote current) "")))
            (prefix (if current (concat current " ") "")))
        (dolist (entry table)
          (pcase entry
            ;; Description.
            (`(,(and key (pred (string-match re))) ,desc)
             (let ((k (match-string 1 key)))
         (push k des-keys)
         ;; Keys ending in tab, space or RET are equivalent.
         (if (member k tab-alternatives)
             (push "\t" allowed-keys)
           (push k allowed-keys))
         (insert (propertize prefix 'face 'font-lock-comment-face) (propertize k 'face 'bold) (propertize "›" 'face 'font-lock-comment-face) "  " desc "…" "\n")))
            ;; Usable entry.
            (`(,(and key (pred (string-match re))) ,desc . ,_)
             (let ((k (match-string 1 key)))
         (insert (propertize prefix 'face 'font-lock-comment-face) (propertize k 'face 'bold) "   " desc "\n")
         (push k allowed-keys)))
            (_ nil))))
      ;; Insert special entries, if any.
      (when specials
        (insert "─────────────────────────\n")
        (pcase-dolist (`(,key ,description) specials)
          (insert (format "%s   %s\n" (propertize key 'face '(bold all-the-icons-red)) description))
          (push key allowed-keys)))
      ;; Display UI and let user select an entry or
      ;; a sub-level prefix.
      (goto-char (point-min))
      (unless (pos-visible-in-window-p (point-max))
        (org-fit-window-to-buffer))
      (let ((pressed (org--mks-read-key allowed-keys prompt)))
        (setq current (concat current pressed))
        (cond
         ((equal pressed "\C-g") (user-error "Abort"))
         ;; Selection is a prefix: open a new menu.
         ((member pressed des-keys))
         ;; Selection matches an association: return it.
         ((let ((entry (assoc current table)))
            (and entry (throw 'exit entry))))
         ;; Selection matches a special entry: return the
         ;; selection prefix.
         ((assoc current specials) (throw 'exit current))
         (t (error "No entry available")))))))
    (when buffer (kill-buffer buffer))))))
  (advice-add 'org-mks :override #'org-mks-pretty)
  (setq +org-capture-uni-units (split-string (f-read-text "~/.org/.uni-units")))
  (add-transient-hook! 'org-capture-select-template
    (setq org-capture-templates
          (doct `((,(format "%s\tPersonal todo" (all-the-icons-octicon "checklist" :face 'all-the-icons-green :v-adjust 0.01))
                   :keys "t"
                   :file +org-capture-todo-file
                   :prepend t
                   :headline "Inbox"
                   :type entry
                   :template ("* TODO %?"
                              "%i %a")
                   )
                  (,(format "%s\tPersonal note" (all-the-icons-faicon "sticky-note-o" :face 'all-the-icons-green :v-adjust 0.01))
                   :keys "n"
                   :file +org-capture-todo-file
                   :prepend t
                   :headline "Inbox"
                   :type entry
                   :template ("* %?"
                              "%i %a")
                   )
                  (,(format "%s\tUniversity" (all-the-icons-faicon "graduation-cap" :face 'all-the-icons-purple :v-adjust 0.01))
                   :keys "u"
                   :file +org-capture-todo-file
                   :headline "University"
                   :unit-prompt ,(format "%%^{Unit|%s}" (string-join +org-capture-uni-units "|"))
                   :prepend t
                   :type entry
                   :children ((,(format "%s\tTest" (all-the-icons-material "timer" :face 'all-the-icons-red :v-adjust 0.01))
                               :keys "t"
                               :template ("* TODO [#C] %{unit-prompt} %? :uni:tests:"
                                          "SCHEDULED: %^{Test date:}T"
                                          "%i %a"))
                              (,(format "%s\tAssignment" (all-the-icons-material "library_books" :face 'all-the-icons-orange :v-adjust 0.01))
                               :keys "a"
                               :template ("* TODO [#B] %{unit-prompt} %? :uni:assignments:"
                                          "DEADLINE: %^{Due date:}T"
                                          "%i %a"))
                              (,(format "%s\tLecture" (all-the-icons-fileicon "keynote" :face 'all-the-icons-orange :v-adjust 0.01))
                               :keys "l"
                               :template ("* TODO [#C] %{unit-prompt} %? :uni:lecture:"
                                          "%i %a"))
                              (,(format "%s\tMiscellaneous task" (all-the-icons-faicon "list" :face 'all-the-icons-yellow :v-adjust 0.01))
                               :keys "u"
                               :template ("* TODO [#D] %{unit-prompt} %? :uni:"
                                          "%i %a"))))
                  (,(format "%s\tEmail" (all-the-icons-faicon "envelope" :face 'all-the-icons-blue :v-adjust 0.01))
                   :keys "e"
                   :file +org-capture-todo-file
                   :prepend t
                   :headline "Inbox"
                   :type entry
                   :template ("* TODO %? :email:"
                              "%i %a"))
                  (,(format "%s\tInteresting" (all-the-icons-faicon "eye" :face 'all-the-icons-lcyan :v-adjust 0.01))
                   :keys "i"
                   :file +org-capture-todo-file
                   :prepend t
                   :headline "Interesting"
                   :type entry
                   :template ("* [ ] %{desc}%? :%{i-type}:"
                              "%i %a")
                   :children ((,(format "%s\tWebpage" (all-the-icons-faicon "globe" :face 'all-the-icons-green :v-adjust 0.01))
                               :keys "w"
                               :desc "%(org-cliplink-capture) "
                               :i-type "read:web"
                               )
                              (,(format "%s\tArticle" (all-the-icons-octicon "file-text" :face 'all-the-icons-yellow :v-adjust 0.01))
                               :keys "a"
                               :desc ""
                               :i-type "read:reaserch"
                               )
                              (,(format "%s\tInformation" (all-the-icons-faicon "info-circle" :face 'all-the-icons-blue :v-adjust 0.01))
                               :keys "i"
                               :desc ""
                               :i-type "read:info"
                               )
                              (,(format "%s\tIdea" (all-the-icons-material "bubble_chart" :face 'all-the-icons-silver :v-adjust 0.01))
                               :keys "I"
                               :desc ""
                               :i-type "idea"
                               )))
                  (,(format "%s\tTasks" (all-the-icons-octicon "inbox" :face 'all-the-icons-yellow :v-adjust 0.01))
                   :keys "k"
                   :file +org-capture-todo-file
                   :prepend t
                   :headline "Tasks"
                   :type entry
                   :template ("* TODO %? %^G%{extra}"
                              "%i")
                   :children ((,(format "%s\tGeneral Task" (all-the-icons-octicon "inbox" :face 'all-the-icons-yellow :v-adjust 0.01))
                               :keys "k"
                               :extra ""
                               )
                              (,(format "%s\tTask with deadline" (all-the-icons-material "timer" :face 'all-the-icons-orange :v-adjust -0.1))
                               :keys "d"
                               :extra "\nDEADLINE: %^{Deadline:}t"
                               )
                              (,(format "%s\tScheduled Task" (all-the-icons-octicon "calendar" :face 'all-the-icons-orange :v-adjust 0.01))
                               :keys "s"
                               :extra "\nSCHEDULED: %^{Start time:}t"
                               )
                              ))
                  (,(format "%s\tProject" (all-the-icons-octicon "repo" :face 'all-the-icons-silver :v-adjust 0.01))
                   :keys "p"
                   :prepend t
                   :type entry
                   :headline "Inbox"
                   :template ("* %{time-or-todo} %?"
                              "%i"
                              "%a")
                   :file ""
                   :custom (:time-or-todo "")
                   :children ((,(format "%s\tProject-local todo" (all-the-icons-octicon "checklist" :face 'all-the-icons-green :v-adjust 0.01))
                               :keys "t"
                               :time-or-todo "TODO"
                               :file +org-capture-project-todo-file)
                              (,(format "%s\tProject-local note" (all-the-icons-faicon "sticky-note" :face 'all-the-icons-yellow :v-adjust 0.01))
                               :keys "n"
                               :time-or-todo "%U"
                               :file +org-capture-project-notes-file)
                              (,(format "%s\tProject-local changelog" (all-the-icons-faicon "list" :face 'all-the-icons-blue :v-adjust 0.01))
                               :keys "c"
                               :time-or-todo "%U"
                               :heading "Unreleased"
                               :file +org-capture-project-changelog-file))
                   )
                  ("\tCentralised project templates"
                   :keys "o"
                   :type entry
                   :prepend t
                   :template ("* %{time-or-todo} %?"
                              "%i"
                              "%a")
                   :children (("Project todo"
                               :keys "t"
                               :prepend nil
                               :time-or-todo "TODO"
                               :heading "Tasks"
                               :file +org-capture-central-project-todo-file)
                              ("Project note"
                               :keys "n"
                               :time-or-todo "%U"
                               :heading "Notes"
                               :file +org-capture-central-project-notes-file)
                              ("Project changelog"
                               :keys "c"
                               :time-or-todo "%U"
                               :heading "Unreleased"
                               :file +org-capture-central-project-changelog-file))
                   ))))))
;; Capture:1 ends here

;; [[file:~/.config/doom/config.org::*Capture][Capture:3]]
(setf (alist-get 'height +org-capture-frame-parameters) 15)
      ;; (alist-get 'name +org-capture-frame-parameters) "❖ Capture") ;; ATM hardcoded in other places, so changing breaks stuff
(setq +org-capture-fn
      (lambda ()
        (interactive)
        (set-window-parameter nil 'mode-line-format 'none)
        (org-capture)))
;; Capture:3 ends here

;; [[file:~/.config/doom/config.org::*Nicer%20~org-return~][Nicer ~org-return~:1]]
(after! org
  (defun unpackaged/org-element-descendant-of (type element)
    "Return non-nil if ELEMENT is a descendant of TYPE.
TYPE should be an element type, like `item' or `paragraph'.
ELEMENT should be a list like that returned by `org-element-context'."
    ;; MAYBE: Use `org-element-lineage'.
    (when-let* ((parent (org-element-property :parent element)))
      (or (eq type (car parent))
          (unpackaged/org-element-descendant-of type parent))))

;;;###autoload
  (defun unpackaged/org-return-dwim (&optional default)
    "A helpful replacement for `org-return-indent'.  With prefix, call `org-return-indent'.

On headings, move point to position after entry content.  In
lists, insert a new item or end the list, with checkbox if
appropriate.  In tables, insert a new row or end the table."
    ;; Inspired by John Kitchin: http://kitchingroup.cheme.cmu.edu/blog/2017/04/09/A-better-return-in-org-mode/
    (interactive "P")
    (if default
        (org-return t)
      (cond
       ;; Act depending on context around point.

       ;; NOTE: I prefer RET to not follow links, but by uncommenting this block, links will be
       ;; followed.

       ;; ((eq 'link (car (org-element-context)))
       ;;  ;; Link: Open it.
       ;;  (org-open-at-point-global))

       ((org-at-heading-p)
        ;; Heading: Move to position after entry content.
        ;; NOTE: This is probably the most interesting feature of this function.
        (let ((heading-start (org-entry-beginning-position)))
          (goto-char (org-entry-end-position))
          (cond ((and (org-at-heading-p)
                      (= heading-start (org-entry-beginning-position)))
                 ;; Entry ends on its heading; add newline after
                 (end-of-line)
                 (insert "\n\n"))
                (t
                 ;; Entry ends after its heading; back up
                 (forward-line -1)
                 (end-of-line)
                 (when (org-at-heading-p)
                   ;; At the same heading
                   (forward-line)
                   (insert "\n")
                   (forward-line -1))
                 ;; FIXME: looking-back is supposed to be called with more arguments.
                 (while (not (looking-back (rx (repeat 3 (seq (optional blank) "\n")))))
                   (insert "\n"))
                 (forward-line -1)))))

       ((org-at-item-checkbox-p)
        ;; Checkbox: Insert new item with checkbox.
        (org-insert-todo-heading nil))

       ((org-in-item-p)
        ;; Plain list.  Yes, this gets a little complicated...
        (let ((context (org-element-context)))
          (if (or (eq 'plain-list (car context))  ; First item in list
                  (and (eq 'item (car context))
                       (not (eq (org-element-property :contents-begin context)
                                (org-element-property :contents-end context))))
                  (unpackaged/org-element-descendant-of 'item context))  ; Element in list item, e.g. a link
              ;; Non-empty item: Add new item.
              (org-insert-item)
            ;; Empty item: Close the list.
            ;; TODO: Do this with org functions rather than operating on the text. Can't seem to find the right function.
            (delete-region (line-beginning-position) (line-end-position))
            (insert "\n"))))

       ((when (fboundp 'org-inlinetask-in-task-p)
          (org-inlinetask-in-task-p))
        ;; Inline task: Don't insert a new heading.
        (org-return t))

       ((org-at-table-p)
        (cond ((save-excursion
                 (beginning-of-line)
                 ;; See `org-table-next-field'.
                 (cl-loop with end = (line-end-position)
                          for cell = (org-element-table-cell-parser)
                          always (equal (org-element-property :contents-begin cell)
                                        (org-element-property :contents-end cell))
                          while (re-search-forward "|" end t)))
               ;; Empty row: end the table.
               (delete-region (line-beginning-position) (line-end-position))
               (org-return t))
              (t
               ;; Non-empty row: call `org-return-indent'.
               (org-return t))))
       (t
        ;; All other cases: call `org-return-indent'.
        (org-return t)))))
  (advice-add #'org-return-indent :override #'unpackaged/org-return-dwim))
;; Nicer ~org-return~:1 ends here

;; [[file:~/.config/doom/config.org::*Font%20Display][Font Display:1]]
(add-hook! 'org-mode-hook #'+org-pretty-mode #'mixed-pitch-mode)
;; Font Display:1 ends here

;; [[file:~/.config/doom/config.org::*Font%20Display][Font Display:2]]
(setq global-org-pretty-table-mode t)
;; Font Display:2 ends here

;; [[file:~/.config/doom/config.org::*Font%20Display][Font Display:3]]
(custom-set-faces!
  '(outline-1 :weight extra-bold :height 1.2)
  '(outline-2 :weight bold :height 1.12)
  '(outline-3 :weight bold :height 1.1)
  '(outline-4 :weight semi-bold :height 1.08)
  '(outline-5 :weight semi-bold :height 1.05)
  '(outline-6 :weight semi-bold :height 1.02)
  '(outline-8 :weight semi-bold)
  '(outline-9 :weight semi-bold))
;; Font Display:3 ends here

;; [[file:~/.config/doom/config.org::*Symbols][Symbols:1]]
(use-package! org-superstar ; "prettier" bullets
  :hook (org-mode . org-superstar-mode))

(use-package org-fancy-priorities
  :diminish
  :defines org-fancy-priorities-list
  :hook (org-mode . org-fancy-priorities-mode)
  :config
  (unless (char-displayable-p ?❗)
    (setq org-fancy-priorities-list '("HIGH" "MID" "LOW" "OPTIONAL"))))

(after! org
  (use-package org-pretty-tags
  :config
   (setq org-pretty-tags-surrogate-strings
         '(("uni" . "🎓")
           ("assignment" . "📓")
           ("email" . "🖂")
           ("read" . "🕮")
           ("article" . "🖹")
           ("web" . "🌐")
           ("info" . "🛈")
           ("issue" . "🐛")
           ("emacs" . "ɛ")))
   (org-pretty-tags-global-mode)))

(after! org
  (setq org-ellipsis " ▾ "
        org-superstar-headline-bullets-list '("◉" "○" "✸" "✿" "✤" "✜" "◆" "▶")
        org-fancy-priorities-list '((?A . "⚑")  ;; ASAP
                                    (?B . "⬆")  ;; High
                                    (?C . "■")  ;; Medium
                                    (?D . "⬇")  ;; Low
                                    (?E . "❓")) ;; Optional
        org-priority-faces '((?A . all-the-icons-red)
                             (?B . all-the-icons-orange)
                             (?C . all-the-icons-yellow)
                             (?D . all-the-icons-green)
                             (?E . all-the-icons-blue))
        org-priority-highest ?A
        org-priority-lowest ?E
        ;; org-superstar-headline-bullets-list '("Ⅰ" "Ⅱ" "Ⅲ" "Ⅳ" "Ⅴ" "Ⅵ" "Ⅶ" "Ⅷ" "Ⅸ" "Ⅹ")
        ))
;; Symbols:1 ends here

;; [[file:~/.config/doom/config.org::*Symbols][Symbols:2]]
(after! org
  (appendq! +pretty-code-symbols
            '(:checkbox    "☐"
              :pending     "◼"
              :checkedbox  "☑"
              :results     "🠶"
              :property    "☸"
              :properties  "⚙"
              :end         "∎"
              :options     "⌥"
              :title       "𝙏"
              :author      "𝘼"
              :date        "𝘿"
              :begin_quote "❮"
              :end_quote   "❯"
              :em_dash     "—"))
  (set-pretty-symbols! 'org-mode
    :merge t
    :checkbox    "[ ]"
    :pending     "[-]"
    :checkedbox  "[X]"
    :results     "#+RESULTS:"
    :property    "#+PROPERTY:"
    :property    ":PROPERTIES:"
    :end         ":END:"
    :options     "#+OPTIONS:"
    :title       "#+TITLE:"
    :author      "#+AUTHOR:"
    :date        "#+DATE:"
    :begin_quote "#+BEGIN_QUOTE"
    :end_quote   "#+END_QUOTE"
    :em_dash     "---")
)
(plist-put +pretty-code-symbols :name "⁍") ; or › could be good?
;; Symbols:2 ends here

;; [[file:~/.config/doom/config.org::*Symbols][Symbols:3]]
(add-hook 'org-mode-hook 'org-fragtog-mode)
;; Symbols:3 ends here

;; [[file:~/.config/doom/config.org::*LaTeX%20Fragments][LaTeX Fragments:1]]
(setq org-format-latex-header "\\documentclass{article}
\\usepackage[usenames]{color}

\\usepackage[T1]{fontenc}
\\usepackage{mathtools}
\\usepackage{textcomp,amssymb}
\\usepackage[makeroom]{cancel}

\\pagestyle{empty}             % do not remove
% The settings below are copied from fullpage.sty
\\setlength{\\textwidth}{\\paperwidth}
\\addtolength{\\textwidth}{-3cm}
\\setlength{\\oddsidemargin}{1.5cm}
\\addtolength{\\oddsidemargin}{-2.54cm}
\\setlength{\\evensidemargin}{\\oddsidemargin}
\\setlength{\\textheight}{\\paperheight}
\\addtolength{\\textheight}{-\\headheight}
\\addtolength{\\textheight}{-\\headsep}
\\addtolength{\\textheight}{-\\footskip}
\\addtolength{\\textheight}{-3cm}
\\setlength{\\topmargin}{1.5cm}
\\addtolength{\\topmargin}{-2.54cm}
% my custom stuff
\\usepackage{arev}
\\usepackage{arevmath}")
;; LaTeX Fragments:1 ends here

;; [[file:~/.config/doom/config.org::*LaTeX%20Fragments][LaTeX Fragments:2]]
(after! org
;; make background of fragments transparent
;; (let ((dvipng--plist (alist-get 'dvipng org-preview-latex-process-alist)))
;;   (plist-put dvipng--plist :use-xcolor t)
;;   (plist-put dvipng--plist :image-converter '("dvipng -D %D -bg 'transparent' -T tight -o %O %f")))
  (add-hook! 'doom-load-theme-hook
    (defun +org-refresh-latex-background ()
      (plist-put! org-format-latex-options
                  :background
                  (face-attribute (or (cadr (assq 'default face-remapping-alist))
                                      'default)
                                  :background nil t))))
)
;; LaTeX Fragments:2 ends here

;; [[file:~/.config/doom/config.org::*LaTeX%20Fragments][LaTeX Fragments:3]]
(after! org
  (add-to-list 'org-latex-regexps '("\\ce" "^\\\\ce{\\(?:[^\000{}]\\|{[^\000}]+?}\\)}" 0 nil)))
;; LaTeX Fragments:3 ends here

;; [[file:~/.config/doom/config.org::*Stolen%20from%20%5B%5Bhttps://github.com/jkitchin/scimax%5D%5Bscimax%5D%5D%20(semi-working%20right%20now)][Stolen from [[https://github.com/jkitchin/scimax][scimax]] (semi-working right now):1]]
(after! org
  (defun scimax-org-latex-fragment-justify (justification)
    "Justify the latex fragment at point with JUSTIFICATION.
JUSTIFICATION is a symbol for 'left, 'center or 'right."
    (interactive
     (list (intern-soft
            (completing-read "Justification (left): " '(left center right)
                             nil t nil nil 'left))))
    (let* ((ov (ov-at))
           (beg (ov-beg ov))
           (end (ov-end ov))
           (shift (- beg (line-beginning-position)))
           (img (overlay-get ov 'display))
           (img (and (and img (consp img) (eq (car img) 'image)
                          (image-type-available-p (plist-get (cdr img) :type)))
                     img))
           space-left offset)
      (when (and img
                 ;; This means the equation is at the start of the line
                 (= beg (line-beginning-position))
                 (or
                  (string= "" (s-trim (buffer-substring end (line-end-position))))
                  (eq 'latex-environment (car (org-element-context)))))
        (setq space-left (- (window-max-chars-per-line) (car (image-size img)))
              offset (floor (cond
                             ((eq justification 'center)
                              (- (/ space-left 2) shift))
                             ((eq justification 'right)
                              (- space-left shift))
                             (t
                              0))))
        (when (>= offset 0)
          (overlay-put ov 'before-string (make-string offset ?\ ))))))

  (defun scimax-org-latex-fragment-justify-advice (beg end image imagetype)
    "After advice function to justify fragments."
    (scimax-org-latex-fragment-justify (or (plist-get org-format-latex-options :justify) 'left)))


  (defun scimax-toggle-latex-fragment-justification ()
    "Toggle if LaTeX fragment justification options can be used."
    (interactive)
    (if (not (get 'scimax-org-latex-fragment-justify-advice 'enabled))
        (progn
          (advice-add 'org--format-latex-make-overlay :after 'scimax-org-latex-fragment-justify-advice)
          (put 'scimax-org-latex-fragment-justify-advice 'enabled t)
          (message "Latex fragment justification enabled"))
      (advice-remove 'org--format-latex-make-overlay 'scimax-org-latex-fragment-justify-advice)
      (put 'scimax-org-latex-fragment-justify-advice 'enabled nil)
      (message "Latex fragment justification disabled"))))
;; Stolen from [[https://github.com/jkitchin/scimax][scimax]] (semi-working right now):1 ends here

;; [[file:~/.config/doom/config.org::*Stolen%20from%20%5B%5Bhttps://github.com/jkitchin/scimax%5D%5Bscimax%5D%5D%20(semi-working%20right%20now)][Stolen from [[https://github.com/jkitchin/scimax][scimax]] (semi-working right now):2]]
;; Numbered equations all have (1) as the number for fragments with vanilla
;; org-mode. This code injects the correct numbers into the previews so they
;; look good.
(after! org
  (defun scimax-org-renumber-environment (orig-func &rest args)
    "A function to inject numbers in LaTeX fragment previews."
    (let ((results '())
          (counter -1)
          (numberp))
      (setq results (loop for (begin .  env) in
                          (org-element-map (org-element-parse-buffer) 'latex-environment
                            (lambda (env)
                              (cons
                               (org-element-property :begin env)
                               (org-element-property :value env))))
                          collect
                          (cond
                           ((and (string-match "\\\\begin{equation}" env)
                                 (not (string-match "\\\\tag{" env)))
                            (incf counter)
                            (cons begin counter))
                           ((string-match "\\\\begin{align}" env)
                            (prog2
                                (incf counter)
                                (cons begin counter)
                              (with-temp-buffer
                                (insert env)
                                (goto-char (point-min))
                                ;; \\ is used for a new line. Each one leads to a number
                                (incf counter (count-matches "\\\\$"))
                                ;; unless there are nonumbers.
                                (goto-char (point-min))
                                (decf counter (count-matches "\\nonumber")))))
                           (t
                            (cons begin nil)))))

      (when (setq numberp (cdr (assoc (point) results)))
        (setf (car args)
              (concat
               (format "\\setcounter{equation}{%s}\n" numberp)
               (car args)))))

    (apply orig-func args))


  (defun scimax-toggle-latex-equation-numbering ()
    "Toggle whether LaTeX fragments are numbered."
    (interactive)
    (if (not (get 'scimax-org-renumber-environment 'enabled))
        (progn
          (advice-add 'org-create-formula-image :around #'scimax-org-renumber-environment)
          (put 'scimax-org-renumber-environment 'enabled t)
          (message "Latex numbering enabled"))
      (advice-remove 'org-create-formula-image #'scimax-org-renumber-environment)
      (put 'scimax-org-renumber-environment 'enabled nil)
      (message "Latex numbering disabled.")))

  (advice-add 'org-create-formula-image :around #'scimax-org-renumber-environment)
  (put 'scimax-org-renumber-environment 'enabled t))
;; Stolen from [[https://github.com/jkitchin/scimax][scimax]] (semi-working right now):2 ends here

;; [[file:~/.config/doom/config.org::*Exporting%20(general)][Exporting (general):1]]
(after! org (setq org-export-headline-levels 5)) ; I like nesting
;; Exporting (general):1 ends here

;; [[file:~/.config/doom/config.org::*Custom%20CSS/JS][Custom CSS/JS:2]]
(defun my-org-inline-css-hook (exporter)
  "Insert custom inline css to automatically set the
   background of code to whatever theme I'm using's background"
  (when (eq exporter 'html)
      (setq
       org-html-head-extra
       (concat
        org-html-head-extra
        (format "
<style type=\"text/css\">
   :root {
      --theme-bg: %s;
      --theme-bg-alt: %s;
      --theme-base0: %s;
      --theme-base1: %s;
      --theme-base2: %s;
      --theme-base3: %s;
      --theme-base4: %s;
      --theme-base5: %s;
      --theme-base6: %s;
      --theme-base7: %s;
      --theme-base8: %s;
      --theme-fg: %s;
      --theme-fg-alt: %s;
      --theme-grey: %s;
      --theme-red: %s;
      --theme-orange: %s;
      --theme-green: %s;
      --theme-teal: %s;
      --theme-yellow: %s;
      --theme-blue: %s;
      --theme-dark-blue: %s;
      --theme-magenta: %s;
      --theme-violet: %s;
      --theme-cyan: %s;
      --theme-dark-cyan: %s;
   }
</style>"
       (doom-color 'bg)
       (doom-color 'bg-alt)
       (doom-color 'base0)
       (doom-color 'base1)
       (doom-color 'base2)
       (doom-color 'base3)
       (doom-color 'base4)
       (doom-color 'base5)
       (doom-color 'base6)
       (doom-color 'base7)
       (doom-color 'base8)
       (doom-color 'fg)
       (doom-color 'fg-alt)
       (doom-color 'grey)
       (doom-color 'red)
       (doom-color 'orange)
       (doom-color 'green)
       (doom-color 'teal)
       (doom-color 'yellow)
       (doom-color 'blue)
       (doom-color 'dark-blue)
       (doom-color 'magenta)
       (doom-color 'violet)
       (doom-color 'cyan)
       (doom-color 'dark-cyan))
        "
<link rel='stylesheet' type='text/css' href='https://fniessen.github.io/org-html-themes/styles/readtheorg/css/htmlize.css'/>
<link rel='stylesheet' type='text/css' href='https://fniessen.github.io/org-html-themes/styles/readtheorg/css/readtheorg.css'/>

<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js'></script>
<script type='text/javascript' src='https://fniessen.github.io/org-html-themes/styles/lib/js/jquery.stickytableheaders.min.js'></script>
<script type='text/javascript' src='https://fniessen.github.io/org-html-themes/styles/readtheorg/js/readtheorg.js'></script>

<style>
   pre.src {
     background-color: var(--theme-bg);
     color: var(--theme-fg);
     scrollbar-color:#bbb6#9992;
     scrollbar-width: thin;
     margin: 0;
     border: none;
   }
   div.org-src-container {
     border-radius: 12px;
     overflow: hidden;
     margin-bottom: 24px;
     margin-top: 1px;
     border: 1px solid#e1e4e5;
   }
   pre.src::before {
     background-color:#6666;
     top: 8px;
     border: none;
     border-radius: 5px;
     line-height: 1;
     border: 2px solid var(--theme-bg);
     opacity: 0;
     transition: opacity 200ms;
   }
   pre.src:hover::before { opacity: 1; }
   pre.src:active::before { opacity: 0; }

   pre.example {
     border-radius: 12px;
     background: var(--theme-bg-alt);
     color: var(--theme-fg);
   }

   code {
     border-radius: 5px;
     background:#e8e8e8;
     font-size: 80%;
   }

   kbd {
     display: inline-block;
     padding: 3px 5px;
     font: 80% SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace;
     line-height: normal;
     line-height: 10px;
     color:#444d56;
     vertical-align: middle;
     background-color:#fafbfc;
     border: 1px solid#d1d5da;
     border-radius: 3px;
     box-shadow: inset 0 -1px 0#d1d5da;
   }

   table {
     max-width: 100%;
     overflow-x: auto;
     display: block;
     border-top: none;
   }

   a {
       text-decoration: none;
       background-image: linear-gradient(#d8dce9, #d8dce9);
       background-position: 0% 100%;
       background-repeat: no-repeat;
       background-size: 0% 2px;
       transition: background-size .3s;
   }
   \#table-of-contents a {
       background-image: none;
   }
   a:hover, a:focus {
       background-size: 100% 2px;
   }
   a[href^='#'] { font-variant-numeric: oldstyle-nums; }
   a[href^='#']:visited { color:#3091d1; }

   li .checkbox {
       display: inline-block;
       width: 0.9em;
       height: 0.9em;
       border-radius: 3px;
       margin: 3px;
       top: 4px;
       position: relative;
   }
   li.on > .checkbox { background: var(--theme-green); box-shadow: 0 0 2px var(--theme-green); }
   li.trans > .checkbox { background: var(--theme-orange); box-shadow: 0 0 2px var(--theme-orange); }
   li.off > .checkbox { background: var(--theme-red); box-shadow: 0 0 2px var(--theme-red); }
   li.on > .checkbox::after {
     content: '';
     height: 0.45em;
     width: 0.225em;
     -webkit-transform-origin: left top;
     transform-origin: left top;
     transform: scaleX(-1) rotate(135deg);
     border-right: 2.8px solid#fff;
     border-top: 2.8px solid#fff;
     opacity: 0.9;
     left: 0.10em;
     top: 0.45em;
     position: absolute;
   }
   li.trans > .checkbox::after {
       content: '';
       font-weight: bold;
       font-size: 1.6em;
       position: absolute;
       top: 0.23em;
       left: 0.09em;
       width: 0.35em;
       height: 0.12em;
       background:#fff;
       opacity: 0.9;
       border-radius: 0.1em;
   }
   li.off > .checkbox::after {
    content: '✖';
    color:#fff;
    opacity: 0.9;
    position: relative;
    top: -0.40rem;
    left: 0.17em;
    font-size: 0.75em;
  }

   span.timestamp {
       color: #003280;
       background: #647CFF44;
       border-radius: 3px;
       line-height: 1.25;
   }

   \#table-of-contents { overflow-y: auto; }
   blockquote p { margin: 8px 0px 16px 0px; }
   \#postamble .date { color: var(--theme-green); }

   ::-webkit-scrollbar { width: 10px; height: 8px; }
   ::-webkit-scrollbar-track { background:#9992; }
   ::-webkit-scrollbar-thumb { background:#ccc; border-radius: 10px; }
   ::-webkit-scrollbar-thumb:hover { background:#888; }
</style>
"
        ))))

(add-hook 'org-export-before-processing-hook 'my-org-inline-css-hook)
;; Custom CSS/JS:2 ends here

;; [[file:~/.config/doom/config.org::*Make%20verbatim%20different%20to%20code][Make verbatim different to code:1]]
(setq org-html-text-markup-alist
      '((bold . "<b>%s</b>")
        (code . "<code>%s</code>")
        (italic . "<i>%s</i>")
        (strike-through . "<del>%s</del>")
        (underline . "<span class=\"underline\">%s</span>")
        (verbatim . "<kbd>%s</kbd>")))
;; Make verbatim different to code:1 ends here

;; [[file:~/.config/doom/config.org::*Change%20checkbox%20type][Change checkbox type:1]]
(after! org
(appendq! org-html-checkbox-types '((html-span .
	  ((on . "<span class='checkbox'></span>")
	  (off . "<span class='checkbox'></span>")
	  (trans . "<span class='checkbox'></span>")))))
(setq org-html-checkbox-type 'html-span))
;; Change checkbox type:1 ends here

;; [[file:~/.config/doom/config.org::*LaTeX%20Rendering][LaTeX Rendering:1]]
;; (setq-default org-html-with-latex `dvisvgm)
;; LaTeX Rendering:1 ends here

;; [[file:~/.config/doom/config.org::*Exporting%20to%20LaTeX][Exporting to LaTeX:1]]
;; TODO make this /only/ apply to text (i.e. not URL)
(after! org
  (defun tec/org-export-latex-filter-acronym (text backend info)
    (when (org-export-derived-backend-p backend 'latex)
      (let ((case-fold-search nil))
        (replace-regexp-in-string
         ";?\\b[A-Z][A-Z]+s?"
         (lambda (all-caps-str)
           ; only \acr if str doesn't start with ";"
           (if (equal (aref all-caps-str 0) 59) (substring all-caps-str 1)
             (if (equal (aref all-caps-str (- (length all-caps-str) 1)) ?s)
                 (concat "\\textls*[70]{\\textsc{" (s-downcase (substring all-caps-str 0 -1)) "}\\protect\\scalebox{.91}[.84]{s}}")
               (concat "\\textls*[70]{\\textsc{" (s-downcase all-caps-str) "}}"))))
         text t t))))

  (add-to-list 'org-export-filter-plain-text-functions
               'tec/org-export-latex-filter-acronym)
  (add-to-list 'org-export-filter-headline-functions
               'tec/org-export-latex-filter-acronym))
;; Exporting to LaTeX:1 ends here

;; [[file:~/.config/doom/config.org::*Exporting%20to%20LaTeX][Exporting to LaTeX:2]]
(after! ox-latex
  (add-to-list 'org-latex-classes
               '("fancy-article"
               "\\documentclass{scrartcl}\n\
\\usepackage[T1]{fontenc}\n\
\\usepackage[osf,largesc,helvratio=0.9]{newpxtext}\n\
\\usepackage[scale=0.92]{sourcecodepro}\n\
\\usepackage[varbb]{newpxmath}\n\
\\usepackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,factor=2000]{microtype}\n\
\\usepackage{xcolor}\n\
\\setlength{\\parskip}{\\baselineskip}\n\
\\setlength{\\parindent}{0pt}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (add-to-list 'org-latex-classes
               '("blank"
               "[NO-DEFAULT-PACKAGES]
               [NO-PACKAGES]
               [EXTRA]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (add-to-list 'org-latex-classes
               '("bmc-article"
               "\\documentclass[article,code,maths]{bmc}
               [NO-DEFAULT-PACKAGES]
               [NO-PACKAGES]
               [EXTRA]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (add-to-list 'org-latex-classes
               '("bmc"
               "\\documentclass[code,maths]{bmc}
               [NO-DEFAULT-PACKAGES]
               [NO-PACKAGES]
               [EXTRA]"
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  (setq org-latex-default-class "fancy-article")

  (add-to-list 'org-latex-packages-alist '("" "minted"))
  (setq org-latex-listings 'minted)
  (setq org-latex-minted-options
        '(("frame" "lines")
          ("fontsize" "\\scriptsize")
          ("linenos" "")
          ("breakanywhere" "true")
          ("breakautoindent" "true")
          ("breaklines" "true")
          ("autogobble" "true")
          ("obeytabs" "true")
          ("python3" "true")
          ("breakbefore" "\\\\\\.+")
          ("breakafter" "\\,")
          ("style" "autumn")
          ("breaksymbol" "\\tiny\\ensuremath{\\hookrightarrow}")
          ("breakanywheresymbolpre" "\\,\\footnotesize\\ensuremath{{}_{\\rfloor}}")
          ("breakbeforesymbolpre" "\\,\\footnotesize\\ensuremath{{}_{\\rfloor}}")
          ("breakaftersymbolpre" "\\,\\footnotesize\\ensuremath{{}_{\\rfloor}}")))

  (setq org-latex-hyperref-template "\\hypersetup{
  pdfauthor={%a},
  pdftitle={%t},
  pdfkeywords={%k},
  pdfsubject={%d},
  pdfcreator={%c},
  pdflang={%L},
  breaklinks=true,
  colorlinks=true,
  linkcolor=,
  urlcolor=blue!70!green,
  citecolor=green!60!blue\n}
\\urlstyle{same}\n")
  (setq org-latex-pdf-process
        '("latexmk -shell-escape -interaction=nonstopmode -f -pdf -output-directory=%o %f")))
;; Exporting to LaTeX:2 ends here

;; [[file:~/.config/doom/config.org::*Exporting%20to%20Beamer][Exporting to Beamer:1]]
(setq org-beamer-theme "[progressbar=foot]metropolis")
;; Exporting to Beamer:1 ends here

;; [[file:~/.config/doom/config.org::*Exporting%20to%20Beamer][Exporting to Beamer:2]]

;; Exporting to Beamer:2 ends here

;; [[file:~/.config/doom/config.org::*Exporting%20to%20Beamer][Exporting to Beamer:3]]
(setq org-beamer-frame-level 2)
;; Exporting to Beamer:3 ends here

;; [[file:~/.config/doom/config.org::*Exporting%20to%20GFM][Exporting to GFM:1]]
(eval-after-load "org"
  '(require 'ox-gfm nil t))
;; Exporting to GFM:1 ends here

;; [[file:~/.config/doom/config.org::*Babel][Babel:1]]
(setq org-babel-python-command "python3")
;; Babel:1 ends here

;; [[file:~/.config/doom/config.org::*Babel][Babel:2]]
(defun tec-org-python ()
  (if (eq major-mode 'python-mode)
   (progn (anaconda-mode t)
          (company-mode t)))
  )
(add-hook 'org-src-mode-hook 'tec-org-python)
;; Babel:2 ends here

;; [[file:~/.config/doom/config.org::*ESS][ESS:1]]
(setq ess-eval-visibly 'nowait)
;; ESS:1 ends here

;; [[file:~/.config/doom/config.org::*ESS][ESS:2]]
(setq ess-R-font-lock-keywords '((ess-R-fl-keyword:keywords . t)
 (ess-R-fl-keyword:constants . t)
 (ess-R-fl-keyword:modifiers . t)
 (ess-R-fl-keyword:fun-defs . t)
 (ess-R-fl-keyword:assign-ops . t)
 (ess-R-fl-keyword:%op% . t)
 (ess-fl-keyword:fun-calls . t)
 (ess-fl-keyword:numbers . t)
 (ess-fl-keyword:operators . t)
 (ess-fl-keyword:delimiters . t)
 (ess-fl-keyword:= . t)
 (ess-R-fl-keyword:F&T . t)))
;; ESS:2 ends here

;; [[file:~/.config/doom/config.org::*Compilation][Compilation:1]]
(setq TeX-save-query nil
      TeX-show-compilation t
      TeX-command-extra-options "-shell-escape")
(after! latex
  (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t)))
;; Compilation:1 ends here

;; [[file:~/.config/doom/config.org::*Snippet%20value][Snippet value:2]]
(setq tec/yas-latex-template-preamble "
\\usepackage[pdfa,unicode=true,hidelinks]{hyperref}

\\usepackage[dvipsnames,svgnames,table,hyperref]{xcolor}
\\renewcommand{\\UrlFont}{\\ttfamily\\small}

\\usepackage[a-2b]{pdfx} % why not be archival

\\usepackage[T1]{fontenc}
\\usepackage[osf,helvratio=0.9]{newpxtext} % pallatino
\\usepackage[scale=0.92]{sourcecodepro}

\\usepackage[varbb]{newpxmath}
\\usepackage{mathtools}
\\usepackage{amssymb}

\\usepackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,factor=2000]{microtype}
% microtype makes text look nicer

\\usepackage{graphicx} % include graphics
\\usepackage{grffile} % fix allowed graphicx filenames

\\usepackage{booktabs} % nice table rules
")

(defun tec/yas-latex-get-class-choice ()
  "Prompt user for LaTeX class choice"
  (setq tec/yas-latex-class-choice (ivy-read "Select document class: " '("article" "scrartcl" "bmc") :def "bmc")))

(defun tec/yas-latex-preamble-if ()
  "Based on class choice prompt for insertion of default preamble"
    (if (equal tec/yas-latex-class-choice "bmc") 'nil
             (eq (read-char-choice "Include default preamble? [Type y/n]" '(?y ?n)) ?y)))
;; Snippet value:2 ends here

;; [[file:~/.config/doom/config.org::*Editor%20visuals][Editor visuals:1]]
(add-hook 'LaTeX-mode-hook #'mixed-pitch-mode)
;; Editor visuals:1 ends here

;; [[file:~/.config/doom/config.org::*Editor%20visuals][Editor visuals:2]]
(after! latex
  (setcar (assoc "⋆" LaTeX-fold-math-spec-list) "★")) ;; make \star bigger

(setq TeX-fold-math-spec-list
      `(;; missing/better symbols
        ("≤" ("le"))
        ("≥" ("ge"))
        ("≠" ("ne"))
        ;; conviniance shorts
        ("‹" ("left"))
        ("›" ("right"))
        ;; private macros
        ("ℝ" ("RR"))
        ("ℕ" ("NN"))
        ("ℤ" ("ZZ"))
        ("ℚ" ("QQ"))
        ("ℂ" ("CC"))
        ("ℙ" ("PP"))
        ("ℍ" ("HH"))
        ("𝔼" ("EE"))
        ("𝑑" ("dd"))
        ;; known commands
        ("" ("phantom"))
        ("❪{1}／{2}❫" ("frac"))
        (,(lambda (arg) (concat "√" (TeX-fold-parenthesize-as-neccesary arg))) ("sqrt"))
        (,(lambda (arg) (concat "⭡" (TeX-fold-parenthesize-as-neccesary arg))) ("vec"))
        ("‘{1}’" ("text"))
        ;; private commands
        ("|{1}|" ("abs"))
        ("‖{1}‖" ("norm"))
        ("⌊{1}⌋" ("floor"))
        ("⌈{1}⌉" ("ceil"))
        ("⌊{1}⌉" ("round"))
        ("𝑑{1}/𝑑{2}" ("dv"))
        ("∂{1}/∂{2}" ("pdv"))
        ;; fancification
        ("{1}" ("mathrm"))
        (,(lambda (word) (string-offset-roman-chars 119743 word)) ("mathbf"))
        (,(lambda (word) (string-offset-roman-chars 119951 word)) ("mathcal"))
        (,(lambda (word) (string-offset-roman-chars 120003 word)) ("mathfrak"))
        (,(lambda (word) (string-offset-roman-chars 120055 word)) ("mathbb"))
        (,(lambda (word) (string-offset-roman-chars 120159 word)) ("mathsf"))
        (,(lambda (word) (string-offset-roman-chars 120367 word)) ("mathtt"))
        )
      TeX-fold-macro-spec-list
      '(
        ;; as the defaults
        ("[f]" ("footnote" "marginpar"))
        ("[c]" ("cite"))
        ("[l]" ("label"))
        ("[r]" ("ref" "pageref" "eqref"))
        ("[i]" ("index" "glossary"))
        ("..." ("dots"))
        ("{1}" ("emph" "textit" "textsl" "textmd" "textrm" "textsf" "texttt"
            "textbf" "textsc" "textup"))
        ;; tweaked defaults
        ("©" ("copyright"))
        ("®" ("textregistered"))
        ("™"  ("texttrademark"))
        ("[1]:||►" ("item"))
        ("❡❡ {1}" ("part" "part*"))
        ("❡ {1}" ("chapter" "chapter*"))
        ("§ {1}" ("section" "section*"))
        ("§§ {1}" ("subsection" "subsection*"))
        ("§§§ {1}" ("subsubsection" "subsubsection*"))
        ("¶ {1}" ("paragraph" "paragraph*"))
        ("¶¶ {1}" ("subparagraph" "subparagraph*"))
        ;; extra
        ("⬖ {1}" ("begin"))
        ("⬗ {1}" ("end"))
        ))

(defun string-offset-roman-chars (offset word)
  "Shift the codepoint of each charachter in WORD by OFFSET with an extra -6 shift if the letter is lowercase"
    (apply 'string
       (mapcar (lambda (c) (+ (if (>= c 97) (- c 6) c) offset)) word)))

(defun TeX-fold-parenthesize-as-neccesary (tokens &optional suppress-left suppress-right)
  "Add ❪ ❫ parenthesis as if multiple LaTeX tokens appear to be present"
  (if (string-match-p "^\\\\?\\w+$" tokens) tokens
    (concat (if suppress-left "" "❪")
            tokens
            (if suppress-right "" "❫"))))
;; Editor visuals:2 ends here

;; [[file:~/.config/doom/config.org::*Editor%20visuals][Editor visuals:3]]
(after! tex
  (map!
   :map LaTeX-mode-map
   :ei [C-return] #'LaTeX-insert-item

   ;; normal stuff here
   :localleader
   :desc "View" "v" #'TeX-view)
  (setq TeX-electric-math '("\\(" . "")))
;; Editor visuals:3 ends here

;; [[file:~/.config/doom/config.org::*Editor%20visuals][Editor visuals:4]]
;; Making \( \) less visible
(defface unimportant-latex-face
  '((t
     :inherit font-lock-comment-face :family "Overpass" :weight light))
  "Face used to make \\(\\), \\[\\] less visible."
  :group 'LaTeX-math)

(font-lock-add-keywords
 'latex-mode
 `((,(rx (and "\\" (any "()[]"))) 0 'unimportant-latex-face prepend))
 'end)

(font-lock-add-keywords
 'latex-mode
 `((,"\\\\[[:word:]]+" 0 'font-lock-keyword-face prepend))
 'end)
;; Editor visuals:4 ends here

;; [[file:~/.config/doom/config.org::*Editor%20visuals][Editor visuals:5]]
(setq preview-LaTeX-command '("%`%l \"\\nonstopmode\\nofiles\
\\PassOptionsToPackage{" ("," . preview-required-option-list) "}{preview}\
\\AtBeginDocument{\\ifx\\ifPreview\\undefined"
preview-default-preamble "\\fi}\"%' \"\\detokenize{\" %t \"}\""))
;; Editor visuals:5 ends here

;; [[file:~/.config/doom/config.org::*CDLaTeX][CDLaTeX:1]]
(after! cdlatex
  (setq ;; cdlatex-math-symbol-prefix ?\; ;; doesn't work at the moment :(
   cdlatex-math-symbol-alist
   '( ;; adding missing functions to 3rd level symbols
     (?_    ("\\downarrow"  ""           "\\inf"))
     (?^    ("\\uparrow"    ""           "\\sup"))
     (?k    ("\\kappa"      ""           "\\ker"))
     (?m    ("\\mu"         ""           "\\lim"))
     (?c    (""             "\\circ"     "\\cos"))
     (?d    ("\\delta"      "\\partial"  "\\dim"))
     (?D    ("\\Delta"      "\\nabla"    "\\deg"))
     ;; no idea why \Phi isnt on 'F' in first place, \phi is on 'f'.
     (?F    ("\\Phi"))
     ;; now just conveniance
     (?.    ("\\cdot" "\\dots"))
     (?:    ("\\vdots" "\\ddots"))
     (?*    ("\\times" "\\star" "\\ast")))
   cdlatex-math-modify-alist
   '( ;; my own stuff
     (?B    "\\mathbb"        nil          t    nil  nil)
     (?a    "\\abs"           nil          t    nil  nil))))
;; CDLaTeX:1 ends here

;; [[file:~/.config/doom/config.org::*SyncTeX][SyncTeX:1]]
(after! tex
  (add-to-list 'TeX-view-program-list '("Evince" "evince %o"))
  (add-to-list 'TeX-view-program-selection '(output-pdf "Evince")))
;; SyncTeX:1 ends here

;; [[file:~/.config/doom/config.org::*Editor%20Visuals][Editor Visuals:1]]
(after! ess-r-mode
  (appendq! +pretty-code-symbols
            '(:assign "⟵"
              :multiply "×"))
  (set-pretty-symbols! 'ess-r-mode
    ;; Functional
    :def "function"
    ;; Types
    :null "NULL"
    :true "TRUE"
    :false "FALSE"
    :int "int"
    :floar "float"
    :bool "bool"
    ;; Flow
    :not "!"
    :and "&&" :or "||"
    :for "for"
    :in "%in%"
    :return "return"
    ;; Other
    :assign "<-"
    :multiply "%*%"))
;; Editor Visuals:1 ends here

;; [[file:~/.config/doom/config.org::*hledger][hledger:1]]
(setq ledger-mode-should-check-version nil
      ledger-report-links-in-register nil
      ledger-binary-path "hledger")
;; hledger:1 ends here

;; [[file:~/.config/doom/config.org::*Markdown][Markdown:1]]
(add-hook! (gfm-mode markdown-mode) #'mixed-pitch-mode)
;; Markdown:1 ends here

;; [[file:~/.config/doom/config.org::*Markdown][Markdown:2]]
(add-hook! (gfm-mode markdown-mode) #'visual-line-mode #'turn-off-auto-fill)
;; Markdown:2 ends here

;; [[file:~/.config/doom/config.org::*Beancount][Beancount:1]]
(use-package! beancount
  :load-path "~/.config/doom/lisp"
  :mode ("\\.beancount\\'" . beancount-mode)
  :config
  (setq beancount-electric-currency t)
  (defun beancount-bal ()
    "Run bean-report bal."
    (interactive)
    (let ((compilation-read-command nil))
      (beancount--run "bean-report"
                      (file-relative-name buffer-file-name) "bal")))
  ;; TODO make the following *work*
  :bind (:map beancount-mode-map ("S-RET" . #'beancount-align-to-previous-number)))
;; Beancount:1 ends here
