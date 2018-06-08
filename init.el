;;; init.el

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((minver "25.0"))
  (when (version< emacs-version minver)
    (error "This config requires v%s or higher" minver))) 

(setq default-directory "~/")

(defconst *is-a-mac* (eq system-type 'darwin))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))

;; UI 
(require 'init-ui)
;; global key map 
(require 'init-keymap)

;; support common lisp
(require 'cl-lib)
;; elpa repo
(require 'init-elpa)

;; dracula theme
(require 'init-theme)
;; hightlight parentheses
(require 'init-highlight)

;; auto complete any where
(require 'init-company)

;; ivy
(require 'init-ivy)
;; org
(require 'init-org)
;; git
(require 'init-git)
;; yasnippet
(require 'init-yasnippet)
;; version control
(require 'init-vc)

;; auto electric
(require 'init-electric)

(require 'init-js)
(setq make-backup-files nil)
(setq auto-save-default nil)

(delete-selection-mode 1)

(when (file-exists-p custom-file)
  (load custom-file))

(require 'server)
(unless (server-running-p) (server-start))

(provide 'init)
