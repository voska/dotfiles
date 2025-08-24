# ls aliases
alias sl="ls"
alias la="ls -A"
alias ll="ls -l"
alias l1="ls -1"
alias l="ls"
alias lal='ls -al'

# brew aliases
alias brewski='brew update && brew upgrade && brew cleanup -s && brew doctor; brew missing'

# git aliases
alias tigs="tig status"

# Miscellaneous aliases
alias cat="bat"
alias ping="prettyping"
alias dirstat="du -d 1 -h | sort -hr | head -n 11"
alias ip="ifconfig | grep 'inet '"
alias v="vim"
alias m="man"

# Docker Shortcut Aliases
alias d="docker"
alias dc="docker-compose"

# Container Management
alias dps="docker ps"
alias dpa="docker ps -a"
alias dstart="docker start"
alias dstop="docker stop"
alias drestart="docker restart"
alias dkill="docker kill"
alias drm="docker rm"
alias dprune="docker container prune -f"

# Image Management
alias di="docker images"
alias dbuild="docker build -t"
alias drmi="docker rmi"
alias diprune="docker image prune -a -f"

# Running Containers
alias dr="docker run"
alias dlog="docker logs"

# Volume and Network Management
alias dv="docker volume"
alias dvls="docker volume ls"
alias dvprune="docker volume prune -f"
alias dn="docker network"
alias dnls="docker network ls"
alias dnprune="docker network prune -f"

# System Cleanup
alias ddu="docker system df"
alias dclean="docker system prune -a -f"

# Docker Compose Shortcuts
alias dcu="docker-compose up -d"
alias dcup="docker-compose up"
alias dcd="docker-compose down"
alias dcr="docker-compose down && docker-compose up -d"
alias dcstop="docker-compose stop"
alias dcrestart="docker-compose restart"
alias dcb="docker-compose build"
alias dcp="docker-compose pull"
alias dclog="docker-compose logs -f"
alias dcps="docker-compose ps"
alias dcrun="docker-compose run"

# Fun bit of information
alias profileme="history | awk '{print \$2}' | awk 'BEGIN {FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 30 | sort -rn"
