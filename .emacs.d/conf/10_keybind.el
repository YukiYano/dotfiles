;; swap alt <-> command (for mac)
;(setq ns-command-modifier (quote meta))
;(setq ns-alternate-modifier (quote super))

;; undo -> ctrl+u
(define-key global-map (kbd "C-u") 'undo)

;; tab-to-tab-stop -> ctrl+TAB
(define-key global-map (kbd "<C-tab>") 'tab-to-tab-stop)

;; goto-line -> alt+g
(define-key global-map (kbd "M-g") 'goto-line)

;; replace-string -> alt+r
(define-key global-map (kbd "M-r") 'replace-string)

;; indent-region -> ctrl-alt-¥
(define-key global-map (kbd "C-M-¥") 'indent-region)

;;; for Mac,  cmd key -> meta
(when (eq system-type 'darwin)
  (setq mac-option-key-is-meta nil
	mac-command-key-is-meta t
	mac-command-modifier 'meta
	mac-option-modifier 'none))

;; change font-size by \C-+ and \C--
;; http://d.hatena.ne.jp/buchio/20110525
(defun increase-font-size ()
  (interactive)
  (set-face-attribute 'default
                      nil
                      :height
                      (+ 10 (face-attribute 'default :height))))

(defun decrease-font-size ()
  (interactive)
  (set-face-attribute 'default
                      nil
                      :height
                      ((lambda (h) (if (<= h 10) h (- h 10)))
                       (face-attribute 'default :height))))


;(global-set-key [C-mouse-4] 'increase-font-size)
;(global-set-key [C-wheel-up] 'increase-font-size)
(global-set-key [?\C-+] 'increase-font-size)
;(global-set-key [?\C-=] 'increase-font-size)

;(global-set-key [C-mouse-5] 'decrease-font-size)
;(global-set-key [C-wheel-down] 'decrease-font-size)
(global-set-key [?\C--] 'decrease-font-size)
