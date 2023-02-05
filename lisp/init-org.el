;;; init -- org mode settings
;;; Commentary

;; 

;;; Code:
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-default-notes-file "~/.org/inbox.org"
	  org-log-done 'time
	  org-agenda-start-on-weekday 0)

(setq org-agenda-files (list "~/org/inbox.org"
                               "~/org/email.org"
                               "~/org/tasks.org"
                               "~/org/wtasks.org"
                               "~/org/journal.org"
                               "~/org/wjournal.org"
                               "~/org/kb.org"
                               "~/org/wkb.org"
							   ))

(provide 'init-org)
;;; init-org.el ends here
