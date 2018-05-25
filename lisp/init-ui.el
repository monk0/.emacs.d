;;; init-ui.el

(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)

(setq inhibit-startup-screen -1)
(setq-default cursor-type 'bar)

(set-face-attribute 'default nil :height 160)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-ui)
