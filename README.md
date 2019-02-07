# dotfiles
.files and other customizations on macOS

## Setting up YouCompleteMe vim plugin

```
sudo apt install build-essential cmake python3-dev
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/.vim/YouCompleteMe
python3 install.py --go-completer
cd ~
vim +PluginInstall +qall

```
