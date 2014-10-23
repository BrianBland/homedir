# enable directory saving in OSX
plugins=(osx go golang docker zsh-syntax-highlighting)

# add more zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# enable oh my zsh
source $ZSH/oh-my-zsh.sh

# path definition
# path=( /Applications/Postgres\ 2.app/Contents/MacOS/bin:$(brew --prefix coreutils)/libexec/gnubin:~/bin:~/usr/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/usr/local/sbin:/sbin:/usr/local/git/bin: )

export PATH=$(brew --prefix coreutils)/libexec/gnubin:~/bin:~/usr/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PYTHONSTARTUP=~/.pythonrc.py
export FPATH=$FPATH:~/.zfuns:/usr/share/zsh/functions/
export MANPATH=$(brew --prefix coreutils)/libexec/gnuman:$MANPATH
export EDITOR='vim'
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.tex=01;33:*.sxw=01;33:*.sxc=01;33:*.lyx=01;33:*.pdf=0;35:*.ps=00;36:*.asm=1;33:*.S=0;33:*.s=0;33:*.h=0;31:*.cpp=0;35:*.c=0;35:*.cxx=0;35:*.cc=0;35:*.C=0;35:*.o=1;30:*.am=1;33:*.py=0;34:'
export GREP_COLOR='1;35'
export VISUALWORKS=~/usr/bin/vw

source ~/.zshmail

(spawn_mailchecker &) > /dev/null 2>&1

alias prefs='$EDITOR ~/.zshrc'
alias grep='nocorrect grep --color=auto'
alias ls='ls -G --color'
alias ll='ls -lh'
alias git glog='nocorrect git glog'

alias tree="ls -R | grep ':$' | sed -e 's/:$//' -e 's/[^\/]*\//|  /g' -e 's/|  \([^|]\)/\`--\1/g'"

#alias kit='/Users/bbland/code/koality/agles/ci/scripts/koality-git'
alias kit=ko

#generally useful aliases for zsh
alias dirs='dirs -v'
alias ,,='popd > /dev/null'

if [ $DISPLAY ] ; then
  alias asdf='setxkbmap dvorak'
  alias aoeu='setxkbmap us'
fi

#make should also be in this list
for i in 'mv' 'cp' 'mkdir' 'scp' 'zgrep' 'zmore' 'zless' 'pine' 'make' 'man' 'apt-get'
do                              # ...but not on certain programs.
    alias $i="nocorrect $i"
done
alias mkdir='nocorrect mkdir -p'
function mkcd () {
  mkdir $*
  cd $1
}
function k () {
  local command=$1
  shift
  $command -i ~/.ssh/Egret-west-2.pem -p 2222 $*
}
function K () {
  local command=$1
  shift
  $command -i ~/.ssh/Egret-west-2.pem -P 2222 $*
}
#notify command
function gn () {
  GN_COMMAND=$*
  GN_TIME=$(date +'%s')
  #take the last 2 lines of output and return code
  out=$(script -q /dev/null zsh -c "$GN_COMMAND" 1>&2 | tee /dev/stdout | tail -n 2; echo $pipestatus[1])
  #parse return code and output
  r=$(echo $out | tail -n 1)
  n=$(echo $out | wc -l)
  let n=$n-1
  if [ $n -eq 0 ]
    then out=
  else
    out=$(echo $out | head -n $n)
  fi
  #compute runtime
  let elapsed=$(date +'%s')-$GN_TIME
  #notify
  growlnotify -n "Terminal" -m "Returned $r in ${elapsed}s: $out" ${GN_COMMAND}
  return $r
}

#set zsh key binding options
source ~/.zkeybind

setopt EXTENDEDGLOB             # file globbing is awesome
setopt CORRECT_ALL		# Check my spelling.
setopt AUTOMENU			# Tab-completion should cycle.
setopt AUTOLIST			# ... and list the possibilities.
setopt AUTO_PARAM_SLASH		# Make directories pretty.
setopt ALWAYS_TO_END		# Push that cursor on completions.
setopt AUTOCD			# jump to the directory.
setopt HIST_VERIFY		# Make those history commands nice
setopt NO_BEEP                  # self explanatory
setopt AUTO_NAME_DIRS           # change directories  to variable names
#setopt CHASE_LINKS              # if you pwd from a symlink, you get the actual path
setopt APPEND_HISTORY           # multiple sessions work together
setopt INC_APPEND_HISTORY       # do history appending immediately
setopt HIST_EXPIRE_DUPS_FIRST   # expire dups first
setopt EXTENDED_HISTORY         # save hist commands as ':<beginning time>:<elapsed seconds>:<command>'
setopt SHARE_HISTORY            # add other open shell's commands to the current shell immediately
HISTSIZE=428000
SAVEHIST=426000
HISTFILE=~/.history
setopt AUTO_PUSHD
DIRSTACKSIZE=20

#don't allow core dumps by default,  they are too fat
limit coredumpsize 0

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' use-compctl true
zstyle :compinstall filename '/home/${USERNAME}/.zshrc'

autoload -U compinit
compinit
# End of lines added by compinstall

# Setting up virtualenv
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/code/python
#source /usr/local/bin/virtualenvwrapper.sh

# Set up nodejs
#export NODE_PATH=/usr/local/lib/node_modules

. ~/.zshprompt

# rvm use default > /dev/null

#export GOROOT=/usr/local/Cellar/go/1.1.2
export GOPATH=$HOME/code/go
PATH=$GOPATH/bin:$PATH

boot2docker shellinit > /dev/null 2>&1 && $(boot2docker shellinit)

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# android tools
#PATH=$PATH:/Users/bbland/code/android/adt/sdk/platform-tools:/Users/bbland/code/android/adt/sdk/tools
#
export VIRTUAL_ENV_DISABLE_PROMPT=1

export STACKER_WORKSPACE=/Users/bbland/code/docker

export PATH
