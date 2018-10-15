# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# gnupg settings
export GPG_TTY=$(tty)
# Path to your oh-my-zsh installation.
export ZSH=/Users/he/.oh-my-zsh

export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="bullet-train"
#bullet-train settings

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(
  osx
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
# User configuration

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias czrc="nvim ~/.zshrc"

alias ls="ls -Ghp"
GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# anaconda3
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/he/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/he/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/he/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/he/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


export JAVA_HOME=$(/usr/libexec/java_home)
# defaults write NSGlobalDomain KeyRepeat -float 0.03
# defaults read-type NSGlobalDomain KeyRepeat; defaults read NSGlobalDomain KeyRepeat
# added by Anaconda3 installer
export PATH="$HOME/anaconda3/bin:$PATH"

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

source /Users/he/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


POWERLEVEL9K_DIR_PATH_ABSOLUTE=true
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir newline anaconda rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red') # To have commands starting with `rm -rf` in red:
# anaconda
POWERLEVEL9K_ANACONDA_LEFT_DELIMITER=
POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0C1'
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0C0'
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/he/anaconda3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/he/anaconda3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/he/anaconda3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/he/anaconda3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
source ~/.cargo/env
alias urldecode='python2 -c "import sys, urllib as ul;print ul.unquote_plus(sys.argv[1])"'
alias nnvim='nvim -u ~/dotfiles/min.vim'
