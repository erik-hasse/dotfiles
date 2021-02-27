ln -s $(pwd)/zshrc ~/.zshrc
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/gitconfig ~/.gitconfig
ln -s $(pwd)/dircolors ~/.dircolors

mkdir -p ~/.config/nvim
ln -s $(pwd)/config/nvim/init.vim ~/.config/nvim/init.vim

mkdir -p ~/.vim/after/syntax
ln -s $(pwd)/vim/after/syntax/python.vim ~/.vim/after/syntax/python.vim

mkdir -p ~/.vim/ftplugin
ln -s $(pwd)/vim/ftplugin/python.vim ~/.vim/ftplugin/python.vim
