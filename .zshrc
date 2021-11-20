# plugins
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage' # self-manage zplug
zplug "zsh-users/zsh-syntax-highlighting" # syntax highlighting
zplug "zsh-users/zsh-autosuggestions" # fish-like autosuggestions
zplug "zsh-users/zsh-completions" # better-completions
zplug "plugins/z", from:oh-my-zsh
zplug "plugins/history-substring-search", from:oh-my-zsh # could not get the zsh-users version working
zplug "plugins/git", from:oh-my-zsh # git aliases (they're super helpful!)
zplug "plugins/gh", from:oh-my-zsh # github aliases (also very helpful)
zplug "jeffreytse/zsh-vi-mode" # better vi-mode
zplug "plugins/last-working-directory", from:oh-my-zsh # last working directory
zplug load # load plugins

# update path for rust/go binaries
PATH="$HOME/.cargo/bin:$HOME/go/bin:$HOME/.local/bin:/var/lib/snapd/snap/bin${PATH:+:${PATH}}"

# extract files
ext ()
{
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xjf $1   ;;
			*.tar.gz)    tar xzf $1   ;;
			*.bz2)       bunzip2 $1   ;;
			*.rar)       unrar x $1     ;;
			*.gz)        gunzip $1    ;;
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
alias l="exa -laah"
alias la="exa -lah"
alias ll="exa -hl"
alias ls="exa"
alias lsa="exa -lah"
alias lsg="exa --git --long --header --all --git-ignore"
alias lt="exa -T"

# other aliases
alias cr="colorscript -r"
alias fm="fm6000"
alias pf="pfetch"
alias lg="lazygit"
alias lv="lvim"
alias nf="neofetch"
alias nv="nvim"
alias rn="ranger"
alias q="exit"

# bat theme
export BAT_THEME="base16"
export EDITOR="emacs"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
	--color fg:#ebdbb2,bg:#282828,hl:#fabd2f,fg+:#ebdbb2,bg+:#3c3836,hl+:#fabd2f
	--color info:#83a598,prompt:#bdae93,spinner:#fabd2f,pointer:#83a598,marker:#fe8019,header:#665c54'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# startup script (choose one)
# colorscript -r # shell-color-scripts
fm6000 -n # fetch-master-6000
# pfetch
# neofetch # the one and only

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)" # starship prompt
