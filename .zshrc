# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="honukai"
FRONTEND_SEARCH_FALLBACK="duckduckgo"

plugins=(osx vscode git node composer docker docker-compose iterm2 zsh-autosuggestions frontend-search)

# User configuration
export JAVA_HOME="$(/usr/libexec/java_home -v 1.$JAVA_VERSION)"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/usr/share/maven/bin:$PATH
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/mongodb/bin:$PATH
export PATH=$PATH:~/.composer/vendor/bin
export NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"
export GH_TOKEN=

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"
