;; add base load-path
(add-to-list 'load-path "~/.emacs.d/conf")
(add-to-list 'load-path "~/.emacs.d/elisp")
(let ((default-directory "~/.emacs.d/elisp/"))
  (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/.emacs.d/repos")
(let ((default-directory "~/.emacs.d/repos/"))
  (normal-top-level-add-subdirs-to-load-path))

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
