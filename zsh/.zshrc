# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Postgres.app/Contents/Versions/latest/bin:/Users/tomjerry/.fzf/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin
# Path to your oh-my-zsh installation.
export ZSH=/Users/tomjerry/.oh-my-zsh
export CLICOLOR=YES
export EDITOR="vim"

# stty erase '^?'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(tmuxinator git autojump zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# source ~/.vim/bundle/gruvbox/gruvbox_256palette.sh

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
alias v="/usr/local/bin/vim"
alias de="deactivate"
alias gs="git status"
alias gc="git commit -m"
alias gp="git push"
alias gu="git pull origin master"
alias gl="git log"
alias ga="git add --all"
alias gh="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias md="mkdir"
alias vv="v ~/.vimrc"
alias vz="v ~/.zshrc"
alias vt="v ~/.tmux.conf"
alias -s html=v
alias -s py=v
alias -s js=v
alias -s txt=v
alias ve="virtualenv"
alias pi="pip install"
alias gd="cd ~/Desktop"
#alias vm="set -o vi"
alias r="ranger"
alias bi="brew install"
alias mkv="mkvirtualenv"
alias t="tmux"

alias rs="python manage.py runserver"
alias mm="python manage.py makemigrations"
alias mg="python manage.py migrate"

alias tk="tmux kill-session -t"
alias tn="tmux new -s"
alias tl="tmux ls"
alias ta="tmux a"
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# virtualenvwrapper settings
export WORKON_HOME=$HOME/.virtualenvs
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.6/bin/python3
export PROJECT_HOME=$HOME/Devel
source /Library/Frameworks/Python.framework/Versions/3.6/bin/virtualenvwrapper.sh



# FZF settings



# PATH MODIFICATIONS  
# Functions which modify the path given a directory, but only if the directory 
# exists and is not already in the path. (Super useful in ~/.zshlocal)
_append_to_path() {
  if [ -d $1 -a -z ${path[(r)$1]} ]; then
    path=($1 $path);
  fi
}

# Returns whether the given command is executable or aliased. 
_has() {
  return $( whence $1 >/dev/null )
}
# fzf via local installation
if [ -e ~/.fzf ]; then
  _append_to_path ~/.fzf/bin
  source ~/.fzf/shell/key-bindings.zsh
  source ~/.fzf/shell/completion.zsh
fi

# fzf + ag configuration
if _has fzf && _has ag; then
  export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '
fi

