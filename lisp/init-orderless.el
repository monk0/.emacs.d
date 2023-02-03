;;; init --- orderless.el
;;; Commentary:

;;

;;; Code:
(use-package orderless
  :demand t
  :config
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))

(provide 'init-orderless)
;;; init-orderless.el ends here
