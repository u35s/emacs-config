;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; (package-refresh-contents)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-evil-visualstar-mode t)
 '(package-selected-packages
   (quote
	(go-guru go-impl go-rename evil-anzu evil-numbers evil-magit evil-visualstar magit molokai-theme find-file-in-project go-autocomplete go-mode evil git-gutter smex window-number switch-window auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; 使用molokai
(load-theme 'molokai 1)
;; 默认设置修改 
;; (global-linum-mode 1)
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
;; m-space键复制
(setq create-lockfiles nil)
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "M-SPC") 'set-mark-command)
;; golang
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)
;; Call Gofmt before saving
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
;; 窗口切换
(require 'switch-window)
(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "C-x 1") 'switch-window-then-maximize)
(global-set-key (kbd "C-x 2") 'switch-window-then-split-below)
(global-set-key (kbd "C-x 3") 'switch-window-then-split-right)
(global-set-key (kbd "C-x 0") 'switch-window-then-delete)

(global-set-key (kbd "C-x 4 d") 'switch-window-then-dired)
(global-set-key (kbd "C-x 4 f") 'switch-window-then-find-file)
(global-set-key (kbd "C-x 4 m") 'switch-window-then-compose-mail)
(global-set-key (kbd "C-x 4 r") 'switch-window-then-find-file-read-only)

(global-set-key (kbd "C-x 4 C-f") 'switch-window-then-find-file)
(global-set-key (kbd "C-x 4 C-o") 'switch-window-then-display-buffer)

(global-set-key (kbd "C-x 4 0") 'switch-window-then-kill-buffer)
(require 'window-number)
(window-number-mode 1)

(define-prefix-command 'ctl-w-map)
(global-set-key (kbd "C-w") 'ctl-w-map)
(global-set-key (kbd "C-w h") 'windmove-left)
(global-set-key (kbd "C-w j") 'windmove-down)
(global-set-key (kbd "C-w k") 'windmove-up)
(global-set-key (kbd "C-w l") 'windmove-right)
;; smex
(require 'smex) ; Not needed if you use package.el
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ;; This is your old M-x.
;; git gutter
(global-git-gutter-mode +1)

;; evil
(require 'evil)
(evil-mode 1)
;(setq default-tab-width 4)
;(setq evil-shift-width 4)
(setq-default tab-width 4)
;; evil magit
(require 'evil-magit)
;; magit-status 
(global-set-key (kbd "C-x g") 'magit-status)
;; evil visualstar  like gd but now is */#
(global-evil-visualstar-mode 1)
;; like vim ctrl-a ctrl-d
(define-key evil-normal-state-map (kbd "C-c a") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-c d") 'evil-numbers/dec-at-pt)

;; system clipboard
(load "conf-evil-clipboard")
(require 'conf-evil-clipboard)

;;iterm
(load "iterm")
;; awesome-tab
(require 'awesome-tab)
(awesome-tab-mode t)
(global-set-key (kbd "C-x t") 'awesome-tab-forward-tab)
;; file-find
(global-set-key (kbd "C-x p") 'find-file-in-project)

;; anzu
(global-anzu-mode +1)
