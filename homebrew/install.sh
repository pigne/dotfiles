#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

if [ "$(uname -s)" == "Darwin" ]
	# Check for Homebrew
	if test ! $(which brew)
	then
	  echo " - Install Homebrew"
	  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)" > /tmp/homebrew-install.log
	else
		echo " - Update Homebrew"
		brew update
	fi
	echo " - Install Homebrew packages"
	# Install homebrew packages
	brew install grc coreutils spark
fi
exit 0
