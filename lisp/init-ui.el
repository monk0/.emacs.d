;;; init --- emacs user interface settings
;;; Commentary:

;; Emacs ui setting

;;; Code:
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-startup-screen t
	  initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-ui)
;;; init-ui.el ends here