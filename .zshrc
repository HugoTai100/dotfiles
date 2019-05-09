# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
autoload -U promptinit; promptinit
prompt pure
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
fpath=( "$HOME/.zfunctions" $fpath )
# export ZSH=/Users/his/.oh-my-zsh
# pure prompt settings
PURE_GIT_DOWN_ARROW=""
PURE_GIT_UP_ARROW=""
# export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_MODE='nerdfont-complete'
#ZSH_THEME="trapd00r"
#ZSH_THEME="robbyrussell"
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
COMPLETION_WAITING_DOTS="false"

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
# plugins=(
#   encode64
#   osx
#   git
#   vi-mode
#   zsh-autosuggestions
#   zsh-syntax-highlighting
#   python
# )
# source $ZSH/oh-my-zsh.sh
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
alias lt="leetcode"

alias ls="ls -Ghp"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# defaults write NSGlobalDomain KeyRepeat -float 0.03
# defaults read-type NSGlobalDomain KeyRepeat; defaults read NSGlobalDomain KeyRepeat

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

POWERLEVEL9K_DIR_PATH_ABSOLUTE=true
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user context dir vcs anaconda rbenv newline )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode battery os_icon ram)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red') # To have commands starting with `rm -rf` in red:
POWERLEVEL9K_ANACONDA_LEFT_DELIMITER=' '
POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B6'

alias urldecode='python2 -c "import sys, urllib as ul;print ul.unquote_plus(sys.argv[1])"'
alias nim='nvim -u ~/dotfiles/min.vim'
export PATH="$PYENV_ROOT/shims:$PATH"
export PATH="/Users/his/.local/bin:$HOME/Library/Haskell/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
eval "$(pipenv --completion)"

glinux (){
  PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
  PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
  PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
  MANPATH="/usr/local/opt/findutils/libexec/gnuman:$MANPATH"
  PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
  MANPATH="/usr/local/opt/gnu-tar/libexec/gnuman:$MANPATH"
  PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
  MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
  PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
  export MANPATH
  PS1="Linux toolchain
$PS1"
}

xlinux (){
  PATH=`echo $PATH|sed 's/\/usr\/local\/opt\/coreutils\/libexec\/gnubin://g'`
  PATH=`echo $PATH|sed 's/\/usr\/local\/opt\/gnu-getopt\/bin://g'`
  PATH=`echo $PATH|sed 's/\/usr\/local\/opt\/findutils\/libexec\/gnubin://g'`
  PATH=`echo $PATH|sed 's/\/usr\/local\/opt\/gnu-tar\/libexec\/gnubin://g'`
  PATH=`echo $PATH|sed 's/\/usr\/local\/opt\/gnu-sed\/libexec\/gnubin://g'`
  PATH=`echo $PATH|sed 's/\/usr\/local\/opt\/gnu-getopt\/bin://g'`
  MANPATH=`echo $MANPATH|sed 's/\/usr\/local\/opt\/coreutils\/libexec\/gnuman://g'`
  MANPATH=`echo $MANPATH|sed 's/\/usr\/local\/opt\/findutils\/libexec\/gnuman://g'`
  MANPATH=`echo $MANPATH|sed 's/\/usr\/local\/opt\/gnu-tar\/libexec\/gnuman://g'`
  MANPATH=`echo $MANPATH|sed 's/\/usr\/local\/opt\/gnu-sed\/libexec\/gnuman://g'`
  export MANPATH

  PS1=`echo $PS1|sed -e ':a' -e 'N' -e '$!ba' -e 's/Linux\ toolchain\n//g'`
}
gconda(){
  PATH="/Users/his/miniconda3/bin:$PATH"
}
xconda(){
  PATH=`echo $PATH|sed 's/\/Users\/his\/miniconda3\/bin://g'`
}

#--- dir color
eval $(gdircolors /Users/his/.dircolors/dircolors-solarized/dircolors.256dark)

# Aliases
alias ls='gls --color=auto'
alias ll='ls -al'
#--- dir color
alias pipy='pipenv run python'
alias ql='quick-look'
export GPG_TTY=$(tty)

sss(){
  cd ~/school/softwareeng/airsupply
  pipenv shell
}
bindkey -v
export EDITOR="nvim"
KEYTIMEOUT=1
alias g=/usr/local/bin/git

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
##############################################################################
# History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed
# emacs style
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

bindkey -M vicmd "H" beginning-of-line
bindkey -M vicmd "L" end-of-line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
setopt MENU_COMPLETE
zstyle ':completion:*' matcher-list 'm:{a-zA-Z_-}={A-Za-z-_}'
zstyle ':completion:*' menu select
alias ofd='open -a Finder .'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/his/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/his/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/his/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/his/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
###-begin-leetcode-completions-###
#
# yargs command completion script
#
# Installation: /usr/local/bin/leetcode completion >> ~/.bashrc
#    or /usr/local/bin/leetcode completion >> ~/.bash_profile on OSX.
#
_yargs_completions()
{
    local cur_word args type_list

    cur_word="${COMP_WORDS[COMP_CWORD]}"
    args=("${COMP_WORDS[@]}")

    # ask yargs to generate completions.
    type_list=$(/usr/local/bin/leetcode --get-yargs-completions "${args[@]}")

    COMPREPLY=( $(compgen -W "${type_list}" -- ${cur_word}) )

    # if no match was found, fall back to filename completion
    if [ ${#COMPREPLY[@]} -eq 0 ]; then
      COMPREPLY=( $(compgen -f -- "${cur_word}" ) )
    fi

    return 0
}
###-end-leetcode-completions-###
export NNN_RESTRICT_NAV_OPEN=1
export NNN_CONTEXT_COLORS='2341'
export NNN_SCRIPT=/Users/his/.nnn/scripts
export NNN_COPIER=/User/his/.nnn/copier
export SELECTION=~/.config/nnn/.selection

export PATH="/usr/local/opt/llvm/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export NNN_TMPFILE=/Users/his/.nnn/tempfile

export VIDIR_EDITOR_ARGS='-u ~/dotfiles/min.vim'
export NNN_OPENER=mpv
