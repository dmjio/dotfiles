;; ssl
(require 'tls)

;; hide toolbar
(setq-default mode-bar-mode -1)

;; theme
(load-theme 'tango-dark)

;; dired
(setq dired-recursive-deletes 'always)

;; wind move
(windmove-default-keybindings)

;; smex
(global-set-key (kbd "M-x") 'smex)

;; backwards delete
(setq wg-prefix-key (kbd "C-c w"))
(global-set-key "\C-q" 'backward-kill-word)

;;movement / window config
(global-set-key (kbd "<C-up>") 'shrink-window-vertically)
(global-set-key (kbd "<C-down>") 'enlarge-window-vertically)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)

;; shortcut for editing init.el
(global-set-key (kbd "C-x y")
  (lambda () (interactive) (find-file user-init-file)))

;; go C-x o and C-x p go between windows in opposite order
(global-set-key (kbd "C-x p") (lambda ()
				(interactive)
				(other-window -1)))

;; package managers
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Haskell
(require 'haskell-mode)
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'haskell-mode-hook 'haskell-decl-scan-mode)

;; ;; Haskell remapping
(eval-after-load "haskell-mode"
  '(progn
     (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-file)
     (define-key haskell-mode-map (kbd "C-c C-b") 'haskell-interactive-switch)
     (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-mode-cabal-compile)
     (define-key haskell-mode-map (kbd "C-c C-n") 'haskell-navigate-imports)
     (define-key haskell-mode-map (kbd "C-c C-a") 'haskell-mode-format-imports)
     (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
     (define-key haskell-mode-map (kbd "C-c C-v") 'haskell-cabal-visit-file)
     (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
     (define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)))

;; magit key bindings
(global-set-key (kbd "C-x C-g") 'magit-status)

;; yasnippets
;; (require 'yasnippet "~/.emacs.d/elpa/yasnippet-0.9.0.1/yasnippet.el")
(setq yas-global-mode 1)
'(yas-reload-all)

;; fixes bad formatting on lines
(setq yas/indent-line nil)

;; ;; load yasnippet minor mode when major haskell-mode starts
(add-hook 'haskell-mode-hook
	  '(lambda ()
	     (yas-minor-mode)
	     (yas-reload-all)))

;; ;; aligning type sig docs
(global-set-key (kbd "C-x a r") 'align-regexp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-align-imports-pad-after-name t)
 '(haskell-ask-also-kill-buffers nil)
 '(haskell-interactive-mode-scroll-to-bottom t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-reload-with-fbytecode t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl))
 '(haskell-process-use-presentation-mode t)
 '(package-selected-packages
   (quote
    (swift-mode swift3-mode dumb-jump yasnippet-snippets magit haskell-emacs yasnippet yaml-mode w3 smex scpaste sass-mode projectile org-bullets nodejs-repl nix-mode names markdown-mode magithub lua-mode jira intero ido-vertical-mode hive helm haskell-tab-indent ghci-completion ghc-imported-from flymake-haskell-multi flycheck-hdevtools flycheck-haskell fiplr ess-smart-underscore elm-mode company-ghci company-ghc cmm-mode ag ac-haskell-process))))

;; white space
(setq-default show-trailing-whitespace t)
(setq haskell-process-args-ghci
  '("-ferror-spans" "-fshow-loaded-modules"))

(setq haskell-process-args-cabal-repl
  '("--ghc-options=-ferror-spans -fshow-loaded-modules"))

(setq haskell-process-args-stack-ghci
  '("--ghci-options=-ferror-spans -fshow-loaded-modules"
     "--no-build" "--no-load"))

(setq haskell-process-args-cabal-new-repl
  '("--ghc-options=-ferror-spans -fshow-loaded-modules"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
