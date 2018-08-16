;; this file is manager the package and configration stuff
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" .  "https://melpa.org/packages/")
	     )
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  )

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode)
  )

(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    )
  )

(use-package company
  :ensure t
  :config (global-company-mode)
  )

(use-package rainbow-delimiters
  :ensure t
  :config (rainbow-delimiters-mode)
  )

(use-package counsel
  :ensure t
  )

(use-package swiper
  :ensure t
  :config(progn
	   (ivy-mode 1)
	   (setq ivy-use-virtual-buffers t)
	   (setq enable-recursive-minibuffers t)
	   (global-set-key "\C-s" 'swiper)
	   (global-set-key (kbd "C-c C-r") 'ivy-resume)
	   (global-set-key (kbd "<f6>") 'ivy-resume)
	   (global-set-key (kbd "M-x") 'counsel-M-x)
	   (global-set-key (kbd "C-x C-f") 'counsel-find-file)
	   (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
	   )
  )

(use-package smart-mode-line
  :ensure t
  )

(use-package material-theme
  :ensure t
  )

(use-package avy
  :ensure t
  :bind ("M-s" . avy-goto-char)
  )

(provide 'init-package)
