[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export HISTSIZE= HISTFILESIZE= HISTCONTROL=ignoredups:erasedups

GIT_PS1_SHOWCOLORHINTS=true
PROMPT_COMMAND='__git_ps1 "${VIRTUAL_ENV:+(`basename $VIRTUAL_ENV`)}\w " "$ " "[%s]"'

# bash completion for z
. /usr/local/etc/profile.d/z.sh

# env vars
. $HOME/.bash.env

export PREZIDIR="/Users/seanob/.prezi"
export EDITOR=vim
export PATH="$PATH:$PREZIDIR/simply"
export JAVA_HOME=$(/usr/libexec/java_home)
export CPPFLAGS=-I/usr/local/opt/openssl/include
export LDFLAGS=-L/usr/local/opt/openssl/lib

. $HOME/.homebrew.env

## bash completion for simply
. $PREZIDIR/simply/simply.completion

alias la="ls -alhG"
alias p="cd $PREZIDIR"
alias dockclean="docker ps -a | grep Exited | cut -d ' ' -f 1 | xargs docker rm"
alias dockcleani="docker images -f "dangling=true" -q | xargs docker rmi"
alias config='/usr/bin/git --git-dir=/Users/seanob/dotfiles/ --work-tree=/Users/seanob'
dockexec() { docker exec -ti $(docker ps -q | head -1) bash; }
# show me links when I which
whicher() { ls -alhG $(which "$1"); }
countdowns() { /Users/seanob/.personal/countdowns.sh;  }

## Personal Scripts directory
export PATH=$PATH:/opt/bin

# go binary directory
export PATH=$PATH:/Users/seanob/go/bin
export GOPATH=$(go env GOPATH)

# needed for haxe according to brew
export HAXE_STD_PATH="/usr/local/etc/haxe/std"

# needed for client-editor
export FLEX_HOME="$PREZIDIR/flex_sdk_4.6"

# needed for python shell completion
export PYTHONSTARTUP="/Users/seanob/.pythonrc"

cd $PREZIDIR

 # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

