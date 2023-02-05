;;; init --- elpa.el
;;; Commentary:

;; elpa settings

;;; Code:
(require 'package)

(setq package-archives '(;("melpa-stable" . "https://stable.melpa.org/packages/")
						 ("melpa-stable" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/stable-melpa/")
						 ("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
						 ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))


(package-archive-priority '(("mepla-stable" . 50)
							("gnu" . 20)
							("org" . 10)))
(package-initialize)

;; install use-package from elpa
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (setq package-pinned-packages '((use-package . "mepla-stable")))
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-verbose t
	  use-package-always-ensure t
	  use-package-always-defer t
	  use-package-hook-name-suffix nil)

(provide 'init-elpa)
;;; init-elpa.el ends here
