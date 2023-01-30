;;; init --- doom theme
;;; Commentary:

;;

;;; Code:
(use-package all-the-icons
  :if (display-graphic-p))

(use-package doom-themes
  :defer nil
  :config
  ;;(load-theme 'doom-dracula t)
  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  ;;(doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))



(defun huff/auto-change-theme ()
  "Automatic change themes"
  (setq current-theme nil)
  (let* ((hour (nth 2 (decode-time (current-time))))
         (new-theme (cond ((< hour 8) 'doom-dracula)
					  ((and (>= hour 8) (< hour 12)) 'doom-acario-light)
					  ((and (>= hour 12) (< hour 17)) 'doom-acario-dark)
					  ((>= hour 17) 'doom-dracula))))
	
	(if (equal current-theme new-theme)
		(nil)
	  (progn
		(setq current-theme new-theme)
		(load-theme current-theme t)))

	(run-at-time (format "%02d:%02d" (+ hour 1) 0) nil 'huff/auto-change-theme)))

(huff/auto-change-theme)

;;(message "%s" (cond ((< hour 8) 'adio)
;;					((and (>= hour 8) (< hour 9)) 'yays)
;;					((>= hour 10) 'adio)))

(provide 'init-theme)
;;; init-theme.el ends here
