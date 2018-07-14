#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

#setfont ter-v24n
alias ls='ls --color=auto'
alias ll='ls -lah'
alias mleft='xrandr --output HDMI-1 --left-of eDP-1 && xrandr --output HDMI-1 --auto'
#PS1='[\u@\h \W]\$ '

if [ "$TERM" = "linux" ]; then
    _SEDCMD='s/.*\*color\([0-9]\{1,\}\).*#\([0-9a-fA-F]\{6\}\).*/\1 \2/p'
    for i in $(sed -n "$_SEDCMD" $HOME/.Xresources | awk '$1 < 16 {printf "\\e]P%X%s", $1, $2}'); do
        echo -en "$i"
    done
    clear
fi

#PS1="\e[0;49;31m\]{\[\e[0;49;36m\]\u\[\e[0;49;35m\]@\[\e[0;49;32m\]\h\[\[\e[0;49;39m\]:\[\e[0;49;92m\]\W\[\e[0;49;31m\]}\[\e[0;49;36m\]$>\[\e[0;49;96m\]"
#export PS1="\[\033[38;5;166m\]{\[$(tput sgr0)\]\[\033[38;5;45m\]\u\[$(tput sgr0)\]\[\033[38;5;213m\]@\[$(tput sgr0)\]\[\033[38;5;226m\]\h\[$(tput sgr0)\]\[\033[38;5;219m\]:\[$(tput sgr0)\]\[\033[38;5;81m\]\W\[$(tput sgr0)\]\[\033[38;5;166m\]}\[$(tput sgr0)\]\[\033[38;5;6m\]\\$\[$(tput sgr0)\]\[\033[38;5;13m\]>\[$(tput sgr0)\]"
export PS1="\[\033[38;5;94m\]{\[$(tput sgr0)\]\[\033[38;5;47m\]\u\[$(tput sgr0)\]\[\033[38;5;213m\]@\[$(tput sgr0)\]\[\033[38;5;226m\]\h\[$(tput sgr0)\]\[\033[38;5;219m\]:\[$(tput sgr0)\]\[\033[38;5;163m\]\W\[$(tput sgr0)\]\[\033[38;5;94m\]}\[$(tput sgr0)\]\[\033[38;5;6m\]\\$\[$(tput sgr0)\]\[\033[38;5;13m\]>\[$(tput sgr0)\]"
