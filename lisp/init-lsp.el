;;; nit-lsp.el
;;; Commentary:

;;

;;; code:

;; lsp mode
(use-package lsp-mode
  :hook
  ((lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode)

;; lsp ivy
(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)

;; lsp treemacs
(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)

(use-package dap-mode
  :after lsp-mode
  :config (dap-auto-configure-mode))

(provide 'init-lsp)
