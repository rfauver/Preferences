eval "$(rbenv init -)"
export PGDATA="/usr/local/var/postgres"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export EDITOR="subl -w"
export BUNDLER_EDITOR="subl"
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
alias rc="bin/rails c"
alias pc="bin/scripted -p"
alias gpc="heroku run rails c -a scripted-billing-production"
alias gspec="cd ~/billing_goat && bin/rspec -t ~bt"
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "
