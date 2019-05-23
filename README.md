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

Travis-ci tests are failing currently due to known travis-issue:
https://github.com/travis-ci/travis-ci/issues/9073
