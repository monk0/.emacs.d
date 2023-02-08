;;; init-yasnippet.el ---

;;; Commentary:

;;; Code:


(use-package yasnippet
  :demand t
  :hook
  ('after-init-hook . yas-global-mode))

(use-package yasnippet-snippets
  :demand t
  :after yasnippet)

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
