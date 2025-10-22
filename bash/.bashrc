#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -la --color=auto'
# PS1='[\u@\h \W]\$ '

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

eval "$(oh-my-posh init bash --config ~/.config/ohmyposh/zash.omp.json)"

echo -ne '\e[2 q'
