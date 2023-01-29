;;; init-company.el --- company settings
;;; Commentary:

;; company mode

;;; Code:

(use-package company
  :config
  (setq company-idle-delay 0)
  :bind (:map company-active-map
			  ("C-n" . company-select-next)
			  ("C-p" . company-select-previous))
  :hook ('after-init-hook 'global-company-mode))

(provide 'init-company)
;;; init-company.el ends here
