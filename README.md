# midotfiles
## vim
* sudo apt-get update && sudo apt-get install silversearcher-ag vim-nox ctags wget
* git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
* wget https://raw.githubusercontent.com/chenmi319/midotfiles/master/vimrc -O ~/.vimrc
* vim +PluginInstall +qall

## zprezto 
* sudo apt-get update && sudo apt-get install zsh

## bash bashit(for develop)
* run in bash 
```
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
 ~/.bash_it/install.sh
```
* relogin and run in bash
```
bash-it enable completion bundler capistrano rake ssh tmux
bash-it enable plugin git git-subrepo history nginx rails ruby rvm ssh tmux
bash-it enable alias git rails tmux vim
echo "\nexport VISUAL=vim\nexport EDITOR=\"\$VISUAL\"\n" >> ~/.bashrc
```

## bash liquid(for server)
* run in bash
```
git clone https://github.com/nojhan/liquidprompt.git ~/.liquidprompt
echo '[[ $- = *i* ]] && source ~/.liquidprompt/liquidprompt' >> ~/.bashrc
wget https://raw.githubusercontent.com/chenmi319/midotfiles/master/liquidpromptrc -O ~/.liquidpromptrc
```
