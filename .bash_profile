[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export HISTSIZE= HISTFILESIZE= HISTCONTROL=ignoredups:erasedups

function parse_git_branch {
  git rev-parse --abbrev-ref HEAD 2> /dev/null | sed -e 's/\(.*\)/[\1]/'
}

GIT="\[\033[0;91m\]"
ORIG="\[\033[0m\]"

PS1="\w$GIT \$(parse_git_branch)$ORIG\$ "

${A:${#A}-5:5}

export PROMPT_COMMAND='if [[ -z "$TABNAME" ]]; then echo -ne "\\033]0;${PWD##*/}\\007"; else echo -ne "\\033]0;[$TABNAME]\\007"; fi;'

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

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

cd $PREZIDIR

 # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/seanob/google-cloud-sdk/path.bash.inc' ]; then source '/Users/seanob/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/seanob/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/seanob/google-cloud-sdk/completion.bash.inc'; fi
