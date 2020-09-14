# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  alias-finder
  colorize
  cp
  web-search
  gitignore
  zsh-autosuggestions
  colored-man-pages
  globalias
)

ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias update="source ~/.zshrc"
alias zshrc="vim ~/.zshrc"
alias hs="history | grep"
alias aux="ps aux | grep"
alias kx="sudo kill -9"

alias ls='ls -ACGF'
alias ll='ls -la'
alias l='ls'

alias py="python3"
alias gxx='g++ -std=c++17 -O3 -Wall -Werror -Wextra -Wshadow -Wsign-compare'

alias push='git push'
alias pull='git pull'
alias add='git add'
alias gadd='command git add .'
alias branch='git branch'
alias switch='git checkout'
alias status='git status'
alias commit='git commit -am'
alias gcommit='command git commit -m'
alias origin='git remote add origin'
alias rorigin='git remote remove origin'
alias upstream='git remote add upstream'
alias rupstream='git remote remove upstream'
alias remote='git remote -v'
alias clone='git clone'
alias log='git log'
alias fetch='git fetch'
alias merge='git merge'
alias gdiff='git diff'
alias reset='git reset'
alias stash='git stash'

function cd() {
  builtin cd "$@"
  ls
}

function up() {
  if [ $# -eq 0 ]; then
    count=1
  else
    count="$1"
  fi

  i=0
  while [ $i -lt $count ]; do
    builtin cd '..'
    i=$((i+1))
  done

  ls -ACF
}
