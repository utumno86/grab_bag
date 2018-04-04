set -g -x PATH /usr/local/bin $PATH
set -g -x fish_greeting 'Release every zig for great justice!'
cal
date

# Ruby
export BUNDLER_EDITOR=code
status --is-interactive; and source (rbenv init -|psub)

# Go
export GOPATH=/Users/michael/Developer/GoWorkspace/
set -g -x PATH $GOPATH/bin $PATH

# Rust
set -g -x PATH $HOME/.cargo/bin $PATH

#Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

#Pokemon Terminal
set -g -x PATH $HOME/.Pokemon-Terminal $PATH
pokemon -r kanto --dark

#Tiny Care Terminal
export TTC_BOTS=magicrealismbot,tinycarebot,selfcare_bot
export TTC_WEATHER=Tampa
export TTC_CELSIUS=false
export TTC_REPOS=~/Developer
export TTC_APIKEYS=true
export TTC_UPDATE_INTERVAL=20
export TTC_SAY_BOX=parrot
export TTC_REPOS_DEPTH=5

#Twitter
export CONSUMER_KEY=
export CONSUMER_SECRET=
export ACCESS_TOKEN=
export ACCESS_TOKEN_SECRET=

# Github
export HOMEBREW_GITHUB_API_TOKEN=

alias att="atom ."
alias gu="gem update"
alias gemc="gem cleanup"
alias nu="npm update -g"
alias plo="pip3 list --outdated"
alias piu="pip3 install --upgrade"
alias au="apm update"
alias bu="brew update"
alias bo="brew outdated"
alias bup="brew upgrade -all"
alias bc="brew cleanup"
alias ll="ls -lathr"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"
alias fs="foreman start"
alias bcup="groovy /Users/michael/Developer/JunkBin/Scripts/brew-cask-update.groovy"
alias log="git log --graph --pretty=format:'%Cred%H%Creset -%C(yellow)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"
alias del="rm -rf"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias ctt="code ."
alias gospace="cd ~/Developer/GoWorkspace/src/github.com/utumno86"
alias ipaddress="ifconfig | grep 'inet ' | grep -Fv 127.0.0.1 | awk '{print $2}'"