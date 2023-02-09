;;; init --- lsp-java.el
;;; Commentary:

;; lsp java
;;; Code:

(use-package lsp-java
  :init
  (setq lsp-java-java-path "D:/Program Files/Jdk/jdk-17.0.4.1/bin/java"
	  lsp-java-configuration-runtimes '[(:name "JavaSE-11"
											   :path "D:/Program Files/Jdk/jdk-11.0.16.1/"
											   :default t)])
  :commands (lsp lsp-deferred)
  :hook
  ('java-mode-hook . #'lsp)
  ('java-mode-hook . #'lsp-deferred))

(use-package dap-java :ensure nil)

(provide 'init-lsp-java)
;;; init-lsp-java.el ends here
