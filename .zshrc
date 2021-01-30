# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/rcrespillo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# POSERLIVEL9K CUSTOMIZATION
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
# CUSTOM SEGMent
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir go_version anaconda vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator time)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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

DEFAULT_USER="rcrespillo"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  colored-man-pages
  docker
  aws
  emoji
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

### Anaconda  ###
export PATH=$HOME/anaconda3/bin:$PATH 

### Groovy. ###
export GROOVY_HOME=$HOME/.sdkman/candidates/groovy/current
export PATH=$GROOVY_HOME/bin:$PATH

### Grails  ###
export GRAILS_HOME=$HOME/.sdkman/candidates/grails/current
export PATH=$GRAILS_HOME/bin:$PATH
export GRAILS_OPTS="-server -Xms10g -Xmx12g -XX:PermSize=512m -XX:MaxPermSize=512m -XX:+UseParNewGC -XX:-ReduceInitialCardMarks -Dfile.encoding=UTF-8 -Dnewrelic.config.error_collector.ignore_errors=com.ml.exceptions.NotFoundException,com.ml.exceptions.BadRequestException,com.ml.exceptions.UnauthorizedException,com.ml.exceptions.ForbiddenException,redis.clients.jedis.exceptions.JedisConnectionException"
#"-XX:MaxPermSize=6G -XX:PermSize=6G -Xmx6G -Xms6G -server -XX:+UseParallelGC -Djava.net.preferIPv4Stack=true -Dsun.reflect.inflationThreshold=100000"
#"-Xms2000M -Xmx2000M -XX:PermSize=256m -XX:MaxPermSize=512m"

### GOLANG ###
export GOROOT="/usr/local/go"
export GOPATH=$HOME/go
export PATH=$GOPATH:$GOROOT/bin:$PATH
export GOPRIVATE="github.com/mercadolibre"
export GO111MODULE=on

###  JAVA  ###
export JAVA_HOME=$HOME/.sdkman/candidates/java/current
export PATH=$JAVA_HOME/bin:$PATH

### MAVEN  ###
export M2_HOME=$HOME/.sdkman/candidates/maven/current
export MAVEN_HOME=$HOME/.sdkman/candidates/maven/current
export PATH=$M2_HOME/bin:$MAVEN_HOME/bin:$PATH

### Fury ###
export MELI_USER="rcrespillo"
#export MELI_PASS="TR\$uy678"

### Dotfiles ###
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

### Enviroment Aliases ###
alias setJdk8='sdk use java 8.0.212-zulu'
alias setJdk7='sdk use java 7.0.222-zulu'
alias setJdk6='sdk use java1.0.0-rc-16-grl'

alias env_shipping-calculator="sdk use grails 2.3.11 && sdk use groovy 2.1.9 && setJdk7"
alias env_shipping-wrapper="sdk use grails 2.3.11 && sdk use groovy 2.1.9 && setJdk7"

###  WTTR  ###
alias wttr_all="curl -s 'wttr.in/{Cordoba,Capital,Buenos Aires,San Paulo,Bogota,Mexico}?format=3'"
alias wttr="curl wttr.in/Cordoba,Capital"

### excuse ###
alias excuse=curl --silent https://www.devexcuses.com | grep '"Show me another!">' | sed 's/<[^<>]*>//g'

# Added by furycli:
export PATH="/Users/rcrespillo/.local/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/rcrespillo/.sdkman"
[[ -s "/Users/rcrespillo/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rcrespillo/.sdkman/bin/sdkman-init.sh"

#shipping-priciong-api
#export APPLICATION=shipping-pricing-api
#export SCOPE=development
#export GO_ENVIRONMENT=development
#export APPLICATION_REPO=github.com/mercadolibre/shipping-pricing-api

# NVM

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

[[ -s "/Users/rcrespillo/.gvm/scripts/gvm" ]] && source "/Users/rcrespillo/.gvm/scripts/gvm"

### RANDOM COLOR SCRIPT ###
# Get this script from my GitLab: gitlab.com/dwt1/shell-color-scripts
# Or install it from the Arch User Repository: shell-color-scripts
colorscript random
