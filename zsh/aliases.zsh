# oh-my-zsh
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias reload="omz reload" # reload oh-my-zsh
alias zsh-alias="$EDITOR ~/.oh-my-zsh/custom/aliases.zsh"

# local development
alias server="python -m SimpleHTTPServer"
alias serveo="ssh -R 80:localhost:3000 serveo.net"
alias redis-start="/opt/homebrew/opt/redis/bin/redis-server /opt/homebrew/etc/redis.conf" #start redis

# https://paulbrowne.xyz/https-localhost
alias https-server='http-server --ssl --cert ~/.ssl/localhost.crt --key ~/.ssl/localhost.key -a localhost -o'

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

# git
alias commit="git-cz --disable-emoji"
alias commitall="git add . && git-cz --disable-emoji"

# mac
alias shutdown="sudo shutdown -h now"
alias hosts="sudo $EDITOR /etc/hosts"
alias dns_clear="dscacheutil -flushcache"

# directory
alias downloads='cd ~/Downloads/'
alias projects='cd ~/Projects/'
alias work='cd ~/work'

# mv, rm, cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'
alias rd="rmdir"
alias del="rm -i"

alias cl="clear"
alias -- -="cd -"

# docker
alias dockercleand='docker rmi $(docker images -q)' # delete all images
alias dockercleanu='docker rmi $(docker images -q -f dangling=true)' # delete all untagged images
alias dockercleans='docker rm $(docker ps -a -q)' # delete all stopped images
alias dockerstop='docker stop $(docker ps -aq)' # stop all container
alias dcu='docker-compose up' #start with docker-composer
alias dcd='docker-compose down' #stop with docker-composer
alias dcr='docker-compose restart' #restart with docker-composer
alias dcb='docker-compose build' #build with docker-composer
alias dcl='docker-compose logs' #logs with docker-composer
alias dcp='docker-compose -f docker-compose.dependencies.yaml up -d' #start dependencies with docker-composer
alias docker_hostclean='export DOCKER_HOST=' # clean DOCKER_HOST

alias fs="stat -f \"%z bytes\""
alias chmox='chmod -x'
alias where=which
alias killnode="killall -9 node"

alias checkport=checkPort # use my zsh custom plugin
alias killport=killPort # use my zsh custom plugin
alias what_shell=ps -p $$ -o pid,comm= # show current shell
