# Add mysql to the path
export PATH=$PATH:/usr/local/mysql/bin

# Colored output of ls for use with OSX
alias ls='ls -G'

# Configure command prompt + colors
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }
   
   RED="\[\033[0;31m\]"
   YELLOW="\[\033[0;33m\]"
   GREEN="\[\033[0;32m\]"
   NO_COLOR="\[\033[0m\]"

   PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

# Virtualenvwrapper settings
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Dev  
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Convenience shortcuts
alias s="http-server"
alias n='PATH=$(npm bin):$PATH'

# Git completion (may not work?)
if [ -f ~/.git-completion.bash ]; then 
  . ~/.git-completion.bash
fi

# For fixing command history in python interpreter
export PYTHONSTARTUP=~/.pystartup

# add NVM_DIR environmental variable and run start script
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

