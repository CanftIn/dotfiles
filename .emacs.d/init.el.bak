
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(when (>= emacs-major-version 24)
     (require 'package)
     (package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
                ;; --- Auto-completion ---
                company
                ;; --- Better Editor ---
                hungry-delete
                swiper
                counsel
                smartparens
                ;; --- Major Mode ---
                js2-mode
                ;; --- Minor Mode ---
                nodejs-repl
                exec-path-from-shell
                ;; --- Themes ---
                monokai-theme
                ;; solarized-theme
                ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

(unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))

(require 'hungry-delete)
(global-hungry-delete-mode)


;;关闭工具栏
(tool-bar-mode -1)

;;关闭滑动条
(scroll-bar-mode -1)

;;关闭缩进
;;(electric-indent-mode -1)

;;关闭启动tutorial画面
(setq inhibit-splash-screen t)

;;显示行数
(global-linum-mode t)

(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;;f2打开init.el
(global-set-key (kbd "<f2>") 'open-my-init-file)

;;开启全局company补全
(global-company-mode t)

;;修改光标为bar
(setq-default cursor-type 'bar)

;;禁止生成备份文件
(setq make-backup-files nil)

;;最近的文件在图形菜单中进行显示
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;选中文字后替换
(delete-selection-mode t)

;;显示匹配括号
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;显示当前行
(global-hl-line-mode t)

;;加载主题
(load-theme 'monokai t)

;(recentf-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" default)))
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
