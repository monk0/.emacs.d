;;; projectile --- settings
;;; 

;;

;;; Code:
(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map)))

(setq projectile-project-search-path '("~/projects/" "e:/Huff/Workspaces/" ("~/github" . 1)))
(provide 'init-project)
;;; init-project.el ends here