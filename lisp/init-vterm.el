;;; init --- vterm settings
;;; Commentary:

;;

;;; Code:
(use-package vterm
  :demand t)

(use-package eshell-vterm
  :demand t
  :after eshell
  :config
  (eshell-vterm-mode))

(provide 'init-vterm)
;;; init-vterm.el ends here
