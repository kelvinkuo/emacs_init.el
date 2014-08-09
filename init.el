; kk's Emacs Init.el

; =============== Common Config ===============
;; color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'monokai t)

;; close wellcome msg
(setq inhibit-startup-message t)

;; show line num
(global-linum-mode t)

; =============== Package Manager ===============
(require 'package)
(dolist (source '(("marmalade" . "http://marmalade-repo.org/packages/")
                  ("elpa" . "http://tromey.com/elpa/")
                  ;; TODO: Maybe, use this after emacs24 is released
                  ;; (development versions of packages)
                  ("melpa" . "http://melpa.milkbox.net/packages/")
                  ))
  (add-to-list 'package-archives source t))
(package-initialize)

; =============== C/C++ Develop ===============
;; indent
(require 'cc-mode)
(setq-default c-basic-offset 4
	      c-default-style "linux")
(setq-default tab-width 4
	      indent-tabs-mode t)
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

;; autopair
(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)

;; ecb
(require 'ecb)
(require 'ecb-autoloads)

;; flymake
(require 'flymake)
(add-hook 'find-file-hook 'flymake-find-file-hook)

;; yasnippet
;;; yasnippet must be loaded before auto-complete, so that they can work together
(require 'yasnippet)
(yas-global-mode 1)
;;snippets
;;(setq yas-snippet-dirs '("~/.emacs.d/snippets_kk"))
;;(yas-global-mode 1)

;; auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")
