(use-package dirvish
  :ensure t
  :init
  (dirvish-override-dired-mode)
  ;; Don't worry, Dirvish is still performant even if you enable all these attributes
  (setq dirvish-attributes
      '(vc-state subtree-state all-the-icons collapse file-time file-size)))


(provide 'init-dirvish)
