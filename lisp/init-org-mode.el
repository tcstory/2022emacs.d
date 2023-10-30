(use-package org
  :pin gnu)

;; Must do this so the agenda knows where to look for my files
;; (setq org-agenda-files '("~/Coding/org-note/org-life/"))
(setq org-agenda-files (directory-files-recursively "~/Coding/org-note/org-life/" "\\.org$"))

;; When a TODO is set to a done state, record a timestamp
;; (setq org-log-done 'time)

;; Follow the links
(setq org-return-follows-link  t)

;; Associate all org files with org mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; Make the indentation look nicer
(add-hook 'org-mode-hook 'org-indent-mode)

;; Remap the change priority keys to use the UP or DOWN key
(define-key org-mode-map (kbd "C-c <up>") 'org-priority-up)
(define-key org-mode-map (kbd "C-c <down>") 'org-priority-down)

;; Shortcuts for storing links, viewing the agenda, and starting a capture
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)

;; When you want to change the level of an org item, use SMR
(define-key org-mode-map (kbd "C-c C-g C-r") 'org-shiftmetaright)

;; Hide the markers so you just see bold text as BOLD-TEXT and not *BOLD-TEXT*
(setq org-hide-emphasis-markers t)

;; Wrap the lines in org mode so that things are easier to read
(add-hook 'org-mode-hook 'visual-line-mode)


;; capture

(setq org-capture-templates
      '(    
        ("w" "澳觅"
         entry (file+headline "~/Coding/org-note/org-life/aomi/2023.org" "澳觅")
         "* TODO [#B] %?"
         :empty-lines 1)
      ))


(provide 'init-org-mode)
