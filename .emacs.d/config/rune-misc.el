(add-to-list 'load-path "~/.emacs.d/vendor/")
(put 'dired-find-alternate-file 'disabled nil)

;; (add-hook 'sgml-mode-hook 'emmet-mode)
;; (add-hook 'css-mode-hook 'emmet-mode)
;; (add-hook 'haml-mode-hook 'emmet-mode)

;; (add-to-list 'load-path (expand-file-name "~/.emacs.d/vendor/scss-mode"))
;; (autoload 'scss-mode "scss-mode")
;; (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; (require 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.handlebars\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))

(add-to-list 'auto-mode-alist '("Cask" . emacs-lisp-mode))
(provide 'rune-misc)