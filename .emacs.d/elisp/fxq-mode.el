;;��Ĭ��ģʽ��fundemental-mode��Ϊtext-mode 
(setq default-major-mode 'text-mode) 
;;�����﷨����ģʽ 
(global-font-lock-mode t) 
;;һЩ��������ã��ӱ�ĵط��������ģ�Ŀǰ��̽��٣�����Ҳû������ˣ��о�Ŀǰ���û��Ƿǳ������ 
;;�������һ������Ա������������ϸ�ĸ� 
(setq font-lock-maximum-decoration t) 
(setq font-lock-global-modes '(not text-mode)) 
(setq font-lock-verbose t) 
(setq font-lock-maximum-size '((t . 1048576) (vm-mode . 5250000))) 

;;����Ӧ���ļ��趨��Ӧ��ģʽ���Ա���ȷ���﷨���� 
;;�ļ�����������ʽ��ʾ��ע�ⲻҪ���渲����ǰ��Ķ��������� 
;;�޸����֮ǰ��C-h v auto-mode-alist������е����� 
(mapcar 
(function (lambda (setting) 
         (setq auto-mode-alist 
           (cons setting auto-mode-alist)))) 
'(("\\.\\(xml\\|rdf\\)\\'" . sgml-mode) 
   ("\\.\\([ps]?html?\\|cfm\\|asp\\)\\'" . html-helper-mode) 
   ("\\.css\\'" . css-mode) 
   ("\\.\\(emacs\\|session\\|gnus\\)\\'" . emacs-lisp-mode) 
   ("\\.wiki\\'" . emacs-wiki-mode) 
   ("\\.\\(jl\\|sawfishrc\\)\\'" . sawfish-mode) 
   ("\\.scm\\'" . scheme-mode) 
   ("\\.py\\'" . python-mode) 
   ("\\.\\(ba\\)?sh\\'" . sh-mode) 
   ("\\.l\\'" . c-mode) 
   ("\\.cin\\'" . c-mode) 
   ("\\.cli\\'" . c-mode) 
   ("\\.cva\\'" . c-mode) 
   ("\\.cdt\\'" . c-mode) 
   ("\\.cpd\\'" . c-mode) 
   ("\\.asm\\'" . asm-mode)
   ("\\.inc\\'" . asm-mode)
   ("\\.a86\\'" . asm-mode)
   ("\\.a30\\'" . asm-mode)
   ("\\.a38\\'" . asm-mode)
   ("\\.pac\\'" . dcl-mode)
   ("\\.html\\'" . html-mode)
   ("\\.img\\'" . hexl-mode)
   ("\\.hex\\'" . hexl-mode)
   ("\\.lnk\\'" . hexl-mode)
   ("\\.obj\\'" . hexl-mode)
   ("\\.max\\'" . maxima-mode)))
;;;
;;; cc-mode
;;;
;   style & indent in c-mode
(add-hook 'c-mode-common-hook
	  '(lambda ()
	     (c-set-style "bsd")
	     (setq c-basic-offset 4)))

; Externals to which Tab can be stricken even in case of being on right edge

(setq c-tab-always-indent nil)


(add-hook 'c-mode-hook 'linux-c-mode)
(add-hook 'c++-mode-hook 'linux-cpp-mode)
;; ����imenu������ʽΪ����������
(setq imenu-sort-function 'imenu--sort-by-name)
(defun linux-c-mode()
;; ���س�����C-j�Ĺ��ܣ����е�ͬʱ����
  (define-key c-mode-map [return] 'newline-and-indent)
  (interactive)
;; �Զ�ģʽ���ڴ���ģʽ�µ������{ʱ�����Զ����������õĶ��������
  (c-toggle-auto-state)
;; ѡ��C����ģʽ
  (c-set-style "bsd")
;;(c-set-style "K&R")
;; ��ģʽ�£�����Backspaceʱ��ɾ�����Ŀո�
  (c-toggle-hungry-state)
;; TAB���Ŀ������Ϊ8
  (setq c-basic-offset 4)
;; �ڲ˵��м��뵱ǰBuffer�ĺ�������
  (imenu-add-menubar-index)
;; ��״̬������ʾ��ǰ������ĸ��������ڲ�
  (which-function-mode)
 )
(defun linux-cpp-mode()
  (define-key c++-mode-map [return] 'newline-and-indent)
  (define-key c++-mode-map [(control c) (c)] 'compile)
  (interactive)
  (c-set-style "bsd")
;;(c-set-style "K&R")
  (c-toggle-auto-state)
  (c-toggle-hungry-state)
  (setq c-basic-offset 4)
  (imenu-add-menubar-index)
  (which-function-mode)
  )
