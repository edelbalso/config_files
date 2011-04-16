# If not running interactively, don't do anything
if [[ ! -z "$PS1" ]] ; then

# bind TAB to menu-complete dir items
# bind '"\t":menu-complete'

# Change the colors used by ls
export LSCOLORS="GxDxFxdxCxExExhbadgxgx"
#export LSCOLORS=ExFxCxDxBxegedabagacad # My preference
#export EDITOR="mate -w"
#export LESSEDIT='mate -l %lm %f'
export LC_CTYPE="en_US.UTF-8"

# hadoop
#export PATH="$PATH:~/Development/hadoop/bin" 
#export HADOOP_HOME="~/Development/hadoop"

# ec2
#export PATH="$PATH:/Users/paul/.ec2" 
#export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
#export EC2_HOME=~/OpenSource/ec2-api-tools-1.3-42584
#export PATH=$EC2_HOME/bin:$PATH
#export EC2_PRIVATE_KEY=`ls ~/.ec2/pk-*.pem`
#export EC2_CERT=`ls ~/.ec2/cert-*.pem`

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

# Custom PATH
export PATH="/usr/local/bin:/usr/local/redis:$PATH"
export PATH="$PATH:/opt/local/include"

export MANPATH="$MANPATH:/usr/local/git/man:/usr/local/mysql/man"

if [ -d ~/bin ]; then
  export PATH=:~/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
fi

if [ -d ~/lib/bin ]; then
  export PATH=:~/lib/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
fi



# Load in .bashrc -------------------------------------------------
source ~/.bashrc

source ~/.git-completion.bash

# rcli Installer addition on 2010-09-14 18:26:07 -0400. Adding appropriate PATH variables for use with rcli.
export PATH=/Users/edu/.rcli/bin:$PATH
# Finished adapting your PATH environment variable for use with rcli.

fi
