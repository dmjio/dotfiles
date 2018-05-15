# Path to your oh-my-zsh installation.
export ZSH=/Users/dmj/.oh-my-zsh
ZSH_THEME="af-magic"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
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

# zsh
export TERM=xterm-256color
export EDITOR="emacs"
export DISABLE_AUTO_TITLE="true"
export SHELL=/bin/zsh
export PKG_CONFIG_PATH=~/Source/gtk/source/libpng-1.4.8/:/opt/X11/lib/pkgconfig:$PKG_CONFIG_PATH

function addpath() { echo 'export PATH=$PATH:$1' >> ~/.zshrc; reload }

#shell conveniences
alias rmd='yes | rm -r'
alias cpr="cp -r"
alias o='open .'
alias re='reload'
alias h="cd $HOME"
alias all="ls -lah"
alias ..="cd .."
alias d="cd ~/Desktop"
alias cdd="cd -"
alias b="cd -"
alias wh="which"
alias rmds="rm .DS_STORE"
alias tu='top -o cpu'
alias tm='top -o vsize'
alias disks="diskutil list"
function add   { echo "alias $1='$2'" >> ~/.zshrc; reload }
function take  { mkdir $1; cd $1 }
function mktar { tar -czvf $1.tgz $1 }
function xtar  { tar -xzvf $1 }

#system
alias eh="e /etc/hosts"
alias pag="ps aux | grep"
alias vmstat="vm_stats.py"
alias cores='sysctl -n hw.ncpu'
alias ascii="man ascii"
# alias ip="curl ifconfig.me"
alias bits="getconf LONG_BIT"

#ssh
alias essh="e ~/.ssh/config"

#haskell
alias deah="de && ah && clear"
alias eghci="e ~/.ghci"
alias hcle="rm *.o && rm *.hi && rm *.prof && rm *.hp && rm *.ps && rm *.aux"
alias profiler="ghc -prof -O2 Main.hs -o -rtsopts main && ./main +RTS -K10M -p -hc && sleep 1 && hp2ps main.hp && sleep 1 && open main.ps"

#cabal
alias cdoc="cabal haddock --hyperlink-source && open dist/doc/html/*/index.html"
alias cij="cabal install -j"
alias ci='cabal install'
alias cui='cabal-uninstall'
alias cben="cabal bench"
alias cin='cabal init'
alias cun='cabal unpack'
alias csi='cabal sandbox init'
alias csd='cabal sandbox delete'
alias csa='cabal sandbox add-source'
alias cs='cabal sandbox'
alias cido="cabal install --dependencies-only -j"
alias csas="cabal sandbox add-source"
alias cu='cabal update'
alias cup='cabal upload'
alias ch="cabal haddock"
alias ccon="cabal configure"
alias cex="cabal exec emacs"
alias cconet="cabal configure --enable-tests"
alias cconeb="cabal configure --enable-benchmarks"
alias cconetb="cabal configure --enable-benchmarks --enable-tests"
alias ecabal="e ~/.cabal/config"
alias cinfo="cabal info"
alias cun="cabal unpack"
alias cchk="cabal check"
alias ccl='cabal clean'
alias cb='cabal build'
alias cv='cabal --v'
alias c='cabal'
alias cr="cabal run"
alias ct='cabal test'
alias crep='cabal repl'
alias ecc="e ~/.cabal/config"
alias cinit="cabal init"
alias ccet="cabal configure --enable-tests"
alias cceb="cabal configure --enable-bench"

#stack
alias s="stack"

#emacs
alias e="emacs -nw"
alias ec="e ~/.emacs.d/init.el"
alias emacsd="cd ~/.emacs.d/"
alias os="cd ~/OpenSource"
alias snips="open ~/.emacs.d/snippets"
alias edi='e ~/.emacs.d/init.el'
alias cemacs="cat ~/.emacs.d/init.el"
alias oed="open ~/.emacs.d/"

#homebrew
alias bd="brew doctor"
alias bu="brew update"
alias bi="brew install"

#c++11
alias c11="clang++ -stdlib=libc++ -std=c++11"
alias c11m='g++ -Wall -fexceptions -std=c++11 -g 4.4.cpp -o a.out -lpthread'
alias cogl='gcc -framework OpenGL'

#zhsrc
alias ea="emacs -nw ~/.zshrc"
alias reload="source ~/.zshrc"

#ghc
alias happs="ghc --make -threaded $1 -o $2"
alias rh="runhaskell"
alias minimports="ghc -ddump-minimal-imports"
alias gpu="ghc-pkg unregister"
function ghcls  { ghc-pkg list | grep $1 }
function ghclsa { ghc-pkg list }

#apache
alias startapache="sudo apachectl start"
alias stopapache="sudo apachectl stop"
alias restartapache="sudo apachectl restart"
alias apacheversion="httpd -v"

#postgres
alias pg="psql -h localhost"

#mysql
alias ms="mysql --user=root -p"
function uninstallmysql {
    sudo rm /usr/local/mysql
    sudo rm -rf /usr/local/mysql*
    sudo rm -rf /Library/StartupItems/MySQLCOM
    sudo rm -rf /Library/PreferencePanes/My*
    rm -rf ~/Library/PreferencePanes/My*
    sudo rm -rf /Library/Receipts/mysql*
    sudo rm -rf /Library/Receipts/MySQL*
    sudo rm -rf /private/var/db/receipts/*mysql*
}

#browser
function g() { open 'http://google.com/search?q='$1 }

#ruby
alias rbe="rbenv local"
alias gemenv="gem environment"

#python
alias pretty="python -m json.tool" # pretty print json
alias py="python"
alias py3="python3"
alias reqi="pip install -r requirements.txt"
alias reqf="pip freeze > requirements.txt"
alias reqs="cat requirements.txt"
alias ap="activate venv"
alias rmpyc="rm *.pyc"
alias pyserver="python -m SimpleHTTPServer"
function virth    { hsenv && source .hsenv/bin/activate }
function activate { source $1/bin/activate }
function virt     { virtualenv venv && activate venv }

#Tex
function tex(){ pdflatex $1.tex && open $1.pdf }
function lhs2pdf {
    lhs2TeX -o $1.tex $1.lhs
    pdflatex $1.tex
    rm $1.aux
    rm $1.tex
    rm $1.ptb
    rm $1.log
}
function rmtex() {
    rm $1.log
    rm $1.aux
    rm $1.out
}

#wireshark
alias ws="open /Applications/Wireshark.app/"

#c
function gccp() { gcc -pendantic -Wall -ansi $1.c -o $1 }

#git
alias gra="git remote add"
alias grh="git reset HEAD"
alias gl="git log --pretty=oneline --all --decorate --graph"
alias gitreset="git reset --hard"
alias gbd="git branch -d"
alias gpo="git push origin"
alias gs="git status"
alias gca="git add . && git commit -a -m"
alias gc="git clone"
alias gt="git tag"
alias ga='git add $1'
alias gb='git branch '
alias gbc='git checkout -b $1'
alias gd='git diff'
alias gr="git remote -v"
alias gpom='git push origin master'
alias ghist="git log --pretty=format:'%h - %an, %ar : %s'"
alias cig='cat .gitignore'
alias gi='git init'
alias gch='git checkout'
alias gsl="git stash list"
alias gbl="git branch -l"
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias gco="git checkout"
alias grv="git remote -v"
function undocommit () {
    git reset --soft 'HEAD^'
}

alias work='cd ~/Work/'
alias fti='cd ~/Work/FTI/'

#httperf
function perf() { httperf --server=10.0.1.122 --port=80 --uri=/ --num-conns=10000 }
function gchk() { ghc-pkg list --user | grep $1 }

#ssl
function mksscert () {
    openssl genrsa -des3 -out server.key 1024
    openssl req -new -key server.key -out server.csr
    cp server.key server.key.org
    openssl rsa -in server.key.org -out server.key
    openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
}

alias ghci-core="ghci -ddump-simpl -dsuppress-idinfo \
  -dsuppress-coercions -dsuppress-type-applications \
  -dsuppress-uniques -dsuppress-module-prefixes"

alias nr="nix repl '<nixpkgs>'"
export LC_CTYPE=C
export LANG=C

alias cix='cat *.nix'
function initnix() {
       cabal2nix . > $(basename "$PWD").nix
       echo "{ nixpkgs ? import <nixpkgs> {}, compiler ? \"$1\" }:
	    nixpkgs.pkgs.haskell.packages.\${compiler}.callPackage ./$(basename "$PWD").nix
	   { }" > default.nix
       echo "{ nixpkgs ? import <nixpkgs> {}, compiler ? \"$1\" }:
	   (import ./default.nix { inherit nixpkgs compiler; }).env" > shell.nix
    }

function nix-search(){ echo "Searching..."; nix-env -qaP --description * | grep -i "$1"; }
alias ns='nix-shell'
alias nb='nix-build'
alias nscc="nix-shell --command --pure 'ghc --make Setup.lhs; ./Setup configure'"
alias ne="nix-env"

function hask_new() {
    mkdir $1
    cd $1
    touch $1.cabal
    mkdir src
    mkdir spec
    touch README.md
    touch LICENSE
    echo 'License here' > LICENSE
    touch .gitignore
    echo '*~' > .gitignore
    echo 'dist' >> .gitignore
    echo '*.hi' >> .gitignore
    echo '*.nix' >> .gitignore
    touch Setup.lhs
}

#stack
alias si="s install"
alias sb="s build"
alias sc="s clean"
alias sn="s new"
alias st="s test"
alias ss="s setup"
alias sg="s ghci"
alias se="s exec"
alias sbench="s bench"
alias shadoc="s haddock"

alias ncu="nix-channel --update"
alias c2n="cabal2nix ."

function dn () {
  echo "{ pkgs ? import <nixpkgs> {} }: pkgs.haskellPackages.callPackage ./$1.nix {}" > default.nix
}
