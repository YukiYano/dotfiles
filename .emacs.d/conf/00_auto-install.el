(when (require 'auto-install nil t)
  ;; set install-dir
  (setq auto-install-directory "~/.emacs.d/auto-install")
  ;; get package list from emacswiki
  (auto-install-update-emacswiki-package-name t)
  ;; if neeed, set proxy
  ;; (setq url-proxy-service '(("http" . "localhost:8080")))
  ;; enable installed package
  (auto-install-compatibility-setup))
