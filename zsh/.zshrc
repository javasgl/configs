
#enables colorin the terminal bash shell export
export CLICOLOR=1

export TERM=xterm-256color

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#path
export PATH="$PATH:/Users/songgl/workspace/arcanist/bin/"
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="/Users/songgl/work/codes/goCode"
#export GOBIN=$GOPATH/bin

export PATH="$PATH:$GOPATH/bin"
export GROOVY_HOME="/usr/local/groovy"
export PATH="$PATH:$GROOVY_HOME/bin"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

# yarn
export PATH="$PATH:`yarn global bin`"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/songgl/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast autojump osx node npm python zsh-wakatime)

source $ZSH/oh-my-zsh.sh

# User configuration
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshsave="source ~/.zshrc"
alias ll="ls -alh"
alias t="tig"
alias pc4="proxychains4"

# editor alias
alias open="open -a Sublime\ Text"
# git alias
alias gpr="git pr"
alias gdi="git diff"
alias gad="git add"
alias gfe="git fetch -p"
alias gme="git merge"
alias gpl="git pull"
alias gpu="git push"
alias gco="git commit"
alias gst="git status -b"
alias gch="git checkout"
alias gcp="git cherry-pick"
alias gbr="git branch -vv"
alias gbrr="git branch -r"
alias gss="git status -s -b"
alias gstaa="git stash -u"
alias gstal="git stash list"
alias gstap="git stash pop"
alias gla='git log --pretty="format:%ad %h (%an): %s" --date=short'
alias gll="git log --pretty=oneline --graph --decorate --abbrev-commit --all"
alias gls="git log --oneline --stat --date=short"

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
eval "$(direnv hook zsh)"
