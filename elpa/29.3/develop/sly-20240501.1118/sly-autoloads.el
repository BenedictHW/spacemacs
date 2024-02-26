;;; sly-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from sly.el

(define-obsolete-variable-alias 'sly-setup-contribs 'sly-contribs "\
2.3.2")
(defvar sly-contribs '(sly-fancy) "\
A list of contrib packages to load with SLY.")
(autoload 'sly-setup "sly" "\
Have SLY load and use extension modules CONTRIBS.
CONTRIBS defaults to `sly-contribs' and is a list (LIB1 LIB2...)
symbols of `provide'd and `require'd Elisp libraries.

If CONTRIBS is nil, `sly-contribs' is *not* affected, otherwise
it is set to CONTRIBS.

However, after `require'ing LIB1, LIB2 ..., this command invokes
additional initialization steps associated with each element
LIB1, LIB2, which can theoretically be reverted by
`sly-disable-contrib.'

Notably, one of the extra initialization steps is affecting the
value of `sly-required-modules' (which see) thus affecting the
libraries loaded in the Slynk servers.

If SLY is currently connected to a Slynk and a contrib in
CONTRIBS has never been loaded, that Slynk is told to load the
associated Slynk extension module.

To ensure that a particular contrib is loaded, use
`sly-enable-contrib' instead.

(fn &optional CONTRIBS)" t)
(autoload 'sly-mode "sly" "\
Minor mode for horizontal SLY functionality.

This is a minor mode.  If called interactively, toggle the `Sly
mode' mode.  If the prefix argument is positive, enable the mode,
and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `sly-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\\{sly-mode-map}

(fn &optional ARG)" t)
(autoload 'sly-editing-mode "sly" "\
Minor mode for editing `lisp-mode' buffers.

This is a minor mode.  If called interactively, toggle the
`Sly-Editing mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `sly-editing-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\\{sly-editing-mode-map}

(fn &optional ARG)" t)
(autoload 'sly "sly" "\
Start a Lisp implementation and connect to it.

  COMMAND designates a the Lisp implementation to start as an
\"inferior\" process to the Emacs process. It is either a
pathname string pathname to a lisp executable, a list (EXECUTABLE
ARGS...), or a symbol indexing
`sly-lisp-implementations'. CODING-SYSTEM is a symbol overriding
`sly-net-coding-system'.

Interactively, both COMMAND and CODING-SYSTEM are nil and the
prefix argument controls the precise behaviour:

- With no prefix arg, try to automatically find a Lisp.  First
  consult `sly-command-switch-to-existing-lisp' and analyse open
  connections to maybe switch to one of those.  If a new lisp is
  to be created, first lookup `sly-lisp-implementations', using
  `sly-default-lisp' as a default strategy.  Then try
  `inferior-lisp-program' if it looks like it points to a valid
  lisp.  Failing that, guess the location of a lisp
  implementation.

- With a positive prefix arg (one C-u), prompt for a command
  string that starts a Lisp implementation.

- With a negative prefix arg (M-- M-x sly, for example) prompt
  for a symbol indexing one of the entries in
  `sly-lisp-implementations'

(fn &optional COMMAND CODING-SYSTEM INTERACTIVE)" t)
(autoload 'sly-connect "sly" "\
Connect to a running Slynk server. Return the connection.
With prefix arg, asks if all connections should be closed
before.

(fn HOST PORT &optional CODING-SYSTEM INTERACTIVE-P)" t)
(autoload 'sly-hyperspec-lookup "sly" "\
A wrapper for `hyperspec-lookup'

(fn SYMBOL-NAME)" t)
(autoload 'sly-info "sly" "\
Read SLY manual

(fn FILE &optional NODE)" t)
(add-hook 'lisp-mode-hook 'sly-editing-mode)
(register-definition-prefixes "sly" '("define-sly-" "inferior-lisp-program" "make-sly-" "sly-" "topline"))

;;; End of scraped data

(provide 'sly-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; sly-autoloads.el ends here
