;;; init --- flycheck settings
;;; Commentary:

;; flycheck mode

;;; Code:
(use-package flycheck
  :defer nil
  :init
  (setq flycheck-emacs-lisp-load-path 'inherit)
  :hook (after-init-hook . global-flycheck-mode))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
