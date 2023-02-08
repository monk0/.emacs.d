;;; init --- elpa.el
;;; Commentary:

;; elpa settings

;;; Code:
(require 'package)

(setq package-archives '(("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
						 ("melpa-stable" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/stable-melpa/")
						 ("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

;; default order from use package
(package-archive-priority '(("gnu" . 30)
							("mepla-stable" . 20)
							("mepla" . 10)))

(package-initialize)

;; install use-package from elpa
(when (not (package-installed-p 'use-package))
  (let* ((package-pinned-packages '((use-package . "melpa-stable"))))
	(package-read-all-archive-contents)
	(package-install 'use-package)))

(eval-when-compile
  (require 'use-package))

(setq use-package-verbose t
	  use-package-always-ensure t
	  use-package-always-defer t
	  use-package-hook-name-suffix nil)

(provide 'init-elpa)
;;; init-elpa.el ends here
