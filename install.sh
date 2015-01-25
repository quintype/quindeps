#! /bin/sh

HOMEBREW_PATH="$1"
QT_SHARES="${HOMEBREW_PATH}/share/quindeps"
INIT_SCRIPT="${QT_SHARES}/init"

grep quindeps ~/.bashrc > /dev/null || echo ". ${INIT_SCRIPT}" >> ~/.bashrc
grep quindeps ~/.zshrc > /dev/null || echo ". ${INIT_SCRIPT}" >> ~/.zshrc

. "${INIT_SCRIPT}"
. "${QT_SHARES}/install-ruby"
