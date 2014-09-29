;; Package Manager
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; add cabal bin to search path
(setenv "PATH" (concat "~/.cabal/bin:" (getenv "PATH")))
(add-to-list 'exec-path "~/.cabal/bin")

;; Emacs Files
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/snippets/")
(load-file "~/.emacs.d/yasnippet.el")

;; rebind inferior mode to interactive mode 
(eval-after-load "haskell-mode"
  '(progn
     (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
     (define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
     (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
     (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
     (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
     (define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
     (define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)
     (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)))

;; haskell indentation
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

;; treat heist files as html
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; ;; ghc-mod
(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

(setq ghc-ghc-options '("-Wall"))

;; load yasnippet minor mode when major haskell-mode starts
;; (add-hook 'haskell-mode-hook
;;           '(lambda ()
;;              (yas-minor-mode)))

;; haskell stylish mode
;; (setq haskell-stylish-on-save t)

;; Yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(setq yas/indent-line nil) ;; yay!!

;; theme
(load-theme 'tango-dark)

;; backwards delete
(setq wg-prefix-key (kbd "C-c w"))
(global-set-key "\C-q" 'backward-kill-word)

;; clipboard enablement
;; (setq x-select-enable-clipboard t)

;;movement / window config
(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)

;; go C-x o and C-x p go between windows in opposite order
(global-set-key (kbd "C-x p") (lambda ()
                                (interactive)
                                (other-window -1)))

;; custom haskell-mode settings
(custom-set-variables
 '(haskell-process-log t)
 '(haskell-process-type 'cabal-repl) ;; mui importante
 '(inferior-haskell-wait-and-jump t))

;; remove unused imports
(custom-set-variables
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-suggest-hoogle-imports t)
 '(haskell-process-log t))

;; magit bindings
(global-set-key (kbd "C-x C-g") 'magit-status)

;; ghc company mode
;; (load-file "~/.emacs.d/elpa/company-20140823.1556/company.el")
;; (require 'company)
;; (add-hook 'haskell-mode-hook 'company-mode)

;; ;; ghc
;; (add-to-list 'company-backends 'company-ghc)
;; (custom-set-variables '(company-ghc-show-info t))
