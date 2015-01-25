#! /bin/sh

HOMEBREW_PATH="$1"
PREFIX_PATH="$2"

INIT_SCRIPT="${HOMEBREW_PATH}/share/quindeps/init"

grep quindeps ~/.bashrc > /dev/null || echo ". ${INIT_SCRIPT}" >> ~/.bashrc
grep quindeps ~/.zshrc > /dev/null || echo ". ${INIT_SCRIPT}" >> ~/.zshrc

. "${PREFIX_PATH}/share/quindeps/init"
. "${PREFIX_PATH}/share/quindeps/install-ruby"
