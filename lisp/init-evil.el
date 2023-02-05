;;; init-evil.el --- evil settings
;;; Commentary:

;; evil mode

;;; Code:
(use-package evil
  :demand t
  :pin melpa-stable
  :hook
  ('after-init-hook . evil-mode))

(provide 'init-evil)
;;; init-evil.el ends here
