;;; init --- corfu setting
;;; Commentary:

;; Corfu setting 

;;; Code:
(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0)
  (corfu-auto-prefix 3)
  (corfu-quit-no-match 'separator)
  
  :hook
  ('after-init-hook . global-corfu-mode))

;; Load corfu-popupinfo when load corfu
(with-eval-after-load 'corfu
  (corfu-popupinfo-mode))

;; A few more useful configurations...
(use-package emacs
  :demand t
  :init
  ;; TAB cycle if there are only few candidates
  (setq completion-cycle-threshold 3)

  ;; Emacs 28: Hide commands in M-x which do not apply to the current mode.
  ;; Corfu commands are hidden, since they are not supposed to be used via M-x.
  ;; (setq read-extended-command-predicate
  ;;       #'command-completion-default-include-p)

  ;; Enable indentation+completion using the TAB key.
  ;; `completion-at-point' is often bound to M-TAB.
  (setq tab-always-indent 'complete))

;;(use-package kind-icon
;;  :demand t
;;  :after corfu
;;  :custom
;;  (kind-icon-default-face 'corfu-default) ; to compute blended backgrounds correctly
;;  :config
;;  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))

(provide 'init-corfu)
;;; init-corfu.el ends here
