; Set UTF-8 as main encoding
(set-language-environment "UTF-8")

; Add color support on shell mode
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

; Switch windows using alt + directional arrows
(windmove-default-keybindings 'meta)

; Display the opened buffers using C-x C-b
(global-set-key (kbd "C-x C-b") 'electric-buffer-list)

; Enable syntax coloring if possible
(global-font-lock-mode t)

; Use y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

; Add a new line at end of file while saving if not already one
(setq require-final-newline 't)

; Hide menu
(menu-bar-mode -1)

; Display column number
(column-number-mode 1)

; Disable the annoying bell
(setq ring-bell-function 'ignore)

; Display time
(display-time-mode t)

; C-c h is now replace-string
(global-set-key (kbd "C-c h") 'replace-string)

; Display trailing whitespace
(setq-default show-trailing-whitespace t)
