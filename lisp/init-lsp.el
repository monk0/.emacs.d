;;; Init --- Lsp ModE
;;; Commentary:

;; lsp mode

;;; Code:
(use-package lsp-mode
  :custom
  (lsp-completion-provider :none) ;; we use Corfu!
  :init
  (setq lsp-keymap-prefix "C-l")
  (defun my/lsp-mode-setup-completion ()
    (setf (alist-get 'styles (alist-get 'lsp-capf completion-category-defaults))
          '(orderless))) ;; Configure orderless
  :hook
  (lsp-completion-mode . my/lsp-mode-setup-completion)
  (lsp-mode . lsp-enable-which-key-integration))

(use-package dap-mode
  :after lsp-mode
  :config
  (dap-auto-configure-mode))

(provide 'init-lsp)
;;; init-lsp.el ends here
