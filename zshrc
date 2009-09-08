# completion
autoload -U compinit
compinit

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=mate

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

if [ -e "$HOME/.myaliases" ]; then
  source "$HOME/.myaliases"
fi

if [ -e "$HOME/.backup" ]; then
  source "$HOME/.backup"
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
export HISTFILE=~/.zhistory  # History settings
export HISTSIZE=100000
export SAVEHIST=1000       # Default: 200
setopt appendhistory     # multiple zsh's all append to same history file (rather than last

export PATH="/usr/local/git/libexec/git-core:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH:/Users/paul/.ec2:~/bin" 
export PATH=/opt/nginx/sbin:/opt/local/bin:/opt/local/sbin:$PATH

# ec2
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_HOME=~/OpenSource/ec2-api-tools-1.3-34128
export PATH=$EC2_HOME/bin:$PATH
export EC2_PRIVATE_KEY=`ls ~/.ec2/pk-*.pem`
export EC2_CERT=`ls ~/.ec2/cert-*.pem`