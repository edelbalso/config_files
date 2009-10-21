# See following for more information: http://www.infinitered.com/blog/?p=19


# Path ------------------------------------------------------------
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$PATH  # OS-X Specific, with MacPorts and MySQL installed
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH  # OS-X Specific, with MacPorts installed

if [ -d ~/bin ]; then
	export PATH=:~/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
fi



# Load in .bashrc -------------------------------------------------
source ~/.git-completion.bash
source ~/.bashrc



# Hello Messsage --------------------------------------------------



# Notes: ----------------------------------------------------------
# When you start an interactive shell (log in, open terminal or iTerm in OS X, 
# or create a new tab in iTerm) the following files are read and run, in this order:
#     profile
#     bashrc
#     .bash_profile
#     .bashrc (only because this file is run (sourced) in .bash_profile)
#
# When an interactive shell, that is not a login shell, is started 
# (when you run "bash" from inside a shell, or when you start a shell in 
# xwindows [xterm/gnome-terminal/etc] ) the following files are read and executed, 
# in this order:
#     bashrc
#     .bashrc
##
# Your previous /Users/paul/.bash_profile file was backed up as /Users/paul/.bash_profile.macports-saved_2009-09-24_at_15:18:20
##

# MacPorts Installer addition on 2009-09-24_at_15:18:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/paul/.bash_profile file was backed up as /Users/paul/.bash_profile.macports-saved_2009-09-24_at_23:33:37
##

# MacPorts Installer addition on 2009-09-24_at_23:33:37: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# ec2
export PATH="$PATH:/Users/paul/.ec2" 
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export EC2_HOME=~/OpenSource/ec2-api-tools-1.3-34128
export PATH=$EC2_HOME/bin:$PATH
export EC2_PRIVATE_KEY=`ls ~/.ec2/pk-*.pem`
export EC2_CERT=`ls ~/.ec2/cert-*.pem`
