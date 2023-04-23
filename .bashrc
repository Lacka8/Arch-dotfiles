#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# No history size limit
HISTSIZE=
HISTFILESIZE=

# No duplicate commands saved to history
export HISTCONTROL=ignoreboth:erasedups

# Append to history instead of overwriting
# shopt -s histappend

# Try to save multiline command in one entry
shopt -s cmdhist

# Minor typos are corrected in cd
shopt -s cdspell

# Set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Nano settings
alias nano='nano -AMPZabceijlm -T 2'

# Colorize the ls output
alias ls='ls -h --color=auto --group-directories-first'

# Detailed long listing with ls
alias ll='ls -lah'
alias la='ll'

# Less with clean exit and scrollback
LESS="-iwgerMFKQX --mouse --wheel-lines=4"; export LESS

# Less is more colorful
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_so=$'\E[01;44;33m'
# export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'
export LESS_TERMCAP_ue=$'\E[0m'

# Colorize the grep output
alias grep='grep --color=auto'

# Colorize the diff output
alias diff='diff --color=auto'

# mv flags
# -i interactive: prompt before overwrite
alias mv='mv -i'

# Expand aliases when using sudo
alias sudo='sudo '

# Rerun previous line with sudo
alias please='sudo $(history -p !!)'
alias pls='please'

# Powerline setup
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# fzf setup
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m'
fi

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots='dotfiles'