(setq-default indent-tabs-mode nil)
(setq save-abbrevs nil)


;;;;;;;;;;;; CAML MODE
(setq auto-mode-alist (cons '("\\.ml[iylp]?" . caml-mode) auto-mode-alist))
(autoload 'caml-mode "caml" "Major mode for editing Caml code." t)
(autoload 'camldebug "camldebug" "" t)
(autoload 'run-caml "inf-caml" "Run an inferior Caml process." t)

(require 'caml-font)


(setq auto-mode-alist (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
(autoload 'tuareg-mode "tuareg" "Mode majeur pour éditer du code Caml" t)
(autoload 'camldebug "camldebug" "Exécuter le débogueur Caml" t) 


;;;;;;;;;;; GLOBAL FLAGS
(setq require-final-newline t)
(line-number-mode t)
(column-number-mode t)
(setq dabbrev-case-replace nil)
(setq minibuffer-max-depth nil)


;;;;;;;;;; KEYS
(global-set-key [?²]   'dabbrev-expand)
(global-set-key [f1]   'undo)
(global-set-key [f4]   'goto-char)
(global-set-key [f5]   'goto-line)
(global-set-key [f6]   'compile)
(global-set-key [f8]   'next-error)


;;;;;;;;;; Prolog
(setq auto-mode-alist (cons '("\\.pl" . prolog-mode) auto-mode-alist))

;;;;;;;;;;; HTML
(autoload 'html-mode "html-mode" "Major mode for editing Html code." t)

;; DOS - UNIX
;; convert a buffer from DOS `^M' end of lines to Unix end of lines
(defun dos-to-unix ()
  "Cut all visible ^M from the current buffer."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (search-forward "\r" nil t)
      (replace-match ""))))
;; convert a buffer from Unix end of lines to DOS `^M' end of lines
(defun unix-to-dos ()
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (search-forward "\n" nil t)
      (replace-match "\r\n"))))
(custom-set-variables
 '(column-number-mode t))
(custom-set-faces )
