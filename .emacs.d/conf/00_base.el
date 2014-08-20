;; hide tool-bar
(tool-bar-mode -1)

;; hide menu-bar
(menu-bar-mode -1)

;; prevent from creating backup
(setq make-backup-files nil)

;; skip startup message
(setq inhibit-startup-message t)

;; emphasize blankets
(show-paren-mode t)

;; yen -> backspace
(define-key global-map [?¥] [?\\])

;; blink cursor
(blink-cursor-mode t)

;; coloring select region
(setq transient-mark-mode t)

;; auto reload file
(global-auto-revert-mode 1)

;; expand tab to space
(setq-default tab-width 8 indent-tabs-mode nil)

;; disable bell
(setq ring-bell-function 'ignore)

;; hilight current line
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background  "#98FB98"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)

