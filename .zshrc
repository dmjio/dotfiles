# zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="norm"
export TERM=xterm-256color
export EDITOR="emacs"
export PGHOST=localhost
DISABLE_AUTO_TITLE="true"
plugins=(ruby osx encode64 github heroku node python autojump npm)
source $ZSH/oh-my-zsh.sh

#paths
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/.hsenv/cabal/bin:$PATH
export PATH=/.cabal-sandbox/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=~/.cabal/bin:$PATH
export PATH=/.rbenv/versions/1.9.3-p125/bin:$PATH
export PATH=/usr/local/Cellar/ruby/2.0.0-p247/bin:$PATH
export PATH=$HOME/Library/Haskell/bin:$PATH
export SHELL=/bin/zsh
export PKG_CONFIG_PATH=~/Source/gtk/source/libpng-1.4.8/:/opt/X11/lib/pkgconfig
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
alias ip="curl ifconfig.me"
alias bits="getconf LONG_BIT"

#ssh
alias essh="e ~/.ssh/config"

#haskell
alias deah="de && ah && clear"
alias eghci="e ~/.ghci"
alias hcle="rm *.o && rm *.hi && rm *.prof && rm *.hp && rm *.ps && rm *.aux"
alias profiler="ghc -prof -O2 Main.hs -o -rtsopts main && ./main +RTS -K10M -p -hc && sleep 1 && hp2ps main.hp && sleep 1 && open main.ps"

#cabal
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

#emacs
alias e="/usr/local/Cellar/emacs/24.3/bin/emacs"
alias ec="e ~/.emacs.d/init.el"
alias emacsd="cd ~/.emacs.d/"
alias emacs="e"
alias os="open ~/.emacs.d/snippets"
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
alias ea="e ~/.zshrc"
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

#httperf
function perf() { httperf --server=localhost --port=$1 --uri=/ --num-conns=10000 }
function gchk() { ghc-pkg list --user | grep $1 } 

#SolidTranslate
alias runa="dist/build/authdb/authdb -N -A4M"
alias rw="runweb"
alias stmain="stweb && e Main.hs"
alias stypes="stweb && cd ../ST-Types"
alias stlts="stweb && cd ../ST-LTS"
alias stadmin="stweb && cd ../ST-Admin"
alias sta="stweb && cd ../ST-Auth"
alias stao="stweb && cd ../ST-Auth-Ops"
alias stserver="stweb && e ST/Server/Main.hs"
alias stdb="cd /Users/dmj/SolidTranslate/packages/ST-DB/"
alias stdbo="cd /Users/dmj/SolidTranslate/packages/ST-DB-Ops/"
alias runadmin="dist/build/admin/admin"
alias stworker="stweb && cd ../ST-Worker"
alias stcode="git clone ssh://git@bitbucket.org/dmjohnson/solidtransacid.git"
alias opensolid="open http://solidtranslate.com"
alias stlaunch="stweb && cd ST/Launch"
alias rws="runwebssl"
alias keithcode="gc git@bitbucket.org:cadsharp/solidtranslate.git"
alias rws="runwebssl"
alias runworker="dist/build/worker/worker"
alias runwebssl='sudo AUTHPORT=8096 DBPORT=8098 dist/build/web/web --ssl-cert="ssl/cert.pem" --ssl-key="ssl/key.pem" --ssl-port=443 -p 80 +RTS -N -A4M -qg1 -I0'
alias rwsll='sudo AUTHIP=8096 DBIP=8098 dist/build/web/web -p 8000 +RTS -N -A4M -qg1 -I0'
alias runweb='sudo dist/build/web/web -p 80 +RTS -N -A4M -qg1'
alias runauthdb='dist/build/authdb/authdb'
alias rundb='dist/build/dbserver/dbserver'
alias stype="stweb && cd ../ST-Types/"

#ssl
function mksscert () {
    openssl genrsa -des3 -out server.key 1024
    openssl req -new -key server.key -out server.csr
    cp server.key server.key.org
    openssl rsa -in server.key.org -out server.key
    openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
}

#vagrant
alias vu="vagrant up"
alias v="vagrant"
alias vbl="v box list"
alias vbx="VBoxManage"

function stweb() {
    d
    ..
    cd SolidTranslate/packages/ST-Web
    clear
}

# docker
alias b2d="boot2docker"

#peertrader
alias pt="cd ~/peertrader"
