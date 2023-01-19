;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; Emacs default settings

;;; code:
(setq auto-save-default nil
      make-backup-files nil
      display-line-numbers t
      default-directory "~/"
	  custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(setq-default tab-width 4
			  display-line-numbers 'relative)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


(require 'init-elpa)

(require 'init-evil)
(require 'init-company)

(require 'init-ui)
(require 'init-theme)

(require 'init-flycheck)

(require 'init-vertico)
(require 'init-orderless)
(require 'init-consult)

;; magit
(require 'init-git)

;; lsp
;;(require 'init-lsp)

;;
;;(require 'init-lsp-java)

(provide 'init)
;;; init.el ends here
