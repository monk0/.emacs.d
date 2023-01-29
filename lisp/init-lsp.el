;;; Init --- Lsp ModE
;;; Commentary:

;; lsp mode

;;; Code:

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (
		 (java-mode-hook . lsp-deferred)
		 ('lsp-mode . 'lsp-enable-which-key-integration)))

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package which-key :config (which-key-mode))

;; lsp treemacs
(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)

(use-package dap-mode
  :after lsp-mode
  :config (dap-auto-configure-mode))

(provide 'init-lsp)
;;; init-lsp.el ends here
