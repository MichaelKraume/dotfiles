	PATH+=":$HOME/.scripts"
# export some variables.
	export ZSH="$HOME/.oh-my-zsh"
	export EDITOR="nvim"
	export TERMINAL="$(which alacritty)"
	export BROWSER="firefox"
#add scripts (needs EDITOR to be set)
	for file in ~/.config/zsh/functions/*; do
		source $file
	done
#oh my zsh stuff
	ZSH_THEME="agnoster"
	export UPDATE_ZSH_DAYS=21
	COMPLETION_WAITING_DOTS="true"
	HIST_STAMPS="dd/mm/yyyy"
	plugins=(git zsh-syntax-highlighting history-substring-search)
	source $ZSH/oh-my-zsh.sh
	export ARCHFLAGS="-arch x86_64"
#vi mode
	bindkey -v
	export KEYTIMEOUT=1
	
	bindkey -M menuselect 'h' vi-backward-char
	bindkey -M menuselect 'k' vi-up-line-or-history
	bindkey -M menuselect 'l' vi-forward-char
	bindkey -M menuselect 'j' vi-down-line-or-history
	bindkey -v '^?' backward-delete-char

	# Change cursor shape for different vi modes.
	function zle-keymap-select {
	  if [[ ${KEYMAP} == vicmd ]] ||
	     [[ $1 = 'block' ]]; then
	    echo -ne '\e[1 q'
	  elif [[ ${KEYMAP} == main ]] ||
	       [[ ${KEYMAP} == viins ]] ||
	       [[ ${KEYMAP} = '' ]] ||
	       [[ $1 = 'beam' ]]; then
	    echo -ne '\e[5 q'
	  fi
	}
	zle -N zle-keymap-select
	zle-line-init() {
	    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
	    echo -ne "\e[5 q"
	}
	zle -N zle-line-init
	echo -ne '\e[5 q' # Use beam shape cursor on startup.
	preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

	autoload edit-command-line; zle -N edit-command-line
	bindkey '^e' edit-command-line
	bindkey '\e[A' history-search-backward
	bindkey '\e[B' history-search-forward
#use ctrl+<l/r> to move by words
	export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
	bindkey ';5D' backward-word
	bindkey ';5C' forward-word

alias config='/usr/bin/git --git-dir=$HOME/git/dotfiles --work-tree=$HOME'
alias homework='/usr/bin/git --git-dir=$HOME/git/homework --work-tree=$HOME/Dokumente/Uni'
neofetch
