;;; init --- flycheck settings
;;; Commentary:

;; flycheck mode

;;; Code:
(use-package flycheck
  :demand t
  :init
  (setq flycheck-emacs-lisp-load-path 'inherit)
  :hook
  (prog-mode . global-flycheck-mode))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
