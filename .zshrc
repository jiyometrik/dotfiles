# zgenom for plugins
source "$HOME/.zgenom/zgen.zsh"

zgenom autoupdate # autoupdate plugins

if ! zgenom saved; then
	zgenom load zdharma-continuum/fast-syntax-highlighting # syntax highlighting
	zgenom load zsh-users/zsh-completions # extra completions
	zgenom load zsh-users/zsh-autosuggestions # fish-like autosuggestions
	zgenom load zsh-users/zsh-history-substring-search # smart up-arrow for last cmd
	zgenom save
fi

# update path for other binaries
PATH="$HOME/.emacs.d/bin:$HOME/flutter/bin:$HOME/Android/Sdk:$HOME/.local/share/nvim/lsp_servers:$HOME/.cargo/bin:$HOME/go/bin:$HOME/.local/bin:/var/lib/snapd/snap/bin${PATH:+:${PATH}}"

# perl binaries (latexindent aaa)
PATH="/home/geo/perl5/bin${PATH:+:${PATH}}"
export PATH
PERL5LIB="/home/geo/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL5LIB
PERL_LOCAL_LIB_ROOT="/home/geo/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_LOCAL_LIB_ROOT
PERL_MB_OPT="--install_base \"/home/geo/perl5\""
export PERL_MB_OPT
PERL_MM_OPT="INSTALL_BASE=/home/geo/perl5"
export PERL_MM_OPT

# nvm (node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # loads nvm bash_completion

# extract files
ext() {
	if [ -f $1 ]; then
		case $1 in
		*.tar.bz2) tar xjf $1 ;;
		*.tar.gz) tar xzf $1 ;;
		*.bz2) bunzip2 $1 ;;
		*.rar) unrar x $1 ;;
		*.gz) gunzip $1 ;;
		*.tar.xz) tar -xf $1 ;;
		*.tar) tar xf $1 ;;
		*.tbz2) tar xjf $1 ;;
		*.tgz) tar xzf $1 ;;
		*.zip) unzip $1 ;;
		*.Z) uncompress $1 ;;
		*.7z) 7z x $1 ;;
		*) echo "'$1' cannot be extracted via ext()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

# auto cd
setopt auto_cd

# use exa instead of ls (github: ogham/exa)
alias l="exa -laah --icons --group-directories-first"
alias la="exa -lah --icons --group-directories-first"
alias ll="exa -hl --icons --group-directories-first"
alias ls="exa --icons --group-directories-first"
alias lsa="exa -lah --icons --group-directories-first"
alias lsg="exa --git --long --header --all --git-ignore --icons --group-directories-first"
alias lt="exa -T"

# ricing aliases
alias cr="colorscript -r"
alias fm="fm6000"
alias pika="neofetch --ascii $HOME/.config/neofetch/pikachu --ascii_colors 0 1 2 3 4 5 6 7"
alias pf="pfetch"
alias pk="pokemon-colorscripts -r"
alias lg="lazygit"
alias nf="neofetch"
alias rn="ranger"
alias q="exit"

# nvim aliases
alias nv="nvim"
alias v="nvim"
alias vim="nvim"

# git aliases
alias g="git"
alias ga="git add"
alias gaa="git add --all"
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gbdd="git branch -D"
alias gbr="git branch --remote"
alias gcam="git commit -a -m"
alias gcm="git commit -m"
alias gcb="git checkout -b"
alias gco="git checkout"
alias gcl="git clone --recurse-submodules"
alias gcr="git checkout --recurse-submodules"
alias gd="git diff"
alias gds="git diff --staged"
alias ge="git rm"
alias gp="git push"
alias gpu="git push upstream"
alias gl="git pull"
alias glo="git log --oneline --decorate --graph --all"
alias glr="git pull --rebase"
alias gm="git merge"
alias gmo="git merge origin/master"
alias gmm="git merge master"
alias gr="git reset"
alias grh="git reset --hard"
alias grs="git restore ."
alias grst="git restore --staged ."
alias gs="git status"
alias gst="git stash --all"
alias gsp="git stash pop"
alias gv="git revert"
alias lg="lazygit"
alias galias="alias | rg git"

# cargo aliases
alias cgb="cargo build"
alias cgn="cargo new"
alias cgr="cargo run"

# node aliases
alias nd="npm remove"
alias ni="npm install -g"
alias nr="npm run"
alias nu="npm update"
alias yb="yarn build"
alias yd="yarn dev"

# some globals to export for other apps
export BAT_THEME="base16"
export EDITOR="nvim"
export CHROME_EXECUTABLE="google-chrome-stable"

# zoxide (directory jumping)
eval "$(zoxide init zsh)"

# fetch to run on startup
colorscript -r

# dir jumping
eval "$(zoxide init zsh)"

# starship prompt
eval "$(starship init zsh)"
