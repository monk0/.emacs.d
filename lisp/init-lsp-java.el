;;; init --- lsp-java.el
;;; Commentary:

;; lsp java
;;; Code:
(use-package projectile)
(use-package yasnippet :config (yas-global-mode))
(use-package hydra)
(use-package lsp-java :hook ('java-mode-hook 'lsp))
(use-package dap-java :ensure nil)
;;(use-package helm-lsp)
;;(use-package helm
;;  :config (helm-mode))


(setq lsp-java-java-path "D:/Program Files/Jdk/jdk-17.0.4.1/bin/java"
	  lsp-java-configuration-runtimes '[(:name "JavaSE-11"
                        :path "D:/Program Files/Jdk/jdk-11.0.16.1/"
                        :default t)])

(provide 'init-lsp-java)
;;; init-lsp-java.el ends here
