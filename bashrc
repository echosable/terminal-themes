# colors
darkgrey="$(tput bold ; tput setaf 0)"
white="$(tput bold ; tput setaf 7)"
blue="$(tput bold; tput setaf 4)"
cyan="$(tput bold; tput setaf 6)"
nc="$(tput sgr0)"
# Standard Colors
black="$(tput setaf 0)"
red="$(tput setaf 1)"
green="$(tput setaf 2)"
yellow="$(tput setaf 3)"
magenta="$(tput setaf 5)"

# Bold Colors
bold_black="$(tput bold; tput setaf 0)"
bold_red="$(tput bold; tput setaf 1)"
bold_green="$(tput bold; tput setaf 2)"
bold_yellow="$(tput bold; tput setaf 3)"
bold_blue="$(tput bold; tput setaf 4)"
bold_magenta="$(tput bold; tput setaf 5)"
bold_cyan="$(tput bold; tput setaf 6)"
bold_white="$(tput bold; tput setaf 7)"

# Bright Colors (typically supported in many terminals)
bright_black="$(tput setaf 8)"
bright_red="$(tput setaf 9)"
bright_green="$(tput setaf 10)"
bright_yellow="$(tput setaf 11)"
bright_blue="$(tput setaf 12)"
bright_magenta="$(tput setaf 13)"
bright_cyan="$(tput setaf 14)"
bright_white="$(tput setaf 15)"

# Bold Bright Colors
bold_bright_black="$(tput bold; tput setaf 8)"
bold_bright_red="$(tput bold; tput setaf 9)"
bold_bright_green="$(tput bold; tput setaf 10)"
bold_bright_yellow="$(tput bold; tput setaf 11)"
bold_bright_blue="$(tput bold; tput setaf 12)"
bold_bright_magenta="$(tput bold; tput setaf 13)"
bold_bright_cyan="$(tput bold; tput setaf 14)"
bold_bright_white="$(tput bold; tput setaf 15)"
# exports
export PATH="${HOME}/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:"
export PATH="${PATH}/usr/local/sbin:/opt/bin:/usr/bin/core_perl:/usr/games/bin:"
export PS1="\[$bold_bright_red\]┌───[ \[$cyan\]\h \033[]: \033[1;32m\w \[$darkgrey\]\e \[$bold_bright_red\]]───\[$nc\]\[$bold_bright_green\][\[$white\]\t\[$bold_bright_green\]]\[$nc\] - \[$red\][\033[1;37m\u\[$nc\]\[$red\]]\[$nc\]
\[$bold_bright_red\]└───\[$white\]$\[$nc\] "
export LD_PRELOAD=""
export EDITOR="vim"
# conf manual
HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
# alias
alias ls="ls --color=auto"
alias vi="vim"
alias shred="shred -zf"
#alias python="python2"
alias wget="wget -U 'noleak'"
alias curl="curl --user-agent 'noleak'"
 alias grep='grep --color=auto'
# source files
#[ -r /usr/share/bash-completion/completions ] &&
 # . /usr/share/bash-completion/completions/*
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

