(require 'package)
(add-to-list 'package-archives
                     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(require 'solarized-theme)
(require 'org-bullets)
(require 'helm)
(require 'helm-config)
(require 'company)

(set-default-font "consolas 10")
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-startup-screen t)
(global-linum-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(helm-mode 1)

(add-hook 'after-init-hook 'global-company-mode)

(setq solarized-height-minus-1 1.0)
(setq solarized-height-plus-1 1.0)
(setq solarized-height-plus-2 1.0)
(setq solarized-height-plus-3 1.0)
(setq solarized-height-plus-4 1.0)
(setq solarized-use-variable-pitch nil)
(setq solarized-scale-org-headlines nil)
(load-theme 'solarized-dark t)

;; orgmode
(setq org-directory '("~/org"))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-clock-idle-time 10)
(setq org-log-done t)

(setq org-refile-targets '((org-agenda-files . (:maxlevel . 6))))
(setq org-refile-use-outline-path 'file)
(setq org-outline-path-complete-in-steps nil)
(setq org-refile-allow-creating-parent-nodes 'confirm)
(setq org-reverse-note-order t)
(setq org-completion-use-ido nil)

(setq org-capture-templates
            '(("b" "Bug" entry (file+headline "~/org/work.org" "Bug")
                 "* TODO %^L\n  %?" :prepend)))

(setq org-agenda-files
            '("~/org/self.org"
              "~/org/work.org"))

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
