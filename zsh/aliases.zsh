# oh-my-zsh
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias reload="omz reload"
alias custom-alias="$EDITOR ~/.oh-my-zsh/custom/aliases.zsh"

# local development
alias server="python3 -m http.server"
alias serveo="ssh -R 80:localhost:3000 serveo.net"

# https://paulbrowne.xyz/https-localhost
alias https-server="http-server --ssl --cert ~/.ssl/localhost.crt --key ~/.ssl/localhost.key -a localhost -o"

# npm
alias npm-i="npm install"
alias npm-is="npm install --save"
alias npm-id="npm install --save-dev"
alias npm-ig="npm install --global"
alias npm-start="npm start"
alias npm-test="npm test"
alias npm-it="npm install && npm test"
alias npm-lk="npm link"
alias npm-run="npm run"
alias npm-ri="rm -rf node_modules && npm i"
alias npm-reset='rm -rf node_modules && rm -f package-lock.json && npm install && npx node-notifier-cli -t "Done" -m "npm modules reinstalled" -s Glass -i https://cdn.rawgit.com/npm/logos/31945b5c/npm%20square/n-64.png'

# git-cz
alias commit="git-cz --disable-emoji"
alias commitall="git add . && git-cz --disable-emoji"

# directory
alias downloads="cd ~/Downloads"
alias work=workFolder

# mv, rm, cp
alias mv="mv -v"
alias rm="rm -i -v"
alias cp="cp -v"
alias rd="rmdir"
alias del="rm -i"

# docker
alias docker-rmi="docker rmi $(docker images -q)" # delete all images
alias docker-rmiu="docker rmi $(docker images -q -f dangling=true)" # delete all untagged images
alias docker-rmus="docker rm $(docker ps -a -q)" # delete all stopped images
alias docker-stop="docker stop $(docker ps -aq)" # stop all container
alias docker-ch="export DOCKER_HOST="

# docker-compose
alias dcu="docker-compose up" #start with docker-compose
alias dcd="docker-compose down" #stop with docker-compose
alias dcdv="docker-compose down -v" #stop with docker-compose and remove volumes
alias dcr="docker-compose restart" #restart with docker-compose
alias dcb="docker-compose build" #build with docker-compose
alias dcl="docker-compose logs" #logs with docker-compose
alias dcdp="docker-compose -f docker-compose.dependencies.yaml up -d" #start dependencies with docker-compose

# utils
alias fs=filesize
alias chmox="chmod -x"
alias where=which
alias killnode="killall -9 node"
alias what_shell=ps -p $$ -o pid,comm= # show current shell
alias checkport=checkPort
alias killport=killPort

