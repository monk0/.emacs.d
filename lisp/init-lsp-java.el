;;; init-lsp-java.el
;;; Commentary:


;; lsp java
(use-package lsp-java)
;;(use-package dap-java)

(setq lsp-java-java-path "E:/Program Files/Java/jdk-17/bin/java"
	  lsp-java-configuration-runtimes '[(:name "JavaSE-11"
                        :path "E:/Program Files/Java/jdk-11"
                        :default t)])

(provide 'init-lsp-java)
