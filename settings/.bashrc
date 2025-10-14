############################################################################################
source ~/.sshrc						# Command line prompt
# source ~/_resources/_scripts/.company_vars		# Company specific vars
# source ~/.current_aws_profile		# Currently selected AWS profile "export AWS_PROFILE=...", code in ~/.company_vars
# source ~/.current_aws_region        # Currently selected AWS region "export AWS_REGION=...", code in ~/.company_vars

# my tools
export PATH=$PATH:~/_docs/_projects/tools/jp
export PATH=$PATH:~/_resources/_scripts/

# Hide message about zsh being default shell
export BASH_SILENCE_DEPRECATION_WARNING=1

############################################################################################
# Alises

# ssh
alias ssh='sshrc'

# ranger
alias q='source ranger'

# terminal
function cd {
    builtin cd "$@" && ls -1
}
alias ls='ls -1'
alias t='tree'
alias watch='watch '	# Make watch work with aliases

# brew
alias bs='brew services'

# forklift
alias ft='open . -a forklift'

# yq
# alias yq='yq -C read -'

# pipenv
alias pipenvs='echo ~/.local/share/virtualenvs/ ; ls ~/.local/share/virtualenvs/'

# pyenv
alias pyenvs='pyenv versions'

# pip
alias pip='pip3'

# git
alias gf='git fetch'
alias gd='git diff'
alias gp='git pull'
alias gs='git status'
alias gb='git branch'
alias gl='git log'
alias gll='git log --pretty=oneline'
alias ga='git add -A'
alias gr='git reset'
alias gc='git checkout'
alias gt='git stash'
alias gm='git commit'
alias gu='git push -u origin `parse_git_branch`'
# alias gmu='ga && gm -m wip && gu'

function gmu {
    if [ -z "$1" ]; then
        echo "No parameter was provided."
        ga && gm -m wip && gu
        echo "No parameter was provided."
    else
        echo "The provided parameter is: $1"
        ga && gm -m "$1" && gu
        echo "The provided parameter is: $1"
    fi
}

# docker
alias d='docker'

alias dr='docker run'

alias dv='docker volume'

alias dc='docker container'
alias dcc='docker container rm -f $(docker container ls -aq)'

alias di='docker image'
alias dii='docker image rm -f $(docker image ls -q) || true'

# terraform
alias tfenv='GREP_OPTIONS="--color=never" tfenv'
alias tf='terraform'

# kubernetes
alias k='kubectl'
alias kc='k config get-contexts'
alias kcu='k config use-context'
function kcn() {
	k config set-context --current --namespace=$1
}
alias kv='kubeval'

# helm
alias h='helm'

# maven
alias ma='mvn archetype:generate'
alias m='mvn clean'
alias mc='mvn resources:resources compiler:compile'
alias mct='mvn resources:testResources compiler:testCompile'
alias mt='mvn surefire:test'
alias me='mvn compiler:compile exec:java'
alias mr='mvn resources:resources compiler:compile exec:java'
alias mj='mvn jar:jar shade:shade'

# gradle
alias g='gradle --console=verbose'
alias gw='./gradlew --console=verbose'

# yt-dlp
alias yt='yt-dlp -f 'ba' -x --audio-format mp3 '

# ported GNU commands
alias sed='gsed'

#############################################################################################
# Env variables

# Java
# export JAVA_HOME=`/usr/libexec/java_home`
export JAVA_HOME=/usr/local/Cellar/openjdk@8/1.8.0-452/libexec/openjdk.jdk/Contents/Home
export CLASSPATH="."
export PATH=$PATH:/usr/libexec/

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec


# Terminal
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Git
export GIT_ASKPASS=~/.github/gittoken.sh

# Brew
export PATH=/opt/homebrew/bin:$PATH

# intellij & pycharm
# export PATH=/Users/omomotov/Applications/IntelliJ IDEA Community Edition.app/Contents/MacOS:$PATH


#############################################################################################
# Editors 
export VISUAL=nano
export EDITOR=nano

PS1="${VNG_AWS_PS1}${PS1}"
