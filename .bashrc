#export PATH=/usr/local/bin:$PATH
export HISTCONTROL=ignoreboth
export LSCOLORS=gxfxcxdxbxegedabagacad
export EDITOR='vi'
export PS1="\u@\h:\w\[\033[0;31m\]$\[\033[0m\] "
if [ "$TERM" == "screen" ]; then
    export PS1='\u@\h:$WINDOW:\w\[\033[0;36m\]$\[\033[0m\] '
fi
export _JAVA_OPTIONS=-Dfile.encoding=UTF-8

alias ls='ls -GFh'
alias ll='ls -l'
alias less='less -M'
alias lv='lv -c'
alias guiemacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias emacs='emacs -q -nw --eval "(setq make-backup-files nil)"'
alias pdfview='open -a Adobe\ Reader'
alias preview='open -a Preview'
alias firefox='open -a Firefox'
