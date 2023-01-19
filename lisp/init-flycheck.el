;;; init-flycheck


;; flycheck mode
(use-package flycheck
  :defer nil
  :hook (after-init-hook . global-flycheck-mode))

(provide 'init-flycheck)
;;; init-flycheck ends here
