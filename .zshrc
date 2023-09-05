# personal z shell config
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'
alias sudoedit='/usr/bin/sudo -e'
PROMPT="[%n@%B%F{167}%M%f%b:%~] $ "
alias 'git-pretty'='git log --oneline --graph --color --all --decorate'

# enable zsh auto completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi
