;;; init.el

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((minver "25.0"))
  (when (version< emacs-version minver)
    (error "This config requires v%s or higher" minver))) 

(setq gc-cons-threshold (* 128 1024 1024))
(add-hook 'after-init-hook
	  (lambda () (setq gc-cons-threshold (* 20 1024 1024))))

(setq default-directory "~/")

(defconst *is-a-mac* (eq system-type 'darwin))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

(require 'cl-lib)
(require 'init-elpa)
(require 'init-company)
(require 'init-theme)
(require 'init-ivy)
(require 'init-org)
(require 'init-git)

(my/package-install-p 'js2-mode)

(my/package-install-p 'highlight-parentheses)
(require 'highlight-parentheses)
(global-highlight-parentheses-mode t)

(require 'electric)
(electric-indent-mode t)
(electric-pair-mode t)

(tool-bar-mode -1)

(scroll-bar-mode -1)

(global-linum-mode 1)

(setq inhibit-startup-screen -1)

(set-face-attribute 'default nil :height 160)

(setq-default cursor-type 'bar)

(global-auto-revert-mode 1)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(setq make-backup-files nil)

(delete-selection-mode 1)

(when (file-exists-p custom-file)
  (load custom-file))

(require 'server)
(unless (server-running-p) (server-start))
