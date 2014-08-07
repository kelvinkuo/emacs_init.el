; kk

; close wellcome msg
(setq inhibit-startup-message t)

; show line num
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

;;yasnippet
;;(add-to-list 'load-path
;;	     "~/.emacs.d/plugins/yasnippet")
;;(require 'yasnippet)

;;snippets
;;(setq yas-snippet-dirs '("~/.emacs.d/snippets_kk"))
;;(yas-global-mode 1)

;;color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'monokai t)

;;;auto complete
;(add-to-list 'load-path "~/.emacs.d/")
;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
;(ac-config-default)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
