;;; init --- benchmark setting
;;; Commentary:

;;

;;; Code:
(use-package benchmark-init
  :demand t
  :config
  (add-hook 'after-init-hook 'benchmark-init/deactivate))

(provide 'init-benchmark)
;;; init-benchmark.el ends here
