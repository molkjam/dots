# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
  export ZSH="/home/molly/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	expand-aliases
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

setopt aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias clc='clear'
alias lsh='ls -lrh'
alias lsa='ls -lrha'
alias gimme='sudo apt-get install'
alias bye='sudo apt-get remove'
alias cleanup='sudo apt-get autoremove'
alias dropbox='cd /mnt/c/Users/mkjames/Dropbox'
alias downloads='cd /mnt/c/Users/mkjames/Downloads'
alias NOC='ssh -X moljam@livgen2.nerc-liv.ac.uk'
alias chrome='/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias ~='cd ~'
alias config='vim ~/.bashrc'
alias fish='asciiquarium'
alias sl='sl; echo '\"'clumsy fingers! Guess you meant ls '\"'; ls'
alias matlab='export DISPLAY=localhost:0; matlab -nosplash -nodesktop -r "cd /mnt/c/Users/mkjames/Dropbox ; addpath(genpath(pwd))" '
alias matlabgui='export DISPLAY=localhost:0; matlab -nosplash'
alias rowcol='awk -F, '\''END {printf "Number of Rows : %s\nNumber of Columns : %s\n", NR, NF}'\'' '
alias lacie='sudo mount -t drvfs E: /mnt/e'
alias linuxbox='ssh -v stolen@10.206.42.141'

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS


#function to google search from the command line
function google () { 
		   /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe "http://www.google.com/search?q= $1"; 
}


#to use x11
#export DISPLAY=:0
#LC_ALL=C
#export LC_ALL

#function to open stuff in windows

function open () { 
		 cmd.exe /c start $1; 
}


#function to open word because word is gay

function open word () {
		cmd.exe /c start winword;
}


#spreadsheet alias
function ss () {
		sc-im $1;
}

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export GEM_HOME=~/.ruby
export PATH="$PATH:~/.ruby/bin"


## set colors for LS_COLORS
eval `dircolors ~/.dircolors`


eval $(thefuck --alias)

#x11 in tmux
function update-x11-forwarding
{
    if [ -z "$STY" -a -z "$TMUX" ]; then
        echo $DISPLAY > ~/.display.txt
    else
        export DISPLAY=`cat ~/.display.txt`
    fi
}

#set zsh screensaver
TMOUT=120
TRAPALRM() { asciiquarium }
