;;; init --- elpa.el
;;; Commentary:

;; elpa settings

;;; Code:
(require 'package)

(setq package-archives '(("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
						 ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
						 ("melpa-stable" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/stable-melpa/")))

(package-initialize)

;; install use-package from elpa
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package 'melpa-stable))

(eval-when-compile
  (require 'use-package))

(setq use-package-verbose t
	  use-package-always-ensure t
	  use-package-always-defer t
	  use-package-hook-name-suffix nil)

(provide 'init-elpa)
;;; init-elpa.el ends here
