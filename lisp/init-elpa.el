;;; init-elpa.el

;;; Code:
(require 'package)

(setq package-archives '(("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
						  ("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/stable-melpa/")
						  ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

(package-initialize)

;; install use-package from elpa
(when (not (package-installed-p 'use-package))
	(package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-verbose t
	  use-package-always-ensure t
	  use-package-always-defer t
	  use-package-hook-name-suffix nil)

(provide 'init-elpa)
;;; init-elpa.el ends here
