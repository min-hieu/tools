# by Charlie/Hieu 
# 2022 / 03 / 11

BASEDIR=$(dirname "$0")

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install neovim 
brew install neovim

# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# setup vim config
mkdir "~/.config"
mkdir "~/.config/nvim"
cp "$BASEDIR/init.vim" ~/.config/nvim/init.vim
