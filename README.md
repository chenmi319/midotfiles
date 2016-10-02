# midotfiles
## vim
* run in bash:
```
sudo apt-get update && sudo apt-get install silversearcher-ag vim-nox ctags wget
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://raw.githubusercontent.com/chenmi319/midotfiles/master/vimrc -O ~/.vimrc
vim +PluginInstall +qall
```


## git
* run in bash:
```
sudo apt-get update && sudo apt-get install git
wget https://raw.githubusercontent.com/chenmi319/midotfiles/master/gitconfig -O ~/.gitconfig
wget https://raw.githubusercontent.com/chenmi319/midotfiles/master/gitignore -O ~/.gitignore
```

## zprezto 
* run in bash:
```
sudo apt-get update && sudo apt-get install zsh
```
* run in zsh:
```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh
wget https://raw.githubusercontent.com/chenmi319/midotfiles/master/prompt_chenmi_setup -O ~/.zprezto/modules/prompt/functions/prompt_chenmi_setup
wget https://raw.githubusercontent.com/chenmi319/midotfiles/master/zpreztorc -O ~/.zprezto/runcoms/zpreztorc
wget https://raw.githubusercontent.com/chenmi319/midotfiles/master/zshrc -O ~/.zprezto/runcoms/zshrc
```
* relogin

## bash bashit(for develop)
* run in bash:
```
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
 ~/.bash_it/install.sh
```
* relogin and run in bash:
```
bash-it enable completion bundler capistrano rake ssh tmux
bash-it enable plugin git git-subrepo history nginx rails ruby rvm ssh tmux
bash-it enable alias git rails tmux vim
echo "\nexport VISUAL=vim\nexport EDITOR=\"\$VISUAL\"\n" >> ~/.bashrc
```
* relogin

## bash liquid(for server)
* run in bash:
```
git clone https://github.com/nojhan/liquidprompt.git ~/.liquidprompt
echo '[[ $- = *i* ]] && source ~/.liquidprompt/liquidprompt' >> ~/.bashrc
wget https://raw.githubusercontent.com/chenmi319/midotfiles/master/liquidpromptrc -O ~/.liquidpromptrc
```
* relogin
