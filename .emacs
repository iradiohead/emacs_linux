;;设置你的全名和邮件，在发邮件时可以用到
(setq user-full-name "Radiohead")
(setq user-mail-address "kjin1983@gmail.com")
;;设置你的书签文件，默认是~/.emacs.bmk，我喜欢把有关emacs的文件尽量放在一个文件夹，所以就修改了。
(setq bookmark-default-file "~/.emacs.d/.emacs.bmk")
;;load-path就同bash中的$PATH相似，emacs所需要的Elisp包都得在load-path里的文件夹中，~/.emacs.d/elisp是我自己添加的Elisp包
(setq load-path (cons "~/.emacs.d/elisp" load-path))
;;设置info的路径，也可通过Shell的全局变量$INFOPATH设置
(add-to-list 'Info-default-directory-list "~/local/info/")
;;设置gnus启动的文件。默认是为~/.gnus.el
(setq gnus-init-file "~/.emacs.d/elisp/fxq-gnus.el")
;;由于我的配置文件很长，所以按照分类分别放在不同的文件里，方便管理

(load "jk-basic-config")
(load "jk-language")
(load "jk-calendar")
(load "fxq-folding")
;;(load "fxq-ido")
;;(load "jk-dictionary")
(load "fxq-function")
;;(load "fxq-mew")
(load "fxq-w3m")
;;(load "fxq-erc")
(load "fxq-dired")
(load "jk-mode")
(load "fxq-key-bindings")
(load "fxq-tnsdl")
;; (load "fxq-robot-mode")
(load "fxq-python-mode")
;;(load "fxq-ipython-mode")
(load "fxq-psvn");;SVN(SubVersion) plugin
(load "fxq-plm");;PL/M highlight
(load "color-theme")
;;(load "simple-call-tree")
;;(load "webkit")
;;(require 'webkit)
;; ;;Setting for gnuserv
;; (require 'gnuserv)
;; (gnuserv-start)
;; ;; 在当前frame打开
;; (setq gnuserv-frame (selected-frame))
;; ;; 打开后让emacs跳到前面来
;; (setenv "GNUSERV_SHOW_EMACS" "1")

(require 'redo)
(tool-bar-add-item "stock_redo"
                   'redo
                   'redo
                   :help "Redo(control f3)")
(require 'find-recursive)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; psvn.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; combined the SVN(SubVersion) in emacs
(require 'psvn)

;;(load "maxima")
;;(setq auto-mode-alist (cons '("\\.max" . maxima-mode) auto-mode-alist))
;(setq load-path (cons "D:\Program Files\Maxima-5.12.0\share\maxima\5.12.0\emacs" load-path ))
;;(autoload 'maxima "maxima" "Running Maxima interactively" t)
;;(autoload 'maxima-mode "maxima" "Maxima editing mode" t)

;;add line number for display
;;(require 'wb-line-number) --kjin do not need this, as in jk-basic-config.el already set (global-linum-mode)

;;Add tramp plink method by Ferry on 20120412
;; (require 'tramp)
;; (setq tramp-default-method "plink")
;; (setq tramp-auto-save-directory "~/.emacs.tmp")
;; (let ((my-tramp-methods nil)  
;;       (my-tramp-ssh-method   
;;        '("ssh"   
;;          (tramp-login-program "ssh")   
;;          (tramp-login-args (("%h")   
;;                             ("-l" "%u")  
;;                             ("-p" "%p")   
;;                             ("-e" "none")   
;;                             ("-A")))  
;;          (tramp-remote-sh "C:/APPS/cygwin/bin")   
;;          (tramp-copy-program nil)   
;;          (tramp-copy-args nil)  
;;          (tramp-copy-keep-date nil)  
;;          (tramp-password-end-of-line nil)   
;;          (tramp-gw-args (("-o" "GlobalKnownHostsFile=/dev/null")   
;;                          ("-o" "UserKnownHostsFile=/dev/null")  
;;                          ("-o" "StrictHostKeyChecking=no")))   
;;          (tramp-default-port 22))))  
;;   (setq tramp-methods (dolist (elt tramp-methods my-tramp-methods)  
;;     (if (string= (car elt) "ssh")  
;;         (setq my-tramp-methods (cons my-tramp-ssh-method my-tramp-methods))  
;;       (setq my-tramp-methods (cons elt my-tramp-methods))))))  

;; add tab mode by Ferry on 20120413
(require 'tabbar)  
(tabbar-mode 1)  	
(define-prefix-command 'lwindow-map)

;; added by Ferry on 09072012 for adding auto-complete function
;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "~/site-lisp/auto-complete/ac-dict")
;;(ac-config-default)

;; added by Ferry on 07082012 for Aspell function
;; (add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")
;; (setq ispell-program-name "aspell")
;; (setq ispell-personal-dictionary "D:/emacs/.emacs.d/ispell.el")
;; (require 'ispell)

;; added by Ferry on 30072013 for ignoring different directory and file in special mode
;; (require 'ignoramus)
;; (ignoramus-setup)

;; added by Ferry on 15112013 to use whitespace
(require 'whitespace)  ;; enable by M-x whitespace-mode

;;(setq ecb-auto-activate t)

;;(color-theme-select)

;;这个东西必须放在最后
;;desktop.el是一个可以保存你上次emacs关闭时的状态，下一次启动时恢复为上次关闭的状态。就和vmware的suspend一样。
;; (load "desktop") 
;; (desktop-save-mode) 
;; (desktop-read)

;;kjin add by emacs automaitcally by click menu items
(put 'erase-buffer 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Dropbox/emacs_docs/tutorial_mine/" "~/Dropbox/emacs_docs/")))
 '(truncate-partial-width-windows nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
                                                                                             

(load "highlight-symbol")
(require 'highlight-symbol)
(add-hook 'text-mode-hook 'highlight-symbol-mode)
(add-hook 'c-mode-hook 'highlight-symbol-mode)
(add-hook 'c++-mode-hook 'highlight-symbol-mode)
(add-hook 'tnsdl-mode-hook 'highlight-symbol-mode)
(add-hook 'java-mode-hook 'highlight-symbol-mode)
(add-hook 'perl-mode-hook 'highlight-symbol-mode)
(add-hook 'php-mode-hook 'highlight-symbol-mode)
(add-hook 'emacs-lisp-mode-hook 'highlight-symbol-mode)
(load "highlight-parentheses")
(require 'highlight-parentheses)
(add-hook 'c-mode-hook 'highlight-parentheses-mode)
(add-hook 'c++-mode-hook 'highlight-parentheses-mode)
(add-hook 'tnsdl-mode-hook 'highlight-parentheses-mode)
(add-hook 'java-mode-hook 'highlight-parentheses-mode)
(add-hook 'perl-mode-hook 'highlight-parentheses-mode)
(add-hook 'php-mode-hook 'highlight-parentheses-mode)
(add-hook 'emacs-lisp-mode-hook 'highlight-parentheses-mode)


;;Setting for ibuffer
(require 'ibuffer)


;;Setting for wb-line-number
;;(require 'wb-line-number)
;;(setq truncate-partial-width-windows nil) ; use continuous line
;;(set-scroll-bar-mode nil)                 ; no scroll bar, even in x-window system
