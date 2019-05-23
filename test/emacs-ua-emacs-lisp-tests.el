;;; emacs-ua-emacs-lisp-tests.el --- -*- lexical-binding: t; -*-

;; Copyright (C) 2013-2016 Free Software Foundation, Inc.
;; Copyright (C) 2014-2016 Andreas Röhler, <andreas.roehler@online.de>

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'ar-thing-at-point-utils-setup-tests)

(ert-deftest eua-abbrev-expand-test-3MLrzm ()
  (ar-test-with-elisp-buffer
      "Ua"
      (define-global-abbrev "Ua" "unleashed abbreviations")
    (expand-abbrev)
    (should (looking-back "Unleashed abbreviations" (line-beginning-position)))))

(ert-deftest eua-abbrev-expand-test-yo0IEW ()
  (ar-test-with-elisp-buffer
      "ua"
      (define-global-abbrev "ua" "Unleashed abbreviations")
    (expand-abbrev)
    (should (looking-back "Unleashed abbreviations" (line-beginning-position)))))

(ert-deftest eua-abbrev-expand-test-yo0IEW ()
  (ar-test-with-elisp-buffer
      "uA"
    (define-global-abbrev "uA" "Unleashed abbreviations")
    (expand-abbrev)
    (should (looking-back "Unleashed abbreviations" (line-beginning-position)))))

(ert-deftest eua-abbrev-expand-test-yo0IEW ()
  (ar-test-with-elisp-buffer
      "UA"
    (define-global-abbrev "UA" "Unleashed abbreviations")
    (expand-abbrev)
    (should (looking-back "Unleashed abbreviations" (line-beginning-position)))))

(ert-deftest eua-abbrev-symbol-expand-test-yo0IEW ()
  (ar-test-with-fundamental-buffer
      "++"
    (define-global-abbrev "++" "Unleashed abbreviations")
    (expand-abbrev)
    (should (looking-back "Unleashed abbreviations" (line-beginning-position)))))

(provide 'emacs-ua-emacs-lisp-tests)
;;; emacs-ua-emacs-lisp-tests.el ends here
