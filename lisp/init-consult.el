;;; init --- consult
;;; Commentary:

;;

;;; Code:
(use-package consult
  :defer nil
  :bind
  ("C-x b" . consult-buffer)
  ("C-x L" . consult-line))

(provide 'init-consult)
;; init-consult.el ends here
