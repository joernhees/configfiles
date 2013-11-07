# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# fink environment additions
#test -r /sw/bin/init.sh && . /sw/bin/init.sh


# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# some settings to prefer homebrew paths in case it exists:
if which -s brew ; then
    #PATH="/usr/local/bin:/usr/local/sbin:$PATH"
    PATH="/usr/local/bin:/usr/local/sbin:$PATH"
    #PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

