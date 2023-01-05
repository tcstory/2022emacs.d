(use-package evil
  :ensure t
  :init (evil-mode 1)
  :config
  (evil-set-leader '(normal emacs motion) (kbd "SPC"))
  (evil-define-key nil 'global (kbd "<leader>j") 'windmove-down)
  (evil-define-key nil 'global (kbd "<leader>k") 'windmove-up)
  (evil-define-key nil 'global (kbd "<leader>l") 'windmove-right)
  (evil-define-key nil 'global (kbd "<leader>h") 'windmove-left)
  )

(use-package fcitx
  :ensure t
  :config
  (setq fcitx-use-dbus nil
	fcitx-remote-command "fcitx5-remote")
  (fcitx-aggressive-setup))

(provide 'init-evil)
