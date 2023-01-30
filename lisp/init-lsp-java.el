;;; init --- lsp-java.el
;;; Commentary:

;; lsp java
;;; Code:

(use-package hydra)
(use-package lsp-java
  :commands (lsp)
  :hook ('java-mode-hook . #'lsp))

(use-package dap-java :ensure nil)

(setq lsp-java-java-path "D:/Program Files/Jdk/jdk-17.0.4.1/bin/java"
	  lsp-java-configuration-runtimes '[(:name "JavaSE-11"
											   :path "D:/Program Files/Jdk/jdk-11.0.16.1/"
											   :default t)])

(provide 'init-lsp-java)
;;; init-lsp-java.el ends here
