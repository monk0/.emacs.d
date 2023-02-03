;;; init --- consult
;;; Commentary:

;;

;;; Code:
(use-package consult
  :demand t
  :bind
  ("C-x b" . consult-buffer)
  ("C-x L" . consult-line))

(provide 'init-consult)
;; init-consult.el ends here
