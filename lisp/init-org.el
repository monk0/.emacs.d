;;; init-org.el

(require 'org)

(setq org-directory "~/.org")

(setq org-default-notes-file (concat org-directory "/inbox.org"))

(setq org-src-fontify-natively t)

(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(global-set-key (kbd "C-c c") 'org-capture)

(setq org-capture-templates
      `(("t" "todo" entry (file "")  ; "" => `org-default-notes-file'
         "* NEXT %?\n%U\n" :clock-resume t)
        ("n" "note" entry (file "")
         "* %? :NOTE:\n%U\n%a\n" :clock-resume t)
        ))

(define-key global-map (kbd "C-c l") 'org-store-link)
(define-key global-map (kbd "C-c a") 'org-agenda)

;; Various preferences
(setq org-log-done t
      org-edit-timestamp-down-means-later t
      org-archive-mark-done nil
      org-hide-emphasis-markers t
      org-catch-invisible-edits 'show
      org-export-coding-system 'utf-8
      org-fast-tag-selection-single-key 'expert
      org-html-validation-link nil
      org-export-kill-product-buffer-when-displayed t
      org-tags-column 80)

;; 
(setq org-agenda-files (list "~/.org/inbox.org"
			     "~/.org/project.org"
			     "~/.org/archive.org"))

(setq org-refile-targets (quote (("project.org":maxlevel . 1)("meeting.org":maxlevel . 1)("archive.org":maxlevel . 2))))

(provide 'init-org)
