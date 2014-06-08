;; use anything
(require 'anything)
(require 'anything-config)

;; anything -> \C-;
(define-key global-map (kbd "C-;") 'anything)

;; show file history
(require 'recentf)
(setq recentf-max-saved-items 1000)
(recentf-mode 1)

;; show buffer
(setq anything-sources
      '(anything-c-source-buffers+
        anything-c-source-recentf
        anything-c-source-files-in-current-dir
        anything-c-source-kill-ring
        ))

;; the maximun buffer of kill-ring
(setq kill-ring-max 20)
;; the length of text showed by anything
(setq anything-kill-ring-threshold 5)
(global-set-key (kbd "C-M-y") 'anything-show-kill-ring)
