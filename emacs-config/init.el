
;; from melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/"))

;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

;; ;; if you want to change prefix for lsp-mode keybindings.
;; (setq lsp-keymap-prefix "s-l")


;; (add-hook 'scheme-mode-hook
;;           (lambda () (local-set-key (kbd "C-x C-e") #'arei-evaluate-last-sexp)))
;; 
;; (global-set-key (kbd "C-x C-e") #'arei-evaluate-last-sexp)
;; (add-hook 'scheme-mode-hook (lambda () (interactive) (geiser-mode 0)))
;; if geiser active ?
;; ((lambda ()
;;    (interactive)
;;    (geiser-mode 0)))

;;           (shell-command (concat "pdflatex " buffer-file-name))))


;; ;; geiser-chicken
;; ;;(require geiser)
;; (setq geiser-mode-auto-p nil)
;; 
;; (require 'lsp-mode)
;; (add-hook 'haskell-mode-hook #'lsp)
;; ;;(add-hook 'haskell-literate-mode-hook #'lsp)
;; 
;; (require 'lsp-scheme)
;; (add-hook 'scheme-mode-hook #'lsp-scheme)
;; (setq lsp-scheme-implementation "guile") ;;; customizable
;; 
;; ; (require 'lsp-mode)
;; ; (add-to-list 'load-path "~/src/lsp-haskell/")
;; ; ;;(load "/home/terry/src/lsp-haskell/lsp-haskell.el")
;; ; ;;(require 'lsp-haskell)
;; ; (add-hook 'haskell-mode-hook #'lsp)
;; ;;(add-hook 'guile-mode-hook #'lsp)
;; (add-hook 'scheme-mode-hook #'lsp)

; (add-hook 'lsp-after-initialize-hook
;           '(lambda ()
;              (lsp--set-configuration
;               '(:haskell (:plugin (:tactics (:config (:timeout_duration 5)))))
;               )))


;; --- so we can edit this as soon as emacs starts 
(defun my/init-file ()
  (interactive)
  (find-file "/home/terry/.emacs.d/init.el"))
(global-set-key  (kbd "<f5>") #'my/init-file)

;; --- do damage after here ----

;; ;;(add-to-list load-path "/your/path/to/files/tuareg")
;; (autoload ’tuareg-mode "tuareg" "Major mode for editing Caml code" t)
;; ;; (autoload ’ocamldebug "ocamldebug" "Run the Caml debugger" t)
;; (show-paren-mode 1)
;; (add-hook ’tuareg-mode-hook ’tuareg-imenu-set-imenu)
;; (setq auto-mode-alist (append ’(("\\.ml[iylp]?$" . tuareg-mode ("\\.topml$" . tuareg-mode)) auto-mode-alist))
      

;; dired - sort files by file number 
(setq dired-listing-switches "-laGh1v --group-directories-first")

;; fill-region convert long lines to paragraphs use 80 columns wide
(setq fill-column 80)

;;(set-background-color "grey")
;;(set-foreground-color "white")

;; (set-background-color "grey")
;; (set-background-color "white")
;;(set-foreground-color "black")
;; (set-foreground-color "green")
;; (set-background-color "darkblue")
;; (set-background-color "black")
;; (set-foreground-color "yellow")



;; (tool-bar-mode -1)
;; (menu-bar-mode -1)
;; (scroll-bar-mode -1)
(setq inhibit-splash-screen t)         ; hide welcome screen

;;(setq make-backup-files nil)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; no modeline
;;(setq-default mode-line-format nil)
;; (make-frame '((undecorated . t)))

(load-theme 'leuven-dark)
;;(set-frame-param (selected-frame) 'border-width 0)
;;(make-frame '((border-width . 0)))

(setq comment-empty-lines t)
;;(setq comment-start ";")

;; disable electric indent mode

(electric-indent-mode -1)
(add-hook 'after-change-major-mode-hook (lambda() (electric-indent-mode -1)))
;; (global-set-key (kbd "TAB") 'tab-to-tab-stop)

;; tab inserts 4 spaces
;;(global-set-key "\t" (lambda () (interactive) (insert-char 32 4)))


;; never insert tabs
(setq-default indent-tabs-mode nil)

;;(add-to-list 'default-frame-alist '(font . "Mono-12"))
;;(add-to-list 'default-frame-alist '(font .  "*-fixed-*-*-*-20-*"))
;;(add-to-list 'default-frame-alist '(font .  "Fira Code-12"))
;;(add-to-list 'default-frame-alist '(font .  "JetBrains Mono-12"))
;; (add-to-list 'default-frame-alist '(undecorated .  t))
;;(add-to-list 'default-frame-alist '(font .  "Liberation Regular-12"))
;;(setq default-frame-alist `((font .  "JetBrains Mono-12")))
;; no terminating slash on load path
;;(add-to-list 'load-path "/home/terry/src/emacs-extensions/highlight-sexps")
;;(require 'highlight-sexps)

;; default to mononoki
(set-face-attribute 'default nil
                    :family "mononoki"
                    :height 120
                    :weight 'normal
                    :width  'normal)


;;(load-theme 'modus-vivendi-tinted 'NO-CONFIRM)

;; (add-hook 'after-save-hook (lambda ()
;;                              (when (eq major-mode 'scala-mode)
;;                                ;; (untabify (point-min) (point-max))
;; 			       ;; (indent-region (point-min) (point-max))
;; 			       ;;(format-all-buffer)
;; 			       )))

	  




;; --------------------
;; <><> ocp-indent.1.8.1 installed successfully ><><><><><><><><><><><><><><><><><>
;; => This package requires additional configuration for use in editors. Install package 'user-setup', or manually:

;; * for Emacs, add these lines to ~/.emacs:
;; (add-to-list 'load-path "/home/terry/.opam/default/share/emacs/site-lisp")
;; (require 'ocp-indent)

;; * for Vim, add this line to ~/.vimrc:
;;   set rtp^="/home/terry/.opam/default/share/ocp-indent/vim"


;; ;; ;; three ;;; per comment line 
;; 
;; (defun rei ()
;;   (interactive)
;;   ;; (add-to-list 'load-path "/home/terry/src/emacs-extensions/emacs-arei")
;;   ;; (add-to-list 'load-path "/home/terry/src/emacs-extensions/eros")
;;   (require 'arei)
;;   ;; needs queue
;;   ;; needs eros
;;   (global-set-key  (kbd "C-x C-e")  #'arei-evaluate-last-sexp)
;;   (global-set-key  (kbd "C-x C-k")  #'arei-evaluate-buffer)
;;   (global-set-key  (kbd "C-c C-c")  #'arei-interrupt-evaluation)
;;   (global-set-key  (kbd "C-c C-z")  #'arei-switch-to-buffer-connection)
;;   (global-set-key  (kbd "<tab>")  #'arei-complete-at-point)
;;   (setq geiser-mode-auto-p nil)
;;   )
;; (rei)


;; ;;(add-to-list 'load-path "~/dir/to/cloned/sly")
;; (require 'sly-autoloads)
;; (setq inferior-lisp-program "/usr/local/sbcl-2.4.3/bin/sbcl")



;; (defun run-scheme2 ()
;;   (interactive)
;;   ;; setup geiser + chicken
;;   (require 'geiser)
;;   ;;(require 'geiser-chicken)
;;   (require 'geiser-guile)
;;   ;;(setq geiser-active-implementations '(chicken racket mzscheme guile))
;;   (setq geiser-active-implementations '(guile))
;;   (setq geiser-repl-current-project-function 'ignore)
;;   ;; geiser debug does not seem to work on compile-buffer C-c C-k
;;   ;;(setq geiser-chicken-binary (list "/usr/bin/csi" "-:d"))
;;   (setq geiser-chicken-binary (list "/usr/bin/csi"))
;;   ;;(setq geiser-guile-binary (list "/usr/bin/guile")) ;; why is this a list??
;;   (setq geiser-guile-binary "/usr/bin/guile")
;;   ;; setting geiser ignore git directory
;;   (setq project-find-functions nil)
;;   (require 'company)
;;   (require 'company-box)
;;   (company-mode 1)
;;   (company-box-mode 1)
;;   (global-company-mode-enable-in-buffers)
;;   )

(defun my/scheme-run () 
  (interactive)
  ;; setup geiser + chicken
  (require 'geiser)
  (require 'geiser-chicken)
  (require 'geiser-guile)
  ;; (require 'geiser-mit)
  
  (setq geiser-active-implementations '(chicken guile mit racket))
  ;; (setq geiser-active-implementations '(guile))
  ;;(setq geiser-active-implementations '(guile chicken gambit))
  ;;(setq geiser-active-implementations '(chicken))
  (setq geiser-repl-current-project-function 'ignore)
  ;; geiser debug does not seem to work on compile-buffer C-c C-k
  
  ;; retort syntax if given with -:d flag   
  ;; (setq geiser-chicken-binary (list "/usr/bin/csi" "-:d"))
  ;;(setq geiser-chicken-binary (list "/opt/chicken-5.4.0rc2/bin/csi"))
  (setq geiser-gambit-binary (list "/usr/local/Gambit/bin/gsi"))  
  (setq geiser-chicken-binary (list "/usr/local/bin/csi"))  
  ;;(setq geiser-guile-binary (list "/opt/guile-3.0.10/bin/guile" "--no-auto-compile" "--debug"))
  (setq geiser-guile-binary (list "/opt/guile-3.0.10/bin/guile" "--auto-compile" ))
  ;; (setq geiser-mit-binary (list "/usr/bin/mit-scheme"))
  ;; (setq geiser-racket-binary (list "/opt/racket/bin/racket"))
  
  ;; (setq geiser-chicken-binary (list "/usr/bin/csi"))
  ;; (setq geiser-chicken-binary (list "/home/terry/bin/chicken-debug"))
  ;; (setq geiser-chicken-compile-geiser-p nil)

  ;; setting geiser ignore git directory
  (setq project-find-functions nil)
  ;; (require 'company)
  ;; (require 'company-box)
  ;; (company-mode 1)
  ;;(company-box-mode 1)
  ;; (global-company-mode-enable-in-buffers)
  ;; (add-hook 'after-init-hook 'global-company-mode)
  )

(my/scheme-run)



;; (defun run-scheme3 ()
;;   (interactive)
;;   ;; setup geiser + chicken
;;   (require 'geiser)
;;   (require 'geiser-guile)  
;;   ;; (require 'geiser-chicken)
;;   ;;(setq geiser-active-implementations '(chicken racket mzscheme guile))
;;   (setq geiser-active-implementations '(guile))
;;   (setq geiser-repl-current-project-function 'ignore)
;;   ;; geiser debug does not seem to work on compile-buffer C-c C-k
;;   ;;(setq geiser-chicken-binary (list "/usr/bin/csi" "-:d"))
;;   ;; (setq geiser-chicken-binary (list "/usr/bin/csi"))
;;   ;;(setq geiser-guile-binary (list "/usr/bin/guile")) ;; why is this a list??
;;   (setq geiser-guile-binary "/opt/guile/bin/guile")
;;   ;; setting geiser ignore git directory
;;   (setq project-find-functions nil)
;;   (require 'company)
;;   (require 'company-box)
;;   (company-mode 1)
;;   (company-box-mode 1)
;;   (global-company-mode-enable-in-buffers)
;;   (add-hook 'after-init-hook 'global-company-mode)
;;   )
;; 
;; (run-scheme3)


;; ;; ;; ------- compiling a file crashes slime server --------
(defun run-slime ()
  (interactive)
  ;; Setup load-path, autoloads and your lisp system
  ;; Not needed if you install SLIME via MELPA
  ;;(add-to-list 'load-path "~/src/slime-2.29.1/")
  (add-to-list 'load-path "~/src/slime/")
  ;;(add-to-list 'load-path "~/src/slime-company/")
  ;;(load "slime.el")
  (require 'slime-autoloads)
  (setq slime-lisp-implementations                                                                                                                                                   
	;;'((sbcl ("sbcl" "--dynamic-space-size" "2046"))))
        '((sbcl ("sbcl" "--dynamic-space-size" "16384"))))
  
  ;;(setq inferior-lisp-program "/usr/local/sbcl-2.4.3/bin/sbcl")
  (setq slime-contribs '(slime-fancy slime-scratch slime-editing-commands slime-repl	     ;;slime-breakpoints -- missing
				     ;;slime-company
				     ))
  ;;(slime-setup '(slime-fancy slime-company))
  ;;(other-window 1)
  ;;(slime-scratch)
  ;;(slime)
  ;;(setq slime-contribs '(slime-fancy slime-scratch slime-editing-commands))
  (setq slime-complete-symbol-function #'slime-fuzzy-complete-symbol)

  (with-eval-after-load 'slime
    (require 'slime-autoloads)
    (setq inferior-lisp-program "/usr/local/sbcl-2.4.3/bin/sbcl")
    (setq slime-complete-symbol-function #'slime-fuzzy-complete-symbol)
    )

  ;; (add-hook 'slime-repl-mode
  ;; 	    (lambda ()
  ;; 	      (local-set-key [TAB] 'slime-fuzzy-complete-symbol)))

  ;; (add-hook 'lisp-mode
  ;; 	    (lambda ()
  ;; 	      (local-set-key [TAB] 'slime-fuzzy-complete-symbol)))

  (eval-after-load 'lisp-mode 
                 '(define-key lisp-mode-map [(backtab)] 'slime-fuzzy-complete-symbol))

  (require 'company)
  ;;(require 'company-box)
  (company-mode 1)
  ;;(company-box-mode 1)
  (global-company-mode-enable-in-buffers)
  (add-hook 'after-init-hook 'global-company-mode)
  (setq slime-load-failed-fasl 'never)  
  ;; turn off all distractions
  (toggle-menu-bar-mode-from-frame)
  (toggle-scroll-bar 0)
  (toggle-tool-bar-mode-from-frame)
  )
;;(run-slime)


(require 'ivy)
(ivy-mode t)
  


;; ;;slime autocompletion?
;; ;; (setq slime-contribs '(slime-fancy slime-breakpoints))
;; ;; (slime-setup)

;; (defun my/run-lisp2 ()
;;   (interactive)
;;   ;; setup using Sly repl
;;   (add-to-list 'load-path "~/src/sly")
;;   (require 'sly)
;;   (require 'sly-autoloads)
;;   ;; (define-key sly-mrepl-mode-map [C-up] #'sly-mrepl-previous-input-or-button)
;;   ;; (define-key sly-mrepl-mode-map [C-down] 'sly-mrepl-next-input-or-button)
;;   (setq inferior-lisp-program "/usr/local/sbcl-2.4.3/bin/sbcl")

;;   (add-hook 'sly-mode-hook
;; 	    (lambda ()
;; 	      (local-set-key [C-up] 'sly-mrepl-previous-input-or-button)
;; 	      (local-set-key [C-down]  'sly-mrepl-next-input-or-button)))


;;   )
;; ;;(my/run-lisp2)


;; ;; slime star
;; (defun my/run-lisp3 ()
;;   ;; Setup load-path, autoloads and your lisp system
;;   (add-to-list 'load-path "/home/terry/src/slime-star/")
;;   (require 'slime-autoloads)
;;   (setq inferior-lisp-program "/opt/sbcl/bin/sbcl")
;;   ;; Add slime-star to slime-contribs:
;;   ;;(setq slime-contribs '(slime-fancy slime-star))
;;   (setq slime-contribs '(slime-fancy slime-scratch))
;;   )
;; ;;(my/run-lisp3)




;; lovely history back at fingertips
;; (eval-after-load 'sly 
;;   '(progn
;;      (define-key sly-mrepl-mode-map [C-up] #'sly-mrepl-previous-input-or-button)
;;      (define-key sly-mrepl-mode-map [C-down] 'sly-mrepl-next-input-or-button)))

;; (defun my/tab-jump-or-org-cycle ()
;;   "jumps to beginning of line in all modes except org mode, where it cycles"
;;   (interactive)
;;   (if (equal major-mode 'org-mode)
;;       (org-cycle)
;;     (evil-first-non-blank))
;;   )
;; (define-key evil-normal-state-map (kbd "<tab>") 'my/tab-jump-or-org-cycle)  

;; (global-company-mode)
;; (company-box-mode t)

;; (defun my/company ()
;;   (with-eval-after-load 'company
;;     (define-key company-active-map
;; 		(kbd "TAB")
;; 		#'company-complete-common-or-cycle)
;;     (define-key company-active-map
;; 		(kbd "<backtab>")
;; 		(lambda ()
;;                   (interactive)
;;                   (company-complete-common-or-cycle -1)))
;;     (global-set-key  
;;      (kbd "<backtab>")
;;      #'company-complete-common-or-cycle)
;;     
;;     (global-set-key  
;;      (kbd "TAB")
;;      #'indent-region)
;; 
;;     ))





;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(package-selected-packages
;;    '(company company-box z3-mode geiser-chicken geiser slime color-theme)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))

(defun my/recovery ()
  (interactive)
  ;;
  ;; visit file "cairo-sdl.asd"
  (find-file "/home/terry/code/c2ffi/cairo-sdl/cairo-sdl.asd")
  (slime)
  )
(defun my/recovery2 ()
  (interactive)
  (other-window 1)
  (slime-compile-and-load-file)
  ;;
  (delete-other-windows)
  (split-window-horizontally)
  (split-window-below)
  (other-window 1)
  (find-file "/home/terry/code/c2ffi/cairo-sdl/cairo-sdl.lisp")
  (other-window 1)
  (slime-switch-to-output-buffer)
  (insert "(ql:quickload :cairo-sdl)")
  (slime-repl-return t)
  (insert "(cairo-sdl::demo)")  
  )


;;(setq electric-indent-mode nil)

;; ocaml programming
(add-to-list 'load-path "/home/terry/.opam/default/share/emacs/site-lisp")
(require 'ocp-indent)
;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)


;; (add-hook 'Coq-mode-hook
;;          (lambda ()              
;;              (local-set-key (kbd "C-<Down>") 'proof-assert-next-command-interactive)
;;              (local-set-key (kbd "C-<Up>") 'proof-undo-last-successful-command)
;;              (local-set-key (kbd "C-f") 'forward-char)
;;              (local-set-key (kbd "C-f") 'proof-assert-next-command-interactive)
;; ))
;; 
;;  (define-key coq-mode-map (kbd "n") 'proof-assert-next-command-interactive)
;;  (define-key coq-mode-map (kbd "p") 'proof-undo-last-successful-command)
;; 
;;  (define-key coq-mode-map (kbd "n") (lambda ()(interactive)(insert "n")))
;;  (define-key coq-mode-map (kbd "p") (lambda ()(interactive)(insert "p")))
;; 
;;  (define-key coq-mode-map (kbd "<C-down>") (lambda ()(interactive)(insert "down")))
;;  (define-key coq-mode-map (kbd "<C-up>") (lambda ()(interactive)(insert "up")))


(defun coqfix (beginning end)
        (interactive "r")
        (when (use-region-p)
          ;;(message "The region is active, and is from %d to %d" beginning end)
          ;; forall 
          (replace-string "∀" "forall" nil beginning end)
           ;; single line implicatoin
          (replace-string "→" "->" nil beginning end)
          ;; 
          (replace-string "⇒" "=>" nil beginning end)
            ;; multiplication sign 
          (replace-string "×" "*" nil beginning end)
          ))



;; ------------------ 
(defun lsp-booster--advice-json-parse (old-fn &rest args)
  "Try to parse bytecode instead of json."
  (or
   (when (equal (following-char) ?#)
     (let ((bytecode (read (current-buffer))))
       (when (byte-code-function-p bytecode)
         (funcall bytecode))))
   (apply old-fn args)))
(advice-add (if (progn (require 'json)
                       (fboundp 'json-parse-buffer))
                'json-parse-buffer
              'json-read)
            :around
            #'lsp-booster--advice-json-parse)

(defun lsp-booster--advice-final-command (old-fn cmd &optional test?)
  "Prepend emacs-lsp-booster command to lsp CMD."
  (let ((orig-result (funcall old-fn cmd test?)))
    (if (and (not test?)                             ;; for check lsp-server-present?
             (not (file-remote-p default-directory)) ;; see lsp-resolve-final-command, it would add extra shell wrapper
             lsp-use-plists
             (not (functionp 'json-rpc-connection))  ;; native json-rpc
             (executable-find "emacs-lsp-booster"))
        (progn
          (when-let ((command-from-exec-path (executable-find (car orig-result))))  ;; resolve command from exec-path (in case not found in $PATH)
            (setcar orig-result command-from-exec-path))
          (message "Using emacs-lsp-booster for %s!" orig-result)
          (cons "emacs-lsp-booster" orig-result))
      orig-result)))
(advice-add 'lsp-resolve-final-command :around #'lsp-booster--advice-final-command)


;; (use-package eglot
;;   :ensure t
;;   :config
;;   (add-hook 'haskell-mode-hook 'eglot-ensure)
;;   :config
;;   (setq-default eglot-workspace-configuration
;;                 '((haskell
;;                    (plugin
;;                     (stan
;;                      (globalOn . :json-false))))))  ;; disable stan
;;   :custom
;;   (eglot-autoshutdown t)  ;; shutdown language server after closing last file
;;   (eglot-confirm-server-initiated-edits nil)  ;; allow edits without confirmation
;;   )


;; this my code to do block commenting haskell code  - have to use 
;; now need to rebind M-; ALT + semicolon 
;; interactive = means can be called during editing using M-x 
;; r = ustilises regions here selected region 
;;(count-lines (point-min) (point-max))
(defun haskell-comment-region (beginning end)
        (interactive "r")
        (when (use-region-p)
          (let ((nlines-of-region (count-lines beginning end)))
            (message "there are `%d lines" nlines-of-region)
            (cond
             ((> nlines-of-region 1) 
              ;; multi line comment
              (goto-char beginning)
              (insert "{- ")
              (newline)
              (goto-char end)
              ;; move forward 3 more chars because we inserted 3 chars
              (forward-char 4)
              ;; (newline)
              (insert "-}")
              )
             (t ;; single line comment haskell
              (goto-char beginning)
              (insert "-- ")
              (goto-char end)
              ;; move forward 3 more chars because we inserted 3 chars
              (forward-char 3)
             )))))

(defun haskell-code-region (beginning end)
        (interactive "r")
        (when (use-region-p)
          (let ((nlines-of-region (count-lines beginning end)))
            (message "there are `%d lines" nlines-of-region)
            (cond
             ((> nlines-of-region 1) 
              ;; multi line comment
              (goto-char beginning)
              (newline)
              (insert "\\begin{code}")
              (newline)
              (goto-char end)
              ;; move forward 3 more chars because we inserted 3 chars
              (forward-char 14)
              ;; (newline)
              (insert "\\end{code}")
              (newline)
              )
             (t ;; single line comment haskell
              t
              ;; (goto-char beginning)
              ;; (insert "-- ")
              ;; (goto-char end)
              ;; ;; move forward 3 more chars because we inserted 3 chars
              ;; (forward-char 3)              
             )))))

(defalias 'haskell-shift-code-left
   (kmacro "M-x i n d e n t - r e i <backspace> <backspace> i g h t l y <backspace> <backspace> <backspace> <backspace> <down> <down> <up> <return> S-<left>"))







 

    



;; ;;(message "The region is active, and is from %d to %d" beginning end)
;;           ;; forall 
;;           (replace-string "∀" "forall" nil beginning end)
;;            ;; single line implicatoin
;;           (replace-string "→" "->" nil beginning end)
;;           ;; 
;;           (replace-string "⇒" "=>" nil beginning end)
;;             ;; multiplication sign 
;;           (replace-string "×" "*" nil beginning end)
          ;; ))



;; insert contents of buffer called "*goals*" into current buffer
;; buffer-string
;; (defun buffer-whole-string (buffer)
;;   (with-current-buffer buffer
;;     (save-restriction
;;       (widen)
;;       (buffer-substring-no-properties (point-min) (point-max)))))
(defun buffer-insert-goals ()
  (interactive "b")
  (newline)
  (insert "(*")
  (newline)
  (insert (with-current-buffer "*goals*" (buffer-string)))
  (insert "*)") 
  (newline)
)





(defun mycoq ()
    (interactive)
    ;; awesome we finally gained control of keymaps ...
    (define-key coq-mode-map (kbd "<C-down>") (lambda ()(interactive)
                                                (proof-assert-next-command-interactive)))
    (define-key coq-mode-map (kbd "<C-up>") (lambda ()(interactive)(proof-undo-last-successful-command)))
    (define-key coq-mode-map (kbd "<C-left>") (lambda ()(interactive)
                                                (buffer-insert-goals)
                                                (proof-assert-next-command-interactive)
                                                (proof-assert-next-command-interactive)
                                                ))
)



;; Agda specific stuff  
;; auto-load agda-mode for .agda and .lagda.md
(setq auto-mode-alist
   (append
     '(("\\.agda\\'" . agda2-mode)
       ("\\.lagda.md\\'" . agda2-mode))
     auto-mode-alist))




  

;; The use of (interactive "r") means that the parameters beginning and end will automatically receive the values of the region beginning and the region end, respectively, when the function is invoked. (You can also get those values anytime using the functions region-beginning and region-end, respectively.)




;; (global-set-key  (kbd "<C-n>") (lambda ()
;;                                  (interactive)
;;                                  (proof-assert-next-command-interactive)))
;; (global-set-key  (kbd "<C-u>") (lambda ()
;;                                  (interactive)
;;                                  (proof-undo-last-successful-command)))
;; (add-hook 'coq-mode-hook
;;   (lambda ()
;;    (local-set-key (kbd "<C-m>") #'(lambda ()
;;                                     (interactive)
;;                                     (insert "hello!")))))

;; ----- literate haskell lhs 
;; mmm-mode switches depending on context cursor is in 
;; almost like an ideal org-mode system 
(add-hook 'haskell-mode-hook 'my-mmm-mode)

(mmm-add-classes
 '((literate-haskell-bird
    :submode text-mode
    :front "^[^>]"
    :include-front true
    :back "^>\\|$"
    )
   (literate-haskell-latex
    :submode literate-haskell-mode
    :front "^\\\\begin{code}"
    :front-offset (end-of-line 1)
    :back "^\\\\end{code}"
    :include-back nil
    :back-offset (beginning-of-line -1)
    )))

(defun my-mmm-mode ()
  ;; go into mmm minor mode when class is given
  (make-local-variable 'mmm-global-mode)
  (setq mmm-global-mode 'true))

(setq mmm-submode-decoration-level 0)

(require 'haskell-interactive-mode)
(require 'haskell-process)

(defun myhask () 
  (interactive)
  (define-key haskell-mode-map (kbd "M-;") #'haskell-comment-region)
  (define-key haskell-mode-map (kbd "M-'") #'haskell-code-region)
  (define-key haskell-mode-map (kbd "M-#") #'haskell-shift-code-left)
  (define-key haskell-mode-map (kbd "C--") #'undo-redo)
  ;; clear distractions
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1)


;; can we start lsp-mode ?
;;(call-interactively 'lsp-mode)
;; (call-interactively 'lsp)

(custom-set-variables
  '(haskell-process-suggest-remove-import-lines t)
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t))
;; 
(define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)
;; cabal
(define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)

;;(lsp-mode)

;; (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;; wait a certain amount of time  3 seconds 
;; (sleep-for 500)
;; (call-interactively 'haskell-interactive-mode)
;; (define-key interactive-haskell-mode-map (kbd "M-.") 'haskell-mode-goto-loc)
;; (define-key interactive-haskell-mode-map (kbd "C-c C-t") 'haskell-mode-show-type-at)


) ;; ------- myhask --- haskell setup



(add-hook 'haskell-mode-hook (lambda ()
                               (lsp)
                               (myhask)))
(add-hook 'haskell-interactive-mode-hook 
          (lambda () 
            (define-key interactive-haskell-mode-map (kbd "M-.") 'haskell-mode-goto-loc)
            (define-key interactive-haskell-mode-map (kbd "C-c C-t") 'haskell-mode-show-type-at)))

            
                                           


;; (add-hook 'lsp-mode-hook #'interactive-haskell-mode)

;; (add-hook 'haskell-mode-hook #'haskell-interactive-mode)


;; if not interactive then cannot be called from inside emacs using M-x 
;; (defun my/haskell () 
;;   (interactive)
;; )



;;(global-set-key  (kbd "<f2>") #'my/recovery)
;;(global-set-key  (kbd "<f3>") #'my/recovery2)
(put 'downcase-region 'disabled nil)

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(package-selected-packages
;;    '(lsp-scheme geiser-chicken dap-mode lsp-ivy lsp-treemacs company-cabal company-fuzzy company-ghci company flycheck-guile flycheck-haskell flycheck lsp-ui lsp-haskell ivy haskell-mode)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-safe-themes
;;    '("ce3b031eca9f799eed06dfec91d5818de18b4b4b8f7866b04810984a5ec945da" "17b6c3e14c4aa2c69ed4246272b5382fc0630989921007b3f7cf21a01bf3365e" "ceebbe6bf99d69b22440db9ef27b22032e12d2a48be291531757891e74c853c0" "36b57dcbe8262c52d3123ed30fa34e5ef6b355881674142162a8ca8e26124da9" "8d71b6dec68d21ba814421349d437e8b9745106dcdd0b2c67fad7670f17e1e61" "52632b69c2813771327a2c22f51ccaca466ba3cc1aa8f3bf2d613573ea934993" "6b912e025527ffae0feb76217f1a3e494b0699e5219ab59ea4b3a36c319cea17" "87064601426c5d29cebbf6c7a2ccd2fdbfef1ae8f4aeffe9b085f5ea86aa61ff" "dcb1cc804b9adca583e4e65755895ba0a66ef82d29464cf89a78b88ddac6ca53" default))
;;  '(package-selected-packages
;;    '(helm format-all rainbow-delimiters dracula-theme modus-themes lua-mode lsp-metals scala-mode scala-repl scala-ts-mode treesit-auto slime-company slime-repl-ansi-color slime-theme smartparens helm-slime sly sly-asdf sly-hello-world sly-macrostep sly-named-readtables sly-overlay sly-quicklisp sly-repl-ansi-color haskell-mode ivy)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(package-selected-packages
;;    '(treesit-auto smartparens sly-repl-ansi-color sly-quicklisp sly-overlay sly-named-readtables sly-macrostep sly-hello-world sly-asdf slime-theme slime-repl-ansi-color slime-company scala-ts-mode scala-repl sbt-mode rainbow-delimiters projectile paredit modus-themes lua-mode lsp-ui lsp-metals ivy helm-slime geiser-racket geiser-mit geiser-guile geiser-gambit geiser-chicken geiser-chibi format-all dracula-theme company-fuzzy company-box boogie-friends)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(package-selected-packages
   '(lsp-treemacs lsp-ui lsp-haskell org mmm-mode haskell-mode company-coq coq-commenter proof-general paredit nim-mode geiser-gambit lua-mode tuareg slime slime-company scala-mode ivy ivy-fuz ivy-hydra geiser-guile geiser-chicken company-box)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
(put 'narrow-to-region 'disabled nil)
