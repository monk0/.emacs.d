;;; init-git.el

(my/package-install-p 'magit)

(require 'magit)

(global-set-key (kbd "C-x g") 'magit-status)

(provide 'init-git)
