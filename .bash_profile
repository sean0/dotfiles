echo "Current time: $(date)"
ulimit -n 1024

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export HISTSIZE= HISTFILESIZE= HISTCONTROL=ignoredups:erasedups HISTIGNORE=" *:cd:ls"

GIT_PS1_SHOWCOLORHINTS=true
PROMPT_COMMAND='__git_ps1 "${VIRTUAL_ENV:+(`basename $VIRTUAL_ENV`)}\w " "$ " "[%s]"'

# env vars
. $HOME/.bash.env

export WORKDIR="/Users/sean/.work"
export EDITOR=vim

. $HOME/.homebrew.env

alias la="ls -alhG"
alias b="cd $WORKDIR"
alias ve=". virtualenv/bin/activate"

alias dockclean="docker ps -a | grep Exited | cut -d ' ' -f 1 | xargs docker rm"
alias dockcleani="docker images -f "dangling=true" -q | xargs docker rmi"

alias config='/usr/bin/git --git-dir=/Users/sean/dotfiles/ --work-tree=/Users/sean'
dockexec() { docker exec -ti $(docker ps -q | head -1) bash; }
# show me links when I which
whicher() { ls -alhG $(which "$1"); }

## local sbin directory
export PATH=/usr/local/sbin:$PATH

## Personal scripts directory
export PATH=$PATH:/opt/bin

## Work scripts directory
export PATH=$PATH:$WORKDIR/.bin

cd $WORKDIR

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

