;;; Init --- Lsp ModE
;;; Commentary:

;; lsp mode

;;; Code:

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :commands (lsp lsp-deferred)
  :hook (
		 ('java-mode-hook . #'lsp-deferred)
		 ('lsp-mode . lsp-enable-which-key-integration)))

(use-package dap-mode
  :after lsp-mode
  :config (dap-auto-configure-mode))

(provide 'init-lsp)
;;; init-lsp.el ends here
