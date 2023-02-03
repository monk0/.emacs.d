;;; init --- vertico settings
;;; Commentary:

;; 

;;; Code:
(use-package vertico
  :demand t
  :init
  (setq read-file-name-completion-ignore-case t
		read-buffer-completion-ignore-case t
		completion-ignore-case t)
  
  :config
  (vertico-mode))

(use-package vertico-directory
  :after vertico
  :ensure nil
  ;; More convenient directory navigation commands
  :bind (:map vertico-map
              ("RET" . vertico-directory-enter)
              ("DEL" . vertico-directory-delete-char)
              ("M-DEL" . vertico-directory-delete-word))
  ;; Tidy shadowed file names
  :hook (rfn-eshadow-update-overlay . vertico-directory-tidy))

(use-package marginalia
  :demand t
  :config
  (marginalia-mode))

(use-package vertico-posframe
  :demand t
  :config
  (vertico-posframe-mode t))

(provide 'init-vertico)
;;; init-vertico.el ends here
