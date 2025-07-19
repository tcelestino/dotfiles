# find shorthand
function f() {
  find . -name "$1" 2>&1 | grep -v 'Permission denied'
}

# format disks on macos
# $1: type (JHFS+) $2: name disk $3: partions
# use diskutil list to show the partions list
function format() {
  diskutil eraseDisk $1 $2 $3
}

# node init projects
# Based on https://philna.sh/blog/2019/01/10/how-to-start-a-node-js-project/
function node-project() {
  git init
  npx license $(npm get init.license) -o "$(npm get init.author.name)" > LICENSE
  npx gitignore node
  npm init -y
  git add -A
  git commit -m "Initial commit"
}

# detecte yarn project
npm() {
  if [ -e yarn.lock ]; then
    echo "This yarn project. Use yarn instead of"
  else
    command npm $@
  fi
}

# git
clone() {
  git clone $1
  cd $(basename ${1%.*})
  if test -f "./package.json"; then
    echo "..."
    echo "Found package.json... installing dependencies"
    echo "..."
    npm i
  fi
}

# check service port
function checkPort {
  lsof -t -i:$argv[1]
}

# kill service
function killPort {
  kill -9 (lsof -t -i:$argv[1])
}

# log process
function logprocess() {
  if [ -z "$1" ]; then
    echo "Usage: logprocess processName"
    return 1
  fi

  if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    log stream --predicate "process == \"$1\""
  else
    # Linux
    journalctl -f -u "$1" 2>/dev/null || tail -f /var/log/syslog | grep "$1"
  fi
}

# open work folder
function workFolder() {
  if [ -d ~/Projects ]; then
    cd ~/Projects
  elif [ -d ~/projects ]; then
    cd ~/projects
  elif [ -d ~/work ]; then
    cd ~/work
  elif [ -d ~/Work ]; then
    cd ~/Work
  else
    echo "Folder ~/Projects, ~/projects, ~/work or ~/Work does not exist"
  fi
}

