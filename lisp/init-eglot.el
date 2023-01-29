;;; init --- eglot
;;; Commentary:

;; eglot settings

;;; Code:

(use-package eglot
  :hook
  ('java-mode-hook 'eglot-ensure))

(provide 'init-eglot)
;;; init-eglot.el ends here
