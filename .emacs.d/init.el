;; add base load-path
(add-to-list 'load-path "~/.emacs.d/conf")
(add-to-list 'load-path "~/.emacs.d/elisp")

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
