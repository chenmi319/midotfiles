# midotfiles

## general
* run in bash:
```
sudo apt-get update && sudo apt-get install git
git clone https://github.com/chenmi319/midotfiles.git ~/.midotfiles
```
* you should run register function tryLink before you use it:
```
tryLink(){
  if [[ -a $2 ]]; then mv -f $2 $2.bak; fi
  ln -s $1 $2
}
```

## git
* ubuntu upgrade git
```
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y
```
* run in bash:
```
tryLink ~/.midotfiles/gitconfig ~/.gitconfig
tryLink ~/.midotfiles/gitignore ~/.gitignore
```
* you should create ~/.gitconfig.user like
```
[user]
  email = aaa@bbb.com
  name = ccc
```

## tmux
* run in bash:
```
sudo apt-get update
sudo apt-get -y install python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update
sudo apt-get install -y tmux
osx should brew install tmux reattach-to-user-namespace
tryLink ~/.midotfiles/tmux.conf ~/.tmux.conf
tryLink ~/.midotfiles/tmux-osx.conf ~/.tmux-osx.conf
```


## vim
* install vim 8.0+
```
sudo apt install software-properties-common
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
########## 如果哪天需要干净删除这个版本的 vim
#sudo apt remove vim
#sudo add-apt-repository --remove ppa:jonathonf/vim
```
* run in bash:
```
sudo apt-get install silversearcher-ag vim-nox ctags
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
tryLink ~/.midotfiles/vimrc ~/.vimrc
vim +PluginInstall +qall # run `vim +PluginUpdate +qall` for update
```
* for syntastic check: js can `npm install -g jshint`, yml can `gem install haml`, and etc.

## zprezto 
* run in bash:
```
sudo apt-get install zsh
```
* run in zsh:
```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
tryLink ~/.midotfiles/prompt_chenmi_setup ~/.zprezto/modules/prompt/functions/prompt_chenmi_setup
tryLink ~/.midotfiles/zpreztorc ~/.zprezto/runcoms/zpreztorc
tryLink ~/.midotfiles/zshrc ~/.zprezto/runcoms/zshrc
```
* run zsh and if everything works well, 'chsh -s /bin/zsh' or 'sudo vipw' to edit your default shell to /bin/zsh

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
tryLink ~/.midotfiles/liquidpromptrc ~/.liquidpromptrc
```
* relogin

## solarized dark
* run in bash
```
tryLink ~/.midotfiles/dircolors.256dark ~/.dir_colors
```
