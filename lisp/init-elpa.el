;;; init-elpa.el
(require 'package)

(add-to-list 'package-archives '("gnu" . "http://elpa.emacs-china.org/gnu/") t)
(add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa-stable/") t)

(defun my/package-install-p(pkg)
  (when (not (package-installed-p pkg))
    (package-refresh-contents)
    (package-install pkg))
  )

(provide 'init-elpa)
