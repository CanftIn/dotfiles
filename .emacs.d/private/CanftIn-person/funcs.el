;; TODO need symbol-overlay and highlight global package
(defun CanftIn/highlight-dwim ()
  (interactive)
  (if (use-region-p)
      (progn
        (highlight-frame-toggle)
        (deactivate-mark))
    (symbol-overlay-put)))

(defun CanftIn/pomodoro-notification ()
  "show notifications when pomodoro end"
  (if (spacemacs/system-is-mswindows)
      (progn (add-hook 'org-pomodoro-finished-hook '(lambda () (sound-wav-play (expand-file-name "~/.spacemacs.d/game_win.wav"))))
             (add-hook 'org-pomodoro-short-break-finished-hook '(lambda () (sound-wav-play (expand-file-name "~/.spacemacs.d/game_win.wav"))))
             (add-hook 'org-pomodoro-long-break-finished-hook '(lambda () (sound-wav-play (expand-file-name "~/.spacemacs.d/game_win.wav")))))
    (progn (add-hook 'org-pomodoro-finished-hook '(lambda () (zilongshanren/growl-notification "Pomodoro Finished" "☕️ Have a break!" t)))
           (add-hook 'org-pomodoro-short-break-finished-hook '(lambda () (zilongshanren/growl-notification "Short Break" "🐝 Ready to Go?" t)))
           (add-hook 'org-pomodoro-long-break-finished-hook '(lambda () (zilongshanren/growl-notification "Long Break" " 💪 Ready to Go?" t))))))
