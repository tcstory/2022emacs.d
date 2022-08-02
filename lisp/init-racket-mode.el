(use-package racket-mode
  :ensure t
  :init
  (add-hook 'racket-before-run-hook #'racket-repl-clear) 
  (add-hook 'racket-mode-hook
          (lambda ()
            (define-key racket-mode-map (kbd "<f5>") 'racket-run)))
  )


(provide 'init-racket-mode)
