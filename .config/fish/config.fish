set fish_greeting "You know the rules and so do I."

# set some globals
set -gx TERM xterm-256color
set -gx EDITOR nvim
set -gx BAT_THEME base16

# path for other binaries
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/.local/share/nvim/lsp_servers $PATH
set -gx PATH ~/.cargo/bin $PATH
set -gx PATH ~/go/bin $PATH
set -gx PATH /var/lib/snapd/snap/bin $PATH

# go path
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# node
nvm use 17

# aliases
source ~/.config/fish/conf.d/aliases.fish

# custom syntax highlighting 
source ~/.config/fish/conf.d/syntax.fish

# prompt
starship init fish | source

# dir jumping (zoxide)
zoxide init fish | source

# fetch!
pfetch
