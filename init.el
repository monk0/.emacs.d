;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; Emacs default settings

;;; code:
(setq auto-save-default nil
      make-backup-files nil
      default-directory "~/")

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(global-hl-line-mode)
(global-linum-mode)

(require 'init-elpa)

(require 'init-ui)

(require 'init-theme)

(require 'init-evil)

(require 'init-company)

(require 'init-flycheck)

;;(require 'init-ivy)
(require 'init-vertico)
(require 'init-orderless)
(require 'init-consult)

(require 'init-git)
(provide 'init)
;;; init.el ends here
