#!/bin/zsh
#
if [ ! -e ${ZDOTDIR:-$HOME}/.zprezto ]
then
	echo " - Install zepto"
	
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
	
	setopt EXTENDED_GLOB
	for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md;
	do
		ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
	done
fi
