[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export HISTSIZE= HISTFILESIZE= HISTCONTROL=ignoredups:erasedups

GIT_PS1_SHOWCOLORHINTS=true
PROMPT_COMMAND='__git_ps1 "${VIRTUAL_ENV:+(`basename $VIRTUAL_ENV`)}\w " "$ " "[%s]"'

# bash completion for z
. /usr/local/etc/profile.d/z.sh

export PREZIDIR="/Users/seanob/.prezi"
export EDITOR=vim
export PATH="$PATH:$HOME/Library/Haskell/bin"
export PATH="$PATH:$PREZIDIR/simply"
export JAVA_HOME=$(/usr/libexec/java_home)

. $HOME/.homebrew.env

## bash completion for simply
. $PREZIDIR/simply/simply.completion

alias chef="cd $PREZIDIR/prezi-chef"
alias la="ls -alhG"
alias p="cd $PREZIDIR"
alias please="$PREZIDIR/please/please"
alias dockclean="docker ps -a | grep Exited | cut -d ' ' -f 1 | xargs docker rm"
alias dockcleani="docker images -f "dangling=true" -q | xargs docker rmi"
alias config='/usr/bin/git --git-dir=/Users/seanob/dotfiles/ --work-tree=/Users/seanob'

## Personal Scripts directory
export PATH=$PATH:/opt/bin

# go binary directory
export PATH=$PATH:/Users/seanob/go/bin

# needed for haxe according to brew
export HAXE_STD_PATH="/usr/local/etc/haxe/std"

# needed for client-editor
export FLEX_HOME="$PREZIDIR/flex_sdk_4.6"

# needed for python shell completion
export PYTHONSTARTUP="/Users/seanob/.pythonrc"

cd $PREZIDIR

 # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/seanob/google-cloud-sdk/path.bash.inc' ]; then source '/Users/seanob/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/seanob/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/seanob/google-cloud-sdk/completion.bash.inc'; fi
