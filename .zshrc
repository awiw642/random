
# Path to your oh-my-zsh installation.
export ZSH="/Users/aprianto.w/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"




plugins=(git)

export TERM="xterm-256color"
source $ZSH/oh-my-zsh.sh

# --------------------------------------------- START OF CUSTOM CONFIGURATION ----------------------------------------

# ZSH Setup
ZSH_THEME="powerlevel9k/powerlevel9k"

# History
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt inc_append_history
setopt extended_history
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

# Power Level 9K Setup
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(background_jobs vi_mode dir vcs virtualenv nodeenv)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time time context)
# POWERLEVEL9K_VI_INSERT_MODE_STRING="INS"
# POWERLEVEL9K_VI_COMMAND_MODE_STRING="NRM"

POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#POWERLEVEL9K_SHORTEN_DELIMITER=""
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white} "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable_joined)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time vcs background_jobs_joined time_joined)
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="clear"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="clear"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="yellow"
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="red"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="white"
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
POWERLEVEL9K_TIME_BACKGROUND="clear"
POWERLEVEL9K_TIME_FOREGROUND="cyan"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='clear'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='indianred1a'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='clear'
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='green'

source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

# Adding Locales
export LC_ALL=en_NZ.UTF-8
export LANG=en_NZ.UTF-8

# Pyenv Setup
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# ZLIB Setup
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

# AWS CLI Setup
export PATH=$PATH:/Users/aprianto.w/Library/Python/3.7/bin/

# Aliases

## GIT
alias grab-saasify=~/Scripts/clubware-pull.sh
alias git-new="git checkout -b"
alias git-log="git log --graph --pretty=oneline --abbrev-commit"

## OTHER
alias findbranch='git branch | grep -E'
alias deletebranch='git branch -D'


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/aprianto.w/Repo/saasify-graphql-api/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/aprianto.w/Repo/saasify-graphql-api/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/aprianto.w/Repo/saasify-graphql-api/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/aprianto.w/Repo/saasify-graphql-api/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/aprianto.w/Repo/saasify-graphql-api/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/aprianto.w/Repo/saasify-graphql-api/node_modules/tabtab/.completions/slss.zsh
