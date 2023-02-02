;;; init --- emacs user interface settings
;;; Commentary:

;; Emacs ui setting

;;; Code:
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-startup-screen t
	  initial-frame-alist (quote ((fullscreen . maximized))))


;; doom-themes
(use-package doom-themes
  :demand t
  :pin melpa-stable
  :config
  (doom-themes-visual-bell-config)
  (doom-themes-neotree-config)
  (doom-themes-org-config))


(setq current-theme nil)

(defun huff/auto-change-theme ()
  "Automatic change themes"
  (let* ((hour (nth 2 (decode-time (current-time))))
         (new-theme (cond ((< hour 8) 'doom-dracula)
					  ((and (>= hour 8) (< hour 12)) 'doom-acario-light)
					  ((and (>= hour 12) (< hour 17)) 'doom-gruvbox-light)
					  ((>= hour 17) 'doom-dracula))))
    
	(when (not (equal current-theme new-theme))
	  (setq current-theme new-theme)
	  (load-theme current-theme t))

	(run-at-time (format "%02d:%02d" (+ hour 1) 0) nil 'huff/auto-change-theme)))

(huff/auto-change-theme)


(provide 'init-ui)
;;; init-ui.el ends here
