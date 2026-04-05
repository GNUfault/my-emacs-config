(setq inhibit-startup-screen t)
(setq initial-scratch-message ";; Welcome to GNU Emacs!")
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq-default mode-line-format nil)
(global-display-line-numbers-mode 1)
(load-theme 'modus-vivendi t)
(global-hl-line-mode 1)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq frame-title-format
      '("" invocation-name ": " 
        (:eval (if (buffer-file-name) 
                   (abbreviate-file-name (buffer-file-name)) 
                   "%b"))
        (:eval (if (buffer-modified-p) "*" ""))))

(cua-mode 1)
(setq shift-select-mode t)

(electric-indent-mode -1)
(setq-default indent-line-function 'insert-tab)
(setq-default tab-always-indent nil)
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-S-f") 'query-replace)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(global-set-key (kbd "C-t") (lambda () (interactive) (split-window-right) (other-window 1) (eshell)))

(windmove-default-keybindings 'meta)

(global-set-key (kbd "M-q") 'delete-window)
(global-set-key (kbd "M-Q") 'delete-other-windows)
