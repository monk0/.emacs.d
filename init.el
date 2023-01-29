;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; Emacs default settings

;;; code:
(setq auto-save-default nil
      make-backup-files nil
	  use-short-answers t
      display-line-numbers t
      default-directory "~/"
	  custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(setq-default tab-width 4
			  display-line-numbers 'relative)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Adjust garbage collection thresholds during startup, and thereafter
(let ((normal-gc-cons-threshold (* 64 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;;; base config
(require 'init-elpa)

(require 'init-evil)
(require 'init-company)

;;; 
(require 'init-ui)
(require 'init-theme)

(require 'init-flycheck)

(require 'init-vertico)
(require 'init-orderless)
(require 'init-consult)

(require 'init-which-key)

;; magit
(require 'init-git)

;; lsp
;;(require 'init-lsp)
(require 'init-eglot)

;;
(require 'init-lsp-java)

(provide 'init)
;;; init.el ends here
