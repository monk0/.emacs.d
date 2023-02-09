;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; Emacs default settings

;;; Code:
;; Adjust garbage collection thresholds during startup, and thereafter
(let ((normal-gc-cons-threshold (* 16 1024 1024)))
  (setq gc-cons-threshold most-positive-fixnum)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;;(setq debug-on-error t)

(setq byte-compile-warnings nil
	  auto-save-default nil
      make-backup-files nil
	  use-short-answers t
      display-line-numbers t
      default-directory "~/"
	  custom-file (expand-file-name "custom.el" user-emacs-directory))

(setq-default tab-width 4
			  display-line-numbers 'relative)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(add-hook 'after-init-hook
		  (lambda () (electric-pair-mode t)
			(column-number-mode t)
			(delete-selection-mode t)
			(savehist-mode t)
			(winner-mode t)
			(recentf-mode)))

(add-hook 'prog-mode-hook #'hs-minor-mode)

;;; -------------------------------------------------------
;; Base config
;; package 
(require 'init-elpa)
(require 'init-benchmark)

(require 'init-evil)
(require 'init-corfu)
(require 'init-ui)

(require 'init-vertico)
(require 'init-orderless)
(require 'init-consult)
(require 'init-flycheck)
(require 'init-which-key)
;;; --------------------------------------------------------
;; General tools
;; magit
(require 'init-git)

;; yasnippet
(require 'init-yasnippet)
;; project
(require 'init-project)

;;; --------------------------------------------------------
;; org mode
(require 'init-org)

;;; --------------------------------------------------------
;; dev tools

;; lsp
(require 'init-lsp)
(require 'init-eglot)
;;
;;(require 'init-lsp-java)


;; dash board
(require 'init-dashboard)

;; Load custom file
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;;; init.el ends here
