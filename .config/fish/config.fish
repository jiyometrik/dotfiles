# add dirs to path
# fish_add_path -aP /home/geo/go/bin/
# fish_add_path -aP /home/geo/.cargo/bin/
# fish_add_path -aP /home/geo/.local/bin/

nvm install 16
nvm use 16
set --universal nvm_default_version v16.13.0

set -gx EDITOR nvim
set -gx BAT_THEME base16

# use exa instead of ls (github: ogham/exa)
alias l="/home/geo/.cargo/bin/exa -laah --icons --color=always --group-directories-first"
alias la="/home/geo/.cargo/bin/exa -lah --icons --color=always --group-directories-first"
alias ll="/home/geo/.cargo/bin/exa -hl --icons --color=always --group-directories-first"
alias ls="/home/geo/.cargo/bin/exa --icons --color=always --group-directories-first"
alias lsa="/home/geo/.cargo/bin/exa -lah --icons --color=always --group-directories-first"
alias lsg="/home/geo/.cargo/bin/exa --git --long --header --all --git-ignore --icons --color=always --group-directories-first"
alias lt="/home/geo/.cargo/bin/exa -T --icons --color=always --group-directories-first"

# other aliases
alias cr="colorscript -r"
alias fm="fm6000"
alias pf="pfetch"
alias lg="/home/geo/go/bin/lazygit"
alias lv="lvim"
alias nf="neofetch"
alias nv="nvim"
alias rn="ranger"
alias q="exit"

# disable hello message
set -gx fish_greeting ''

# colorscript -r
starship init fish | source
