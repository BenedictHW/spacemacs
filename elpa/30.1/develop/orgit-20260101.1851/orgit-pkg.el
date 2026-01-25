;; -*- no-byte-compile: t; lexical-binding: nil -*-
(define-package "orgit" "20260101.1851"
  "Support for Org links to Magit buffers."
  '((emacs    "28.1")
    (compat   "30.1")
    (cond-let "0.2")
    (magit    "4.5")
    (org      "9.7"))
  :url "https://github.com/magit/orgit"
  :commit "24c8fe48c477d561c2ce1720223f8c5aec664f4e"
  :revdesc "24c8fe48c477"
  :keywords '("hypermedia" "vc")
  :authors '(("Jonas Bernoulli" . "emacs.orgit@jonas.bernoulli.dev"))
  :maintainers '(("Jonas Bernoulli" . "emacs.orgit@jonas.bernoulli.dev")))
