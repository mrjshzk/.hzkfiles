#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

#aliases
alias ls='ls --color=auto'
alias grep='rg --color=auto'
alias emacsclient='GDK_BACKEND=wayland emacsclient'

# exports
export PATH="$HOME/.config/emacs/bin:$PATH"

# initialize starship
eval "$(starship init bash)"
