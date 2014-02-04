parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

function bash_scheme {
local BLACK="\[\033[0;30m\]"
local BLACKBOLD="\[\033[1;30m\]"
local RED="\[\033[0;31m\]"
local REDBOLD="\[\033[1;31m\]"
local GREEN="\[\033[0;32m\]"
local GREENBOLD="\[\033[1;32m\]"
local YELLOW="\[\033[0;33m\]"
local YELLOWBOLD="\[\033[1;33m\]"
local BLUE="\[\033[0;34m\]"
local BLUEBOLD="\[\033[1;34m\]"
local PURPLE="\[\033[0;35m\]"
local PURPLEBOLD="\[\033[1;35m\]"
local CYAN="\[\033[0;36m\]"
local CYANBOLD="\[\033[1;36m\]"
local WHITE="\[\033[0;37m\]"
local WHITEBOLD="\[\033[1;37m\]"

export PS1="$WHITE\u@\h \@ $CYAN\w$YELLOW$(parse_git_branch)\[\033[00m\]: "
}

bash_scheme

export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/ssl/bin:/usr/local/opt/ruby/bin

export RBENV_ROOT=/usr/local/var/rbenv

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

say -v Vicki -r 200 "welcome back"

source ~/git-completion.bash
