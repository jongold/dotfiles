# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# Unix
alias tlf="tail -f"
alias ln='ln -v'
alias mkdir='mkdir -p'
alias ...='../..'
alias -g G='| grep'
alias -g M='| less'
alias -g L='| wc -l'
alias -g ONE="| awk '{ print \$1}'"
alias ports="sudo lsof -iTCP -sTCP:LISTEN -P"

alias lf='ls -Gl | grep ^d' #Only list directories
alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones

alias pcat="pygmentize -f terminal256 -O style=native -g"

# Focus
alias focus='open focus://toggle'

# NPM
alias npmlinks='ls -l node_modules | grep ^l'

alias tat='tmux new -s `basename $PWD`'

alias jupbook='docker run -d -p 8888:8888 -v $(pwd):/notebook ermaker/keras-jupyter'
