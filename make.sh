#!/usr/bin/env bash
#
# Convert aliases definitions to bash syntax or git config syntax
#
# This script avoids a layer of Makefile string interpolation hell.
#
# Comment syntax for the aliases file uses ^#
#
# For the bash file
if [ $1 == "bash" ]
then
sed -e '/^#.*/d' aliases | sed -e 's/!//g' | while read a b; do echo "alias g$a=$b"; done > bash-git-aliases
fi
if [ $1 == "git" ]
then
# For the git file
sed -e '/^#.*/d' aliases | while read a b; do echo "git config --global alias.$a $b"; done > git-aliases
fi
