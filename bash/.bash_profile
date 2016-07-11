#enables colorin the terminal bash shell export
export CLICOLOR=1

#sets up thecolor scheme for list export
export LSCOLORS=gxfxcxdxbxegedabagacad

#sets up theprompt color (currently a green similar to linux terminal)
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

#enables colorfor iTerm
export TERM=xterm-256color

#alias
alias ll='ls -al'
alias t='tig'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
#path
export PATH="$PATH:/Users/songgl/WorkSpace/arcanist/bin/"
export PATH="$PATH:/usr/local/go/bin"
export GOPATH=/Users/songgl/work/codes/goCode
export GOBIN=$GOPATH/bin
export PATH="$PATH:$GOPATH/bin"

export GROOVY_HOME="/usr/local/groovy"
export PATH="$PATH:$GROOVY_HOME/bin"
#.bashrc

parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(branch::\1)/'
}

#PS1="\[\e[32;1m\]\u@\h\[\e[0m\] \w \[\e[31m\]\$(parse_git_branch)\[\e[34m\]$\[\e[0m\] "
PS1="\[\e[32;1m\]\u@\h\[\e[0m\]:\[\033[01;36m\]\w\[\033[00m\]\[\e[31m\]\$(parse_git_branch)\[\e[34m\]$\[\e[0m\] "

source ~/.git-completion.bash
