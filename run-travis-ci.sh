#!/bin/sh

# Author: Andreas Roehler <andreas.roehler@online.de>

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# Commentary:

# This script tests functions from ar-mode.el.

# Code:

FILE1=$PWD/lisp/abbrev.el

TEST1=$PWD/test/ar-thing-at-point-utils-setup-tests.el
TEST2=$PWD/test/emacs-ua-emacs-lisp-tests.el

hier() {
./src/emacs-26.2.1 -Q --batch \
--eval "(message (emacs-version))" \
-load $FILE1 \
\
-load $TEST1 \
-load $TEST2 \
-f ert-run-tests-batch-and-exit
}

entfernt () {
    ./autogen.sh && ./configure --without-makeinfo --with-gif=no && make -k && sleep 1 && ./src/emacs -Q --batch \
--eval "(message (emacs-version))" \
--eval "(message (getenv \"PWD/\"))" \
-load $TEST1 \
-load $TEST2 \
-load $TEST3 \
-f ert-run-tests-batch-and-exit
}

# This var is set in my bashrc to 0
ORT=${ORT:-1}

echo "\$ORT: $ORT"

if [ $ORT -eq 0 ]; then

    echo "hier: $HOME"
    hier
else
    echo "entfernt: $HOME"
    echo "Lade testumgebung \"ENTFERNT\""
    entfernt
fi
