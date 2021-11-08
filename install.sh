#!/usr/bin/env bash

### Install Script (Arch-Based Systems)
### This script is for Arch-based systems only, as it uses things like pacman and yay.

echo "#####################################"
echo "##                                 ##"
echo "## DO NOT RUN THIS SCRIPT AS ROOT! ##"
echo "##                                 ##"
echo -e "#####################################\n\n"

# Essentials
echo "#####################################"
echo "# INSTALLING ESSENTIAL DEPENDENCIES #"
echo "#####################################"
sudo pacman -Syyu git yay curl wget base-devel python-pip
yay -Syyu
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | zsh
nvm install node && nvm use node

# 1. Pull the repository from the remote for any changes.
echo "###################################"
echo "#  UPDATING LOCAL GIT REPOSITORY  #"
echo "###################################"
git pull origin master

# Wallpapers
echo "###################################"
echo "#        ADDING WALLPAPERS        #"
echo "###################################"
cp ./wallpapers/* ~/Pictures/

# Fonts
echo "###################################"
echo "#        INSTALLING FONTS         #"
echo "###################################"

# Iosevka
wget https://github.com/be5invis/Iosevka/releases/download/v11.0.1/ttf-iosevka-term-ss05-11.0.1.zip ~/.local/share/fonts/
wget https://github.com/be5invis/Iosevka/releases/download/v11.0.1/ttf-iosevka-term-ss14-11.0.1.zip ~/.local/share/fonts/
wget https://github.com/be5invis/Iosevka/releases/download/v11.0.1/ttf-iosevka-term-ss15-11.0.1.zip ~/.local/share/fonts/
unzip ~/.local/share/fonts/*.zip
rm ~/.local/share/fonts/iosevka*oblique*.ttf
rm ~/.local/share/fonts/iosevka*thin*.ttf
rm ~/.local/share/fonts/iosevka*heavy*.ttf

# Nerd Fonts
yay -S nerd-fonts-fira-code nerd-fonts-hack nerd-fonts-jetbrains-mono ttf-twemoji

# Bash
echo "###################################"
echo "#        INSTALLING SHELLS        #"
echo "###################################"
sudo pacman -S bash zsh # Shells

echo "###################################"
echo "#      INSTALLING OH-MY-ZSH       #"
echo "###################################"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # Oh-My-Zsh
chsh -s /usr/bin/zsh # change default shell to ZSH

echo "###################################"
echo "#    INSTALLING POWERLEVEL10K     #"
echo "###################################"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "######################################"
echo "# INSTALLING ZSH-SYNTAX-HIGHLIGHTING #"
echo "######################################"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "###################################"
echo "#  COPYING SHELL FILES TO \$HOME  #"
echo "###################################"
cp ./.bashrc ~
cp ./.zshrc ~
cp ./.p10k.zsh ~
cp ./.xinitrc ~

echo "##################################"
echo "# INSTALLING ALACRITTY + CONFIGS #"
echo "##################################"
yay -S alacritty
cp -r ./.config/alacritty ~/.config/

echo "###################################"
echo "# INSTALLING DOOM EMACS + CONFIGS #"
echo "###################################"
sudo pacman -S emacs ripgrep fd find
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
cp -r ./.doom.d ~/
~/.emacs.d/bin/doom sync

echo "##################################"
echo "#  INSTALLING I3-GAPS + CONFIGS  #"
echo "##################################"
yay -S i3-gaps
cp -r ./.config/i3 ~/.config/

echo "##################################"
echo "#   INSTALLING KITTY + CONFIGS   #"
echo "##################################"
yay -S kitty
cp -r ./.config/kitty ~/.config/

echo "##################################"
echo "#  INSTALLING NEOVIM + CONFIGS   #"
echo "##################################"
yay -S neovim neovide
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
pip install neovim neovim-remote
sudo pacman -S texlive-most texlive-bin
cp -r ./.config/nvim ~/.config/
nvim -c	":PlugInstall"

echo "##################################"
echo "#   INSTALLING PICOM + CONFIGS   #"
echo "##################################"
yay -S picom-jonaburg-git
cp -r ./.config/picom ~/.config/

echo "##################################"
echo "#  INSTALLING POLYBAR + CONFIGS  #"
echo "##################################"
yay -S polybar
cp -r ./.config/polybar ~/.config/

echo "##################################"
echo "#   INSTALLING ROFI + CONFIGS    #"
echo "##################################"
yay -S rofi
cp -r ./.config/rofi ~/.config/

echo "##################################"
echo "#   INSTALLING RANGER + CONFIGS  #"
echo "##################################"
yay -S ranger w3m
cp -r ./.config/ranger ~/.config/

echo "##################################"
echo "#  INSTALLING ZATHURA + CONFIGS  #"
echo "##################################"
yay -S zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps
cp -r ./.config/zathura ~/.config/


echo "INSTALLATION COMPLETE."
