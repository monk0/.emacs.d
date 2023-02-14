;;; init --- eglot
;;; Commentary:

;; eglot settings

;;; Code:

(use-package eglot
  :hook
  (java-mode-hook . eglot-ensure)
  (xml-mode-hook . eglot-ensure))

;;(with-eval-after-load 'eglot
;;  (add-to-list 'eglot-server-programs '(java-mode . "jdtls")))

(cl-defmethod eglot-execute-command
  (_server (_cmd (eql java.apply.workspaceEdit)) arguments)
  "Eclipse JDT breaks spec and replies with edits as arguments."
  (mapc #'eglot--apply-workspace-edit arguments))

(provide 'init-eglot)
;;; init-eglot.el ends here
