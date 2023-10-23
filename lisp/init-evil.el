(use-package evil
  :ensure t
  :init (evil-mode 1)
  :config
  (evil-set-leader '(normal emacs motion) (kbd "SPC"))
  )

(use-package fcitx
  :ensure t
  :config
  (setq fcitx-use-dbus nil
	fcitx-remote-command "fcitx5-remote")
  (fcitx-aggressive-setup))

(provide 'init-evil)
