ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

#plugins: git
plugins=(fasd history-substring-search history bundler brew gem rbates mvn cp node npm svn ssh-agent github) 

#export PATH="/usr/local/bin:/usr/local/sbin:$PATH:$HOME/bin:/usr/local/share/npm/bin:/usr/local/mysql/bin"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

