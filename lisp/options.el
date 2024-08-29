;; close tool bar
(tool-bar-mode -1)

;; close scroll bar
(scroll-bar-mode -1)

;; close menu bar
(menu-bar-mode -1)

;; show line number
(global-display-line-numbers-mode 1)

;; highlight current line
(global-hl-line-mode 1)


;; open dotfile quickly
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; bind the above function to <F2>
(global-set-key (kbd "<f2>") 'open-init-file)

(provide 'options)
