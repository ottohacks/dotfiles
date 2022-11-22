alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias pgrep='pgrep -lai'

alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

alias ls='ls -h --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -a'
alias dir='ls -l'
alias d='dir'
alias dd='dir -A'
alias ddd='dir -a'
alias tree='tree -p -h --du --dirsfirst'
alias t='tree'
alias tt='tree -a -I ".git"'
alias ttt='tree -a'
alias t2='t -L 2'
alias tt2='tt -L 2'
alias ttt2='ttt -L 2'

alias c='clear'
alias df='df -h'
alias du='du -h'
alias less='less -r'

alias gadd='git add -A'
alias grcommit='git commit -m "Auto: $(xkcdpass -d "" -C first -n 3)"'
alias czc='cz c'

alias base64='base64 -w 0'
alias pipi='python3 -m pip install'
alias uniqu='awk '"'"'!x[$0]++'"'"
alias xclip='xclip -sel clip'

alias finalrecon='docker run -it --rm --entrypoint "python3" thewhiteh4t/finalrecon finalrecon.py'
