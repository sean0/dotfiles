echo "Current time: $(date)"
ulimit -n 1024

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export HISTSIZE= HISTFILESIZE= HISTCONTROL=ignoredups:erasedups HISTIGNORE=" *:cd:ls"

GIT_PS1_SHOWCOLORHINTS=true
PROMPT_COMMAND='__git_ps1 "${VIRTUAL_ENV:+(`basename $VIRTUAL_ENV`)}\w " "$ " "[%s]"'

# env vars
. $HOME/.bash.env

export BASH_SILENCE_DEPRECATION_WARNING=1
export WORKDIR="/Users/sean.obrien/.work"
export EDITOR=vim
#export JAVA_HOME=$(/usr/libexec/java_home)
export CPPFLAGS=-I/usr/local/opt/openssl/include
export LDFLAGS=-L/usr/local/opt/openssl/lib
export GROOVY_HOME=/usr/local/opt/groovy/libexec

. $HOME/.homebrew.env

alias la="ls -alhG"
alias t="cd $WORKDIR"
alias ve=". virtualenv/bin/activate"

alias dockclean="docker ps -a | grep Exited | cut -d ' ' -f 1 | xargs docker rm"
alias dockcleani="docker images -f "dangling=true" -q | xargs docker rmi"

alias config='/usr/bin/git --git-dir=/Users/sean.obrien/dotfiles/ --work-tree=/Users/sean.obrien'
dockexec() { docker exec -ti $(docker ps -q | head -1) bash; }
# show me links when I which
whicher() { ls -alhG $(which "$1"); }

## local sbin directory
export PATH=/usr/local/sbin:$PATH

## Personal scripts directory
export PATH=$PATH:/opt/bin

## Work scripts directory
export PATH=$PATH:$WORKDIR/.bin
## non-system Ruby and installed binaries
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$PATH:/usr/local/lib/ruby/gems/2.6.0/bin"

# go binary directory
export PATH=$PATH:/Users/sean.obrien/go/bin
export GOPATH=$(go env GOPATH)

# needed for python shell completion
export PYTHONSTARTUP="/Users/sean.obrien/.pythonrc"

cd $WORKDIR

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

