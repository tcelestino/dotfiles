# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="awesomepanda"

plugins=(alias-finder copypath copyfile extract macos vscode git-extras git gh node npm composer docker docker-compose iterm2 yarn sudo history httpie web-search)

# User configuration
export JAVA_HOME="$(/usr/libexec/java_home -v 1.$JAVA_VERSION)"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/usr/share/maven/bin:$PATH
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/mongodb/bin:$PATH
export PATH=$PATH:~/.composer/vendor/bin
export NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export GH_TOKEN={YOUR GITHUB TOKEN}
export NPM_TOKEN={YOUR NPM TOKEN}

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

function checkPort {
  lsof -t -i:$argv[1]
}

function killPort {
  kill -9 (lsof -t -i:$argv[1])
}

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# oh-my-zsh
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias reload="source ~/.zshrc"

#development
alias server="python -m SimpleHTTPServer"
alias dcu="docker-compose up"
alias serveo="ssh -R 80:localhost:3000 serveo.net"

# npx
alias commit="npx git-cz" #commit using git-cz package
alias react-app="npx create-react-app" # create react app

# mac
alias work="~/Projects"
alias shutdown="sudo shutdown -h now"
alias hosts="sudo $EDITOR /etc/hosts"
alias dns_clear="dscacheutil -flushcache"

# mv, rm, cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'
alias md="mkdir"
alias rd="rmdir"
alias del="rm -i"
alias rd="rmdir"
alias del="rm -i"

alias checkport=checkPort
alias killport=killPort

alias killnode="killall -9 node"

# Easier navigation: .., ..., ~ and -
alias cl="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

alias chmox='chmod -x'
alias where=which

# File size
alias fs="stat -f \"%z bytes\""

# Docker
alias dockercleand='docker rmi $(docker images -q)' #delete all images
alias dockercleanu='docker rmi $(docker images -q -f dangling=true)' # delete all untagged images
alias dockercleans='docker rm $(docker ps -a -q)' #delete all stopped images
alias dockerstop='docker stop $(docker ps -aq)' #stop all container
alias hostclean='export DOCKER_HOST='

# npm
alias npm-i='npm install'
alias npm-is='npm install --save'
alias npm-id='npm install --save-dev'
alias npm-ig='npm install --global'
alias npm-start='npm start'
alias npm-test='npm test'
alias npm-it='npm install && npm test'
alias npm-lk='npm link'
alias npm-run='npm run'
alias npm-reset='rm -rf node_modules && rm -f package-lock.json && npm install && npx node-notifier-cli -t "Done" -m "npm modules reinstalled" -s Glass -i https://cdn.rawgit.com/npm/logos/31945b5c/npm%20square/n-64.png'
alias npm-ri='rm -rf node_modules && npm i'
