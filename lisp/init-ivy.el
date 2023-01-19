;;; init-ivy.el --- ivy swiper
;;; Commentary:

;; ivy mode

;;; Code:
(use-package ivy
  :defer nil
  :init
  (setq ivy-use-virtual-buffers t
	ivy-count-format "(%d%d) "
	enable-recursive-minibuffers t)
  :hook (after-init-hook . ivy-mode)
;;  :bind (("\C-s") . 'swiper-isearch)
  )

(use-package swiper
  :config
  (global-set-key (kbd "C-s") 'swiper-isearch)
  (global-set-key (kbd "C-x b") 'ivy-switch-buffer)
  (global-set-key (kbd "C-c v") 'ivy-push-view)
  (global-set-key (kbd "C-c V") 'ivy-pop-view))

(provide 'init-ivy)
;;; init-ivy.el ends here
