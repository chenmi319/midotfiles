#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#

# edit default editor
export EDITOR=vim
export VISUAL="$EDITOR"
export LESS="-F -g -i -M -R -w -X -z-4"

fixssh() {
  eval $(tmux show-env    \
    |sed -n 's/^\(SSH_[^=]*\)=\(.*\)/export \1="\2"/p')
}

unsetopt auto_name_dirs

alias aws-ssh='ssh -tt aws-office-jump ssh -tt '

# # lazynvm http://codegists.com/snippet/shell/lazy-load-nvmsh_rtfpessoa_shell
#NVM_DIR="$HOME/.nvm"
#if [ -d $NVM_DIR/versions/node ]; then
#  NODE_GLOBALS=(`find $NVM_DIR/versions/node -maxdepth 3 \( -type l -o -type f \) -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)
#fi
#NODE_GLOBALS+=("nvm")
#load_nvm () {
#  for cmd in "${NODE_GLOBALS[@]}"; do unset -f ${cmd} &>/dev/null; done
#  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
#  nvm use 2> /dev/null 1>&2 || true
#  export NVM_LOADED=1
#}
#for cmd in "${NODE_GLOBALS[@]}"; do
#  eval "${cmd}() { unset -f ${cmd} &>/dev/null; [ -z \${NVM_LOADED+x} ] && load_nvm; ${cmd} \$@; }"
#done
if [[ -a ".nvmrc" ]]; then
  nvm use `cat .nvmrc`
fi
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node


# https://github.com/qhwa/Command-Line-Youdao-Dictionary.git
alias dict="$HOME/bin/Command-Line-Youdao-Dictionary/dict"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home/
export PATH="$HOME/.jenv/bin:$PATH"
if jenv >/dev/null 2>&1; then
  eval "$(jenv init -)"
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# fasd
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
# conflict with directory plugin
#alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

unalias gdk
export PATH="/usr/local/opt/postgresql@9.6/bin:/usr/local/opt/node@8/bin:$PATH"

alias mysql57='docker run -it --rm mysql:5.7 env LANG=C.UTF-8 mysql -A'
alias mysql57import='docker run -i --rm mysql:5.7 env LANG=C.UTF-8 mysql -A'
alias rm='trash'

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

[[ -s "/etc/profile.d/rvm.sh" ]] && . "/etc/profile.d/rvm.sh" # Load RVM function

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/.rvm/bin:$PATH"
# fix Warning! PATH is not properly set up, $HOME/.rvm/gems/ruby-x.x.x/bin is not at first place.
export PATH="$GEM_HOME/bin:$PATH"

# fix rvm not reload in ubuntu in tmux
if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
  if [ "$(uname)" != "Darwin" ]; then
    cd .
  fi
fi

# fix failing bck-i-search
bindkey '^R' history-incremental-search-backward
