export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dracula"

plugins=(alias-finder brew copypath copyfile deno dotenv docker docker-compose extract history iterm2 git macos npm python vscode web-search yarn, custom-functions)


# global
export JAVA_HOME="$(/usr/libexec/java_home -v 1.$JAVA_VERSION)"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/usr/share/maven/bin:$PATH
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/mongodb/bin:$PATH
export PATH=$PATH:~/.composer/vendor/bin
export PATH="/opt/homebrew/bin:$PATH" # brew on Apple Silicon
export PATH="/usr/local/bin:$PATH" # brew on Intel
export NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export GH_TOKEN="<YOUR GITHUB TOKEN>" # create token at https://github.com/settings/apps sleect "Personal access tokens"
export NPM_TOKEN="<YOUR NPM TOKEN>"
export NODE_ENV="development"
export SSH_KEY_PATH="~/.ssh/id_ed" # set your ssh key path
export USER_NAME="<YOUR_NAME>"
export USER_EMAIL="<YOUR_EMAIL>"
export NPM_SCOPE=${USER:-your_username} # e.g. tcelestino

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

source $ZSH/oh-my-zsh.sh
