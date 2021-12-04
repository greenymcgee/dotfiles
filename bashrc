# Public Strategies Specific
alias cap="cd ~/code/vagrant-ofa/src/FastTRAC-capstone"
alias events="cd ~/code/vagrant-ofa/src/events-ft"
alias pas="cd ~/code/srae-pas-dashboard/"
alias src="cd ~/code/vagrant-ofa/src"
alias ft="cd ~/code/fasttrac-frontend"
alias python="python3"
alias ip="ifconfig | grep \"inet \" | grep -v 127.0.0.1 | cut -d\  -f2"
# have not ever tested this one, but chris made it
alias delete_old_branches="git branch | grep -v \"master\" | xargs git branch -D"

# Vim Specific
alias start="cd ~/.vim/pack/plugins/start"

# Docker-compose
alias dc="docker-compose"

# Precompile Rails Assets via Docker
alias assets-precompile="docker-compose run web bundle exec rails RAILS_ENV=test assets:precompile"

#rails() {
#    local commands=($@)

#    if [[ -f ./docker-compose.yml ]]; then
#        docker-compose run web bundle exec rails ${commands[@]}
#    elif which bundle >/dev/null; then
#        bundle exec rails ${commands[@]}
#    else
#        command rails ${commands[@]}
#    fi
#}

alias ls="ls -G"
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=100000
export HISTTIMEFORMAT="[%m/%d][%R] "

# Symbol color
Color='\e[0;94m'
# User name, host name, and time
Color2='\[\e[0;32m\]'
# git branch and current PATH
Color3='\[\e[0;34m\]'
RESET='\e[0m'         # Reset color

export PS1=" \[$Color\](\[$Color2\]\u\[$Color\]@\[$Color2\]${current_host%%.*}"\
"\[$Color|${Color2}bash\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e "\
"'s/* \(.*\)/\[$Color\]|\[$Color3\]\1/')\[$RESET\]\[$Color\])\[$RESET\] "\
"\[$Color3\]\w\[$RESET\]\n \[$Color\](\[$Color2\]\A\[$Color\])=>\[$RESET\]"\
'${PS2c##*[$((PS2c=0))-9]} '

export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
