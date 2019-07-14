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
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
# export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Aliases
#--- dir color
alias ql='quick-look'
export GPG_TTY=$(tty)

bindkey -v
export EDITOR="nvim"
KEYTIMEOUT=1
alias g=git

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

export NNN_TMPFILE=/Users/his/.nnn/tempfile

export VIDIR_EDITOR_ARGS='-u ~/dotfiles/min.vim'
export NNN_OPENER=mpv
source /Users/his/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias enhance='function ne() { docker run --rm -v "$(pwd)":/ne/input -it alexjc/neural-enhance; }; ne'

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/his/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/his/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/his/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/his/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

