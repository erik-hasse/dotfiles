ln -s $(pwd)/zshrc ~/.zshrc
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/gitconfig ~/.gitconfig
ln -s $(pwd)/dircolors ~/.dircolors
ln -s $(pwd)/xinitrc ~/.xinitrc
ln -s $(pwd)/xmodmap ~/.Xmodmap

mkdir -p ~/.config/i3
ln -s $(pwd)/config/i3/config ~/.config/i3/config

mkdir -p ~/.config/nvim
ln -s $(pwd)/config/nvim/init.vim ~/.config/nvim/init.vim

mkdir -p ~/.config/termite
ln -s $(pwd)/config/termite/config ~/.config/termite/config

mkdir -p ~/.config/polybar
ln -s $(pwd)/config/polybar/config ~/.config/polybar/config
ln -s $(pwd)/config/polybar/launch.sh ~/.config/polybar/launch.sh

mkdir -p ~/.vim/after/syntax
ln -s $(pwd)/vim/after/syntax/python.vim ~/.vim/after/syntax/python.vim

mkdir -p ~/.vim/ftplugin
ln -s $(pwd)/vim/ftplugin/python.vim ~/.vim/ftplugin/python.vim
