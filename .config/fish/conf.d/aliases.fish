# ls aliases
abbr -a l exa -laah --icons --group-directories-first
abbr -a la exa -lah --icons --group-directories-first
abbr -a ll exa -hl --icons --group-directories-first
abbr -a ls exa --icons --group-directories-first
abbr -a lsg exa --git --long --header --all --git-ignore --icons --group-directories-first
abbr -a lt exa -T

abbr -a rn ranger

# git aliases
abbr -a g git
abbr -a ga git add
abbr -a gaa git add --all
abbr -a gb git branch
abbr -a gba git branch -a
abbr -a gbd git branch -d
abbr -a gbdd git branch -D
abbr -a gbr git branch --remote
abbr -a gcam git commit -a -m
abbr -a gcm git commit -m
abbr -a gcb git checkout -b
abbr -a gco git checkout
abbr -a gcl git clone --recurse-submodules
abbr -a gcr git checkout --recurse-submodules
abbr -a gd git diff
abbr -a gds git diff --staged
abbr -a ge git rm
abbr -a go git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short
abbr -a gol git log --oneline --decorate --graph --all
abbr -a gp git push
abbr -a gpu git push upstream
abbr -a gl git pull
abbr -a glr git pull --rebase
abbr -a gm git merge
abbr -a gmo git merge origin/master
abbr -a gmm git merge master
abbr -a gr git reset
abbr -a grh git reset --hard
abbr -a grs git restore .
abbr -a grst git restore --staged .
abbr -a gs git status
abbr -a gst git stash --all
abbr -a gsp git stash pop
abbr -a gv git revert

abbr -a lg lazygit
abbr -a galias alias | rg git

# nvim aliases
abbr -a nv nvim
abbr -a v nvim
abbr -a vim nvim

# cargo aliases
abbr -a cgb cargo build
abbr -a cgn cargo new
abbr -a cgr cargo run

# node aliases
abbr -a nd npm remove
abbr -a ni npm install -g
abbr -a nr npm run
abbr -a nu npm update
abbr -a yb yarn build
abbr -a yd yarn dev

# ricing aliases
abbr -a cr colorscript -r
abbr -a fm fm6000
abbr -a pf pfetch
abbr -a nf neofetch
abbr -a q exit
