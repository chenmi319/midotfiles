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
sudo apt-get install tmux
tryLink ~/.midotfiles/tmux.conf ~/.tmux.conf
```
* for osx users, you should brew install/upgrade reattach-to-user-namespace first, and run in bah:
```
tryLink ~/.midotfiles/tmux.conf.osx ~/.tmux.conf.osx
```


## vim
* run in bash:
```
sudo apt-get install silversearcher-ag vim-nox ctags
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
tryLink ~/.midotfiles/vimrc ~/.vimrc
vim +PluginInstall +qall
```

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
