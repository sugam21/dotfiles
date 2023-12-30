(setq doom-font (font-spec :family "JetBrainsMonoNL Nerd Font" :size 18 :weight 'Regular)
      doom-variable-pitch-font (font-spec :family "JetBrainsMonoNL Nerd Font" :size 18))

(setq doom-theme 'doom-gruvbox)

(setq display-line-numbers-type t)

(setq org-directory "~/org/")

(use-package! org-super-agenda
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

(use-package! org-fancy-priorities
  :ensure t
  :hook
  (org-mode . org-fancy-priorities-mode)
  :config
  (setq org-fancy-priorities-list '("⚡" "⬆" "⬇" "☕")))

(with-eval-after-load 'org (global-org-modern-mode))
