# zgenom for plugins
source "$HOME/.zgenom/zgen.zsh"

zgenom autoupdate # autoupdate plugins

if ! zgenom saved; then
	zgenom ohmyzsh # loads oh-my-zsh plugin base
	zgenom load zdharma-continuum/fast-syntax-highlighting # syntax highlighting
	zgenom load zsh-users/zsh-completions # extra completions
	zgenom load zsh-users/zsh-autosuggestions # fish-like autosuggestions
	zgenom load zsh-users/zsh-history-substring-search # smart up-arrow for last cmd
	zgenom ohmyzsh plugins/z # dir jumping
	zgenom ohmyzsh plugins/last-working-dir # move to last directory
	zgenom ohmyzsh plugins/vi-mode # vi-mode
	zgenom ohmyzsh plugins/git # git aliases
	zgenom ohmyzsh plugins/gh # github cli aliases
	zgenom save
fi

# update path for rust/go binaries
PATH="$HOME/.local/share/nvim/lsp_servers:$HOME/.cargo/bin:$HOME/go/bin:$HOME/.local/bin:/var/lib/snapd/snap/bin${PATH:+:${PATH}}"

# perl path
PATH="/home/geo/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/geo/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/geo/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/geo/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/geo/perl5"; export PERL_MM_OPT;

# nvm load
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# extract files
ext () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xjf $1   ;;
			*.tar.gz)    tar xzf $1   ;;
			*.bz2)       bunzip2 $1   ;;
			*.rar)       unrar x $1   ;;
			*.gz)        gunzip $1    ;;
			*.tar.xz)    tar -xf $1   ;;
			*.tar)       tar xf $1    ;;
			*.tbz2)      tar xjf $1   ;;
			*.tgz)       tar xzf $1   ;;
			*.zip)       unzip $1     ;;
			*.Z)         uncompress $1;;
			*.7z)        7z x $1      ;;
			*)           echo "'$1' cannot be extracted via ext()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

# auto cd (type the directory path and it will cd you there)
setopt auto_cd

# use exa instead of ls (github: ogham/exa)
alias l="exa -laah --icons --group-directories-first"
alias la="exa -lah --icons --group-directories-first"
alias ll="exa -hl --icons --group-directories-first"
alias ls="exa --icons --group-directories-first"
alias lsa="exa -lah --icons --group-directories-first"
alias lsg="exa --git --long --header --all --git-ignore --icons --group-directories-first"
alias lt="exa -T"

# other aliases
alias cr="colorscript -r"
alias fm="fm6000"
alias pika="neofetch --ascii $HOME/.config/neofetch/ascii --ascii_colors 0 1 2 3 4 5 6 7"
alias pf="pfetch"
alias pk="pokemon-colorscripts -r"
alias lg="lazygit"
alias lv="lvim"
alias nv="nvim"
alias nf="neofetch"
alias rn="ranger"
alias v="nvim"
alias vim='nvim'
alias q="exit"

alias galias="alias | grep git"

# bat theme
export BAT_THEME="base16"
export EDITOR="nvim"

# startup script (choose one)
# colorscript -r # shell-color-scripts
# fm6000 -n -c blue # fetch-master-6000
# pfetch
pokemon-colorscripts -r # pokemon!
# neofetch # the one and only

# starship prompt
eval "$(starship init zsh)" # starship prompt
