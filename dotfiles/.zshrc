export Antigen="/usr/share/zsh/share/antigen.zsh"

source /usr/bin/virtualenvwrapper.sh

autoload antigen
source $Antigen
antigen use oh-my-zsh

# Antigen pluins

antigen bundles <<EOBUNDLES
    git
    zsh-users/zsh-completions
    colored-man-pages
    encode64                          # aliases e64 and d64
    extract                           # x alias for fast extracting
    colorize                          # adds ccat and cless
    history                           # h, hsi - search history
    kate
    rsync
    command-not-found
#     safe-paste
    web-search
    docker
    golang
    postgres
#     virtualenvwrapper
    archlinux
    rand-quote
    djui/alias-tips
    hlissner/zsh-autopair
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-syntax-highlighting # should be last sourced plugin
EOBUNDLES

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs history time)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE_COUNT=1


antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# alias cat="ccat"
alias az='azure-cli'

# quote # show quote
