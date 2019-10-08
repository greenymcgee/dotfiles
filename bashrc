alias cap="cd ~/code/vagrant-ofa/src/FastTRAC-capstone"
alias ls="ls -G"
export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=100000
export HISTTIMEFORMAT="[%m/%d][%R] "

# Symbol color
Color='\e[0;94m'
# User name, host name, and time
Color2='\e[1;90m'
# git branch and current PATH
Color3='\e[4;90m'
RESET='\e[0m'         # Reset color

export PS1=" \[$Color\](\[$Color2\]\u\[$Color\]@\[$Color2\]${current_host%%.*}"\
"\[$Color|${Color2}bash\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e "\
"'s/* \(.*\)/\[$Color\]|\[$Color3\]\1/')\[$RESET\]\[$Color\])\[$RESET\] "\
"\[$Color3\]\w\[$RESET\]\n \[$Color\](\[$Color2\]\A\[$Color\])=>\[$RESET\]"\
'${PS2c##*[$((PS2c=0))-9]} '
