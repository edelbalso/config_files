# If not running interactively, don't do anything
if [[ ! -z "$PS1" ]] ; then

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same successive entries.
export HISTCONTROL=ignoreboth

# bind TAB to menu-complete dir items
# bind '"\t":menu-complete'

# Change the colors used by ls
export LSCOLORS="GxDxFxdxCxExExhbadgxgx"
#export LSCOLORS=ExFxCxDxBxegedabagacad # My preference
#export EDITOR="mate -w"
export LESSEDIT='mate -l %lm %f'
export LC_CTYPE="en_US.UTF-8"

# Custom PATH
export PATH="$PATH:~/lib/bin:~/lib/cakephp/core/current/cake/console"
export PATH="$PATH:/opt/local/include"

export MANPATH="$MANPATH:/usr/local/git/man:/usr/local/mysql/man"

# Path ------------------------------------------------------------
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$PATH  # OS-X Specific, with MacPorts and MySQL installed
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH  # OS-X Specific, with MacPorts installed

# MacPorts Installer addition on 2009-05-21_at_12:37:15: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

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

if [ -f ~/.localaliases ]; then
    . ~/.localaliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

if [ -d ~/bin ]; then
	export PATH=:~/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
fi

if [ -d ~/lib/bin ]; then
	export PATH=:~/lib/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
fi

function cuke {
  if [ -z "$1" ]; then
    rake cucumber
  else
    rake cucumber FEATURE=$1
  fi
}

# Load in .bashrc -------------------------------------------------
source ~/.git-completion.bash
source ~/.bashrc

if [[ -s /Users/edu/.rvm/scripts/rvm ]] ; then source /Users/edu/.rvm/scripts/rvm ; fi

fi

##
# Your previous /Users/edu/.bash_profile file was backed up as /Users/edu/.bash_profile.macports-saved_2010-08-02_at_21:12:35
##

# MacPorts Installer addition on 2010-08-02_at_21:12:35: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.



# rcli Installer addition on 2010-09-14 18:26:07 -0400. Adding appropriate PATH variables for use with rcli.
export PATH=/Users/edu/.rcli/bin:$PATH
# Finished adapting your PATH environment variable for use with rcli.
#
#
#
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
