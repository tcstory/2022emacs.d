(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

(provide 'init-doom-modeline)
