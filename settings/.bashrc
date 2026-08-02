source ~/.sshrc						# Command line prompt
source ~/.company_vars		        # Company specific vars

# Hide message about zsh being default shell
export BASH_SILENCE_DEPRECATION_WARNING=1

# Python
export PYTHONDONTWRITEBYTECODE=1    # Don't create .pyc or __pycache__ files
export PYTHONPATH=".:./src"  # Add project src to PYTHONPATH

# Java
# export JAVA_HOME=`/usr/libexec/java_home`
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk
export CLASSPATH="."
export PATH=$PATH:/usr/libexec/

# Terminal
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Git
export GIT_ASKPASS=~/.github/gittoken.sh

# Brew
export PATH=/opt/homebrew/bin:$PATH

# pycharm
export PATH='/Applications/PyCharm CE.app/Contents/MacOS':$PATH

# Claude 
export PATH="$HOME/.local/bin:$PATH"

# Editors 
export VISUAL=nano
export EDITOR=nano
. "$HOME/.cargo/env"
