# completion
autoload -U compinit
compinit

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=vim

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

if [ -e "$HOME/.myaliases" ]; then
  source "$HOME/.myaliases"
fi


# emacs mode
bindkey -e

# use incremental search
bindkey ^R history-incremental-search-backward

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='[${SSH_CONNECTION+"%n@%m:"}%~] '

# ignore duplicate history entries
setopt histignoredups

# keep more history
export HISTSIZE=1000

export PATH="/usr/local/git/libexec/git-core:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH:/Users/paul/.ec2:~/bin" 
