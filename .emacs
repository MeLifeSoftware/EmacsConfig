(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(package-selected-packages
   (quote
    (counsel swiper mart-mode-line-powerline-theme smart-mode-line-powerline-theme rainbow-delimiters ace-window material company-mode which-key which-keys use-package try material-theme elpy))))

(add-to-list 'load-path "~")

(require 'init-package)
(require 'init-emhance)
(require 'init-key)
(require 'init-package)

;;init-ui 
(custom-set-faces
 '(default ((t (:family "Microsoft YaHei Mono" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

(show-paren-mode)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(sml/setup)
(sml/apply-theme 'powerline)

(set-frame-height (selected-frame) 29)
(set-frame-width (selected-frame) 100)
