(require 'evil)
(require 'evil-leader)
(require 'evil-numbers)
(require 'paredit)
(require 'evil-paredit)
(require 'undo-tree)
(require 'key-chord)

;; I don't want paredit putting spaces before delimiters
(defun paredit-space-for-delimiter-p (endp delimiter)
  (and (not (if endp (eobp) (bobp)))
       (memq (char-syntax (if endp (char-after) (char-before)))
             (list ?\"  ;; REMOVED ?w ?_
                   (let ((matching (matching-paren delimiter)))
                     (and matching (char-syntax matching)))))))

;; (setq evil-motion-state-modes (append evil-emacs-state-modes evil-motion-state-modes))
;; (setq evil-emacs-state-modes nil)

(setq evil-leader/in-all-states t)
(evil-leader/set-leader ",")
(evil-mode nil)
(global-evil-leader-mode 1)
(evil-mode 1)
(setq evil-default-cursor t)

(define-key evil-ex-map "e " 'ido-find-file)
(define-key evil-ex-map "w " 'ido-write-file)
(define-key evil-ex-map "b " 'ido-switch-buffer)

(global-set-key (kbd "C-a") 'evil-numbers/inc-at-pt) ;; This increas a number by one

(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)

;; (add-hook 'shell-mode (lambda () (setq evil-emacs-state-modes t)))

(provide 'rune-evil)
