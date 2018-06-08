;;; init-vc.el

(require-package 'diff-hl)
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
(add-hook 'after-init-hook 'global-diff-hl-mode)

;;(maybe-require-package 'browse-at-remote)

(provide 'init-vc)
