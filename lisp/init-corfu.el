;;; init --- corfu setting
;;; Commentary:

;; Corfu setting

;;; Code:
(use-package corfu
  :config
  (setq corfu-auto t)
  (setq corfu-auto-delay 0)
  (setq corfu-auto-prefix 3)

  (setq corfu-separator ?\s)
  (setq corfu-quit-no-match 'separator)
  
  :hook
  ('after-init-hook . global-corfu-mode))

;; Load corfu-popupinfo when load corfu
(with-eval-after-load 'corfu
  (corfu-popupinfo-mode))

(setq completion-cycle-threshold 3
	  tab-always-indent 'complete)

(use-package kind-icon
  :demand t
  :after corfu
  :custom
  (kind-icon-default-face 'corfu-default) ; to compute blended backgrounds correctly
  :config
  (setq kind-icon-use-icons nil)
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))

(provide 'init-corfu)
;;; init-corfu.el ends here
