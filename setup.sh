ln -s $(pwd)/zshrc ~/.zshrc
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/gitconfig ~/.gitconfig
ln -s $(pwd)/dircolors ~/.dircolors

mkdir -p ~/.config/nvim
ln -s $(pwd)/config/nvim/init.vim ~/.config/nvim/init.vim
