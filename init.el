;;kk

;;close wellcome msg
(setq inhibit-startup-message t)

;;show line num
(global-linum-mode t)

;;yasnippet
(add-to-list 'load-path
	     "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)

;;snippets
(setq yas-snippet-dirs '("~/.emacs.d/snippets_kk"))
(yas-global-mode 1)

;;color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'tango-dark t)
