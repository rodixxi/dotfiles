set -xg PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/local/go/bin

set -xg fish_greeting                      # Supresses fish's intro message
set -xg TERM "xterm-256color"              # Sets the terminal type
set -xg theme_nerd_fonts yes                # Sets theme font
# set -xg theme_color_scheme dracula
# set -g theme_display_date no


## To install some pluggings
# curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
## Pluggins
# fisher add jorgebucaran/spark.fish


### ALIASES ###

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# file managment safe
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'

# navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Git
alias g='git'
alias gs='git status'
alias gd='git diff'

# Changing "ls" to "exa" https://github.com/ogham/exa
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# Golang
alias golint='golangci-lint run ./... --verbose'


### CORGI ###

###  WTTR  ###
alias wttr_all="curl -s 'wttr.in/{Cordoba,Capital,Buenos Aires,San Paulo,Bogota,Mexico}?format=3'"
alias wttr='curl wttr.in/Cordoba,Capital'

# Excuse
alias excuse="curl --silent https://www.devexcuses.com | grep '\"Show me another!\">' | sed 's/<[^<>]*>//g'"

### WORKSTATION ###

# Anaconda 
set -xg PATH $PATH $HOME/anaconda3/bin  

# Groovy
set -xg GROOVY_HOME $HOME/.sdkman/candidates/groovy/current
set -xg PATH $PATH $GROOVY_HOME/bin

# Grails
set -xg GRAILS_HOME $HOME/.sdkman/candidates/grails/current
set -xg PATH $PATH $GRAILS_HOME/bin

set -xg GRAILS_OPTS "-server -Xms10g -Xmx12g -XX:PermSize=512m -XX:MaxPermSize=512m -XX:+UseParNewGC -XX:-ReduceInitialCardMarks -Dfile.encoding=UTF-8 -Dnewrelic.config.error_collector.ignore_errors=com.ml.exceptions.NotFoundException,com.ml.exceptions.BadRequestException,com.ml.exceptions.UnauthorizedException,com.ml.exceptions.ForbiddenException,redis.clients.jedis.exceptions.JedisConnectionException"
#"-XX:MaxPermSize=6G -XX:PermSize=6G -Xmx6G -Xms6G -server -XX:+UseParallelGC -Djava.net.preferIPv4Stack=true -Dsun.reflect.inflationThreshold=100000"
#"-Xms2000M -Xmx2000M -XX:PermSize=256m -XX:MaxPermSize=512m"

# GOLANG
set -xg GOROOT /usr/local/go
set -xg GOPATH $HOME/go
set -xg PATH $PATH $GOPATH $GOPATH/bin $GOROOT/bin
set -xg GO111MODULE on

alias gog='cd $HOME/go/src/github.com'
alias gom='cd $HOME/go/src/github.com/mercadolibre'

# JAVA
set -xg JAVA_HOME $HOME/.sdkman/candidates/java/current
set -xg PATH $PATH $JAVA_HOME/bin

# MAVEN
set -xg M2_HOME $HOME/.sdkman/candidates/maven/current
set -xg MAVEN_HOME $HOME/.sdkman/candidates/maven/current
set -xg PATH $PATH $M2_HOME/bin $MAVEN_HOME/bin

# Enviroment Aliases
alias setJdk8='sdk use java 8.0.212-zulu'
alias setJdk7='sdk use java 7.0.222-zulu'
alias setJdk6='sdk use java1.0.0-rc-16-grl'

### WORK RELATED ###

### M ###

# GOLANG
set -xg GOPRIVATE github.com/mercadolibre

# Fury
set -xg MELI_USER rcrespillo

# Grovy enviroments

alias env_shipping-calculator="sdk use grails 2.3.11 && sdk use groovy 2.1.9 && setJdk7"
alias env_shipping-wrapper="sdk use grails 2.3.11 && sdk use groovy 2.1.9 && setJdk7"

# Added by furycli:
set -xg PATH $PATH $HOME/.local/bin

#shipping-priciong-api
#export APPLICATION=shipping-pricing-api
#export SCOPE=development
#export GO_ENVIRONMENT=development
#export APPLICATION_REPO=github.com/mercadolibre/shipping-pricing-api


### NO IDEA ###

# NVM
set -xg NVM_DIR $HOME/.nvm
bass source (brew --prefix nvm)/nvm.sh
test -e $HOME/.gvm/scripts/gvm && bass source $HOME/.gvm/scripts/gvm

#set -xg NVM_DIR $HOME/.nvm
#bass /usr/local/opt/nvm/nvm.sh  && bass . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#bass "/usr/local/opt/nvm/etc/bash_completion.d/nvm" && bass . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# BASS https://github.com/edc/bass

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
set -xg SDKMAN_DIR $HOME/.sdkman
test -e $HOME/.sdkman/bin/sdkman-init.sh && bass source $HOME/.sdkman/bin/sdkman-init.sh

### RANDOM COLOR SCRIPT ###
# Get this script from my GitLab: gitlab.com/dwt1/shell-color-scripts
# Or install it from the Arch User Repository: shell-color-scripts
colorscript random

### STARSHIP PROMP ###

starship init fish | source