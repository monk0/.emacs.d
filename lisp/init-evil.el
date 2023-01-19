;;; init-evil.el --- emacs add vi
;;; Commentary:

;; evil mode

;;; Code:
(use-package evil
  :defer nil
  :hook (after-init-hook . evil-mode))

(provide 'init-evil)
;;; init-evil.el ends here