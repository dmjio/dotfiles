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

# #emacs
alias e="emacs -nw"
alias ec="e ~/.emacs.d/init.el"
alias emacsd="cd ~/.emacs.d/"
alias os="open ~/.emacs.d/snippets"
alias edi='e ~/.emacs.d/init.el'
alias cemacs="cat ~/.emacs.d/init.el"
alias oed="open ~/.emacs.d/"

# #shell conveniences
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
function add   {
    echo "alias $1='$2'" >> ~/.zshrc; reload
}
function take  {
    mkdir $1; cd $1
}
function mktar {
    tar -czvf $1.tgz $1
}
function xtar  {
    tar -xzvf $1
}

# #system
alias eh="e /etc/hosts"
alias pag="ps aux | grep"
alias vmstat="vm_stats.py"
alias cores='sysctl -n hw.ncpu'
alias ascii="man ascii"
alias ip="curl ifconfig.me"
alias bits="getconf LONG_BIT"

# # hcle
alias hcle="rm *.o && rm *.hi && rm *.prof && rm *.hp && rm *.ps && rm *.aux"

# #git
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
