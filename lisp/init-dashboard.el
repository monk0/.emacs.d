;;; init -- dashboard
;;; Commentary:

;;

;;; Code:
(use-package dashboard
  :demand t
  :init
  (setq dashboard-center-content t)
  (setq dashboard-banner-logo-title "Welcome to Emacs!")
  (setq dashboard-footer-messages '("clean ..."))
  (setq dashboard-startup-banner "~/.emacs.d/banners/emacs-02.png")
  (setq dashboard-items '((recents . 5)
						  (projects . 5)))
  (setq dashboard-set-navigator t)
  :config
  (dashboard-setup-startup-hook))

(provide 'init-dashboard)
;;; init-dashborad.el ends here
