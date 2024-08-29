(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-theme 'kanagawa t)

(require 'options)

(require 'init-evil)
(require 'autothemer)

(require 'which-key)
(setq which-key-idle-delay 0.5)
(which-key-mode 1)

(require 'ox-publish)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-publish-project-alist
 '(("catwinee pages"
    :base-directory "~/workspace/catwinee.github.io/org/"
    :base-extension "org"
    :publishing-directory "~/workspace/catwinee.github.io/docs/"
    :publishing-function org-html-publish-to-html
    :recursive t)
    ;; ("catwinee static"
    ;; :base-directory "~/workspace/catwinee.github.io/org/"
    ;; :base-extension "css\\|tst\\|jpg\\|git\\|png"
    ;; :publishing-directory "~/workspace/catwinee.github.io/html/"
    ;; :publishing-function org-publish-attachment
    ;; :recursive t)
    ;; ("catwinee" :components ("catwinee pages" "catwinee static"))
   ))
 (setq org-html-validation-link nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(toc-org orgq evil)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
