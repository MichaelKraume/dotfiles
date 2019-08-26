 
#PATH+="$HOME/.scripts"
	for d in $HOME/.scripts/*; do
		PATH+=":$d"
	done
# export some variables.
	export ZSH="$HOME/.oh-my-zsh"
	export EDITOR="nvim"
	export TERMINAL="$(which alacritty)"
	export BROWSER="firefox"
#use ctrl+<l/r> to move by words
	export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
	bindkey ';5D' backward-word
	bindkey ';5C' forward-word
<<<<<<< HEAD
ZSH_THEME="agnoster_custom"

=======
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster_custom"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
>>>>>>> ac0cf3b7b0136a9aaeee259ac6cb2d286d207d59

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=21

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

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
 HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
 export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
function sl()
{
	/usr/bin/sl
	clear
	ls $@
}
function taclol
{
	tac $@ | lolcat
}
function ranger()
{
        /usr/bin/ranger --choosedir=$HOME/.rangerdir $@
        LASTDIR=`cat $HOME/.rangerdir`
        cd $LASTDIR
        echo -n > $HOME/.rangerdir
}
function homeworkFromTemplate ()
{
folder_name=$1
if [ "$#" -eq 1 ];
then
        file_name=$1
elif [ "$#" -eq 2 ];
then
        file_name=$2
else
        exit 1
fi

if [ -d "./Template/" ] && [ -e "./Template/template.tex" ];
then
        copy_from="./Template/template.tex"
else
        echo -e "no template here; instead use:"
        read -i "$HOME/Templates/" -e copy_from
        #if [ "$" ]
fi

mkdir -p ./$folder_name
cp $copy_from ./$folder_name/$file_name.tex
}
alias config='/usr/bin/git --git-dir=$HOME/git/dotfiles --work-tree=$HOME'
alias homework='/usr/bin/git --git-dir=$HOME/git/homework --work-tree=$HOME/Dokumente/Uni'
neofetch #| lolcat
