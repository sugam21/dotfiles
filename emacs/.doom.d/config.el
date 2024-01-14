;; ORG MODE
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

 ;; org mode directory
(setq org-directory "~/org/")
;; for capture template
(setq org-default-notes-file (concat org-directory "/notes.org"))

(use-package org
  :config
  (setq org-ellipsis " ▾"))

(setq org-agenda-start-with-log-mode t)
(setq org-log-done 'time)
(setq org-log-into-drawer t)

(setq org-agenda-files
        '("~/org/todo.org"))
(setq org-todo-keywords
    '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!)")
      (sequence "BACKLOG(b)" "PLAN(p)" "READY(r)" "ACTIVE(a)" "REVIEW(v)" "WAIT(w@/!)" "HOLD(h)" "|" "COMPLETED(c)" "CANC(k@)")))

(setq org-refile-targets
    '(("archive.org" :maxlevel . 1)
      ("todo.org" :maxlevel . 1)))
  ;; Save Org buffers after refiling!
(advice-add 'org-refile :after 'org-save-all-org-buffers)

;; DEFT
(setq deft-extensions '("txt" "tex" "org"))
(setq deft-directory "~/org")

;; FONT
(setq doom-font (font-spec :family "JetBrainsMonoNL Nerd Font" :size 20 :weight 'Regular)
      doom-variable-pitch-font (font-spec :family "JetBrainsMonoNL Nerd Font" :size 20))
;; THEME
(setq doom-theme 'doom-solarized-dark)
;; LINE NUMBERS
(setq display-line-numbers-type t)

(use-package org-super-agenda
:after org-agenda

:init
(setq org-super-agenda-groups '((:name "Today"
                                 :time-grid t
                                 :scheduled today)
                                (:name "Due Today"
                                       :deadline today)
                                (:name "Important"
                                       :priority "A")
                                (:name "Overdue"
                                       :deadline past)
                                (:name "Due Soon"
                                       :deadline future)
                                (:name "Big Outcomes"
                                       :tag "bo")))
:config
(org-super-agenda-mode))

(use-package org-fancy-priorities
  :ensure t
  :hook
  (org-mode . org-fancy-priorities-mode)
  :config
  (setq org-fancy-priorities-list '("⚡" "⬆" "⬇" "☕")))

(with-eval-after-load 'org (global-org-modern-mode))

