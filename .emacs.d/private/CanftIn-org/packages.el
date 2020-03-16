;;; packages.el --- CanftIn-org layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author:  <CanftIn@DESKTOP-KO6RD0M>
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
;; added to `CanftIn-org-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `CanftIn-org/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `CanftIn-org/pre-init-PACKAGE' and/or
;;   `CanftIn-org/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst CanftIn-org-packages
  '(
    (org :location built-in)
    org-pomodoro
    deft
    sound-wav
    org-tree-slide
    (calendar :location local)
    (time :location local)
    ))


(defun CanftIn-org/post-init-org-pomodoro ()
  (CanftIn/pomodoro-notification)
 )

(defun CanftIn-org/post-init-org ()
  )

(defun CanftIn-org/post-init-deft ()
  (progn
    (setq deft-use-filter-string-for-filename t)
    (setq deft-recursive t)
    (setq deft-extension "org")
    (setq deft-directory deft-dir)))

(defun CanftIn-org/init-sound-wav ()
  (use-package sound-wav
    :defer t
    :init))

(defun CanftIn-org/init-org-tree-slide ()
  (use-package org-tree-slide
    :init
    (spacemacs/set-leader-keys "oto" 'org-tree-slide-mode)))

(defun CanftIn-org/init-calendar ()
  (use-package calendar
  :config
  ;;(setq cal-html-directory MY-GTD-PATH) ;设置导出calendar的为html时的默认存放目录
  ;; 让emacs能计算日出日落的时间，在 calendar 上用 S 即可看到
  (setq calendar-longitude +113.31)
  (setq calendar-latitude +22.39)
  (setq calendar-location-name "武汉")
  ;; 设置阴历显示，在 calendar 上用 pC 显示阴历
  (setq chinese-calendar-celestial-stem
        ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"])
  (setq chinese-calendar-terrestrial-branch
        ["子" "丑" "寅" "卯" "辰" "巳" "戊" "未" "申" "酉" "戌" "亥"])
  ;; 设置 calendar 的显示
  (setq calendar-remove-frame-by-deleting t)
  (setq calendar-week-start-day 1)
                                        ; 设置星期一为每周的第一天
  (setq mark-diary-entries-in-calendar t)
                                        ; 标记calendar上有diary的日期
  (setq mark-holidays-in-calendar nil)
                                        ; 为了突出有diary的日期，calendar上不标记节日
  (setq view-calendar-holidays-initially nil)
                                        ; 打开calendar的时候不显示一堆节日
  ;; 去掉不关心的节日，设定自己在意的节日，在 calendar 上用 h 显示节日
  (setq holiday-christian-holidays nil)
  (setq holiday-hebrew-holidays nil)
  (setq holiday-islamic-holidays nil)
  (setq holiday-solar-holidays nil)
  (setq holiday-other-holidays '((holiday-fixed 1 1 "元旦")
                                 (holiday-fixed 2 14 "情人节")
                                 (holiday-fixed 3 14 "白色情人节")
                                 (holiday-fixed 4 1 "愚人节")
                                 (holiday-fixed 5 1 "劳动节")
                                 (holiday-float 5 0 2 "母亲节")
                                 (holiday-fixed 6 1 "儿童节")
                                 (holiday-float 6 0 3 "父亲节")
                                 (holiday-fixed 7 1 "建党节")
                                 (holiday-fixed 8 1 "建军节")
                                 (holiday-fixed 9 10 "教师节")
                                 (holiday-fixed 9 23 "她的生日")
                                 (holiday-fixed 10 1 "国庆节")
                                 (holiday-fixed 12 25 "圣诞节")
                                 (holiday-chinese 1 1 "春节")
                                 (holiday-chinese 1 15 "元宵")
                                 (holiday-chinese 3 3 "上已节")
                                 (holiday-chinese 5 5 "端午节")
                                 (holiday-chinese 7 7 "七夕节")
                                 (holiday-chinese 8 15 "中秋节")
                                 (holiday-chinese 9 9 "重阳节")
                                 (holiday-chinese 10 1 "寒衣节")
                                 (holiday-chinese 12 8 "腊八节")
                                 (holiday-chinese 12 23 "小年")))
  (setq calendar-date-style 'iso)         ;设置diary中的date格式
  ))

(defun CanftIn-org/init-time ()
  (use-package time
    :config
    ;;在mode-line显示时间
    (setq display-time-24hr-format t)
    (setq display-time-day-and-date t)
    (display-time-mode 1)))
