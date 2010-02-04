(show-paren-mode 1)
;; Highlight the parenthesis at point and its match.
;; http://www.emacswiki.org/emacs/ShowParenMode

(set-face-background 'show-paren-match-face "#c0f8ff")
(set-face-background 'show-paren-mismatch-face "#ff5050")
(set-face-foreground 'show-paren-mismatch-face "#ffffff")
(set-face-attribute 'show-paren-mismatch-face nil
                    :weight 'bold)
;; change colors/fonts
;;http://emacs-fu.blogspot.com/2009/01/balancing-your-parentheses.html

(setq show-paren-style 'expression)
;; Highlight the entire expression
;; http://www.emacsblog.org/2007/08/07/quick-tip-show-paren-mode/

(tool-bar-mode -1)
;; remove toolbar
;; http://www.emacswiki.org/emacs/ToolBar

(menu-bar-mode -1)
;; who needs 'em?
;; http://www.emacswiki.org/emacs/ToolBar

(set-scroll-bar-mode 'right)
;; http://www.emacswiki.org/emacs/ScrollBar

(mouse-avoidance-mode 'exile)
;; move the mouse pointer to the corner of the screen when approached
;; http://www.emacswiki.org/emacs/MouseAvoidance

(require 'ido)
(ido-mode t)
;; turn ido-mode on
;; http://www.emacswiki.org/emacs/InteractivelyDoThings

(add-to-list 'auto-mode-alist '("\\.arc\\'" . lisp-mode))
;; make .arc files open in lisp-mode
;; http://www.emacswiki.org/emacs/AutoModeAlist

(when (string-match "linux" system-configuration)
  (setq x-select-enable-clipboard t))
;; make copy-and-paste work properly under X Windows
;; http://www.emacswiki.org/cgi-bin/wiki/CopyAndPaste

(column-number-mode t)
;; show the column number in the mode line
(size-indication-mode t)
;; show the buffer size in the mode line
;; http://www.emacswiki.org/emacs/ModeLineConfiguration

(setq frame-title-format '("%b - " invocation-name "@" system-name))
;; change the title of emacs
;; http://www.gnu.org/software/emacs/elisp/html_node/Frame-Titles.html

(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; http://www.emacswiki.org/emacs/DeletingWhitespace

(setq truncate-partial-width-windows nil)
;; don't truncate lines of text when multiple windows; wrap them instead
;; http://www.emacswiki.org/emacs/TruncateLines

;; about binding keys: http://www.gnu.org/software/emacs/manual/html_node/emacs/Init-Rebinding.html#Init-Rebinding

(global-set-key (kbd "C-;") 'comment-or-uncomment-region)
;; http://www.emacswiki.org/emacs/CommentingCode

(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-,") 'prev-window)

(defun prev-window ()
  (interactive)
  (other-window -1))

(setq confirm-kill-emacs 'y-or-n-p)
;; yell at me before going away
;; http://www.gnu.org/software/emacs/manual/html_node/emacs/Exiting.html


(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "~/.emacs.d/slime/")
(require 'slime)
(slime-setup)
;; Can this be contingent on actually having clisp and slime?
;; possibly by autoload instead of require?

(setq inhibit-startup-message t)

(setq default-indicate-empty-lines t)
;; http://www.emacswiki.org/emacs/TheFringe

;; (setq tab-width 2)
;; (setq c-basic-offset 4)