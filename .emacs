(show-paren-mode 1)
(set-face-background 'show-paren-match-face "#c8f8f0")
;; Highlight the parenthesis at point and its match.
;; Use the color #c8f8f0 instead of the default -- it's lighter
;; http://www.emacswiki.org/emacs/ShowParenMode

(setq show-paren-style 'expression)
;; Highlight the entire expression
;; http://www.emacsblog.org/2007/08/07/quick-tip-show-paren-mode/

(tool-bar-mode -1)
;; remove toolbar
;; http://www.emacswiki.org/emacs/ToolBar

(menu-bar-mode -1)
;; who needs 'em?
;; from http://www.emacswiki.org/emacs/ToolBar

(set-scroll-bar-mode 'right)
;; http://www.emacswiki.org/emacs/ScrollBar

(mouse-avoidance-mode 'exile)
;; move the mouse pointer to the corner of the screen when approached
;; from http://www.emacswiki.org/emacs/MouseAvoidance

(require 'ido)
(ido-mode t)
;; turn ido-mode on
;; from http://www.emacswiki.org/emacs/InteractivelyDoThings

(add-to-list 'auto-mode-alist '("\\.arc\\'" . lisp-mode))
;; make .arc files open in lisp-mode
;; from http://www.emacswiki.org/emacs/AutoModeAlist

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
;; you can tell what this is, hopefully
;; http://www.emacswiki.org/emacs/DeletingWhitespace

(setq truncate-partial-width-windows nil)
;; don't truncate lines of text when multiple windows
;; http://www.emacswiki.org/emacs/TruncateLines

;; about binding keys: http://www.gnu.org/software/emacs/manual/html_node/emacs/Init-Rebinding.html#Init-Rebinding

(global-set-key (kbd "C-;") 'comment-or-uncomment-region)

;; bind C-; to comment-or-uncomment-region
;; http://www.emacswiki.org/emacs/CommentingCode


(setq confirm-kill-emacs 'y-or-n-p)


(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "~/.emacs.d/slime/")
(require 'slime)
(slime-setup)