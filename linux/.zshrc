export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dracula"

plugins=(brew copypath copyfile custom-functions deno docker docker-compose extract git history npm python vscode web-search yarn)

# global
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=$HOME/local/bin:$PATH
export NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
#export JAVA_HOME="$(/usr/libexec/java_home -v 1.$JAVA_VERSION)" # enable this if you are using java
#export PATH=/usr/share/maven/bin:$PATH # enable this if you are using maven
#export PATH=$HOME/mongodb/bin:$PATH # enable this if you are using mongodb
#export PATH=$PATH:~/.composer/vendor/bin # enable this if you are using composer

# github
export GH_TOKEN="" # create token at https://github.com/settings/apps select "Personal access tokens"

# ssh
export SSH_KEY_PATH="~/.ssh/id_ed25519"

# node and npm
export NODE_ENV="development"
export NPM_TOKEN="" # create token at https://www.npmjs.com/settings/tokens
export NPM_SCOPE="" # e.g. tcelestino

# local
export USER_NAME="" # e.g. tcelestino
export USER_EMAIL="" # e.g. your.email@provider.com

# preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# web search custom search engines
ZSH_WEB_SEARCH_ENGINES=(
  reddit "https://www.reddit.com/search/?q="
  linkedin "https://www.linkedin.com/search/results/all/?keywords="
)

# deno settings
. "$HOME/.deno/env"

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

source $ZSH/oh-my-zsh.sh

