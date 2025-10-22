
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -la --color=auto'

# add local bin to path
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# init prompt
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/zash.omp.json)"

# block cursor 
echo -ne '\e[2 q'

# neofetch splash 
if [[ -n $PS1 ]]; then
    clear
    fastfetch
fi
