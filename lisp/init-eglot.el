;;; init --- eglot
;;; Commentary:

;; eglot settings

;;; Code:

(use-package eglot-java
  :hook
  (java-mode-hook . eglot-ensure))

;;(with-eval-after-load 'eglot
;;  (add-to-list 'eglot-server-programs '(java-mode . ("jdtls"))))

(provide 'init-eglot)
;;; init-eglot.el ends here
