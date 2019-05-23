Emacs UA [![Build Status](https://travis-ci.org/andreas-roehler/emacs-UA.svg?branch=master)](https://travis-ci.org/andreas-roehler/emacs-UA)
===

This is built upon emacs-26.2
Extensions here should keep backward compatibility.

New Feature WRT to shipped Emacs:

* Abbreviations are stored case sensitive, no fiddling with case when expanding.
  For example define in parallel:

  "ua" "Unleashed Abbreviations first"
  "Ua" "unleashed abbreviations other"
  "aU" "unleashed abbreviations third"
  "UA" "unleashed abbreviations final"

* All characters beside whitespaces might constitute an abbreviation.
  Word-syntax isn't longer required. Due to still needed changes in
  cmds.c, <SPACE> doesn't call expand-function for non-word abbrevs yet.
  Use explicit C-x ' --resp. M-x expand-abbrev RET-- for the moment



Travis-ci tests are failing currently due to known travis-issue:
https://github.com/travis-ci/travis-ci/issues/9073
