#! /bin/sh

grep quindeps ~/.bashrc > /dev/null || echo '. /usr/local/share/quindeps/quindeps' >> ~/.bashrc
grep quindeps ~/.zshrc > /dev/null || echo '. /usr/local/share/quindeps/quindeps' >> ~/.zshrc
