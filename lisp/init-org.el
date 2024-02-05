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

(setq org-agenda-files (list "~/.org/inbox.org"
                               "~/.org/task.org"
                               "~/.org/meeting.org"
							   ))

(setq org-capture-templates
	  '(("n" "Everything" entry (file "~/.org/inbox.org") "* %? %i\n %T\n")
		("t" "Todo" entry (file "~/.org/task.org") "** %? %i\n %T\n")
		("m" "Meeting" entry (file "~/.org/meeting.org") "** %u %^{PROMPT} 会议纪要\n*** %?\n %i\n")))


(setq org-refile-targets (quote(
							("~/.org/task.org" :maxlevel . 2)
							("~/.org/meeting.org" :maxlevel . 2))))

(provide 'init-org)
;;; init-org.el ends here
