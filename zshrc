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

# HomeBrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
# HomeBrew END

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
function loadNvmrc()
{
  if command -v nvm &> /dev/null; then
    if [[ -a ".nvmrc" ]]; then
      nvm use `cat .nvmrc`
    fi
  fi
}
#function chpwd()
#{
#    emulate -L zsh
#    loadNvmrc
#}
chpwd_functions=(${chpwd_functions[@]} "loadNvmrc")
if command -v nvm &> /dev/null; then
  if [[ -a ".nvmrc" ]]; then
    nvm use `cat .nvmrc`
  else
    nvm use default
  fi
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
alias psql13='docker run -it --rm postgres:13 psql'
alias psql10='docker run -it --rm postgres:10 psql'

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

[[ -s "/etc/profile.d/rvm.sh" ]] && . "/etc/profile.d/rvm.sh" # Load RVM function

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$HOME/.rvm/bin:$PATH"
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

#alias kube_dev_ningxia='kubectl --kubeconfig ~/.kube/kube_config_ningxia'
#alias kube_prod_beijing='kubectl --kubeconfig ~/.kube/kube_config_pro'
export KUBECONFIG='/Users/chenmi/.kube/chenmi-kube-admin-pro-dev-rw:/Users/chenmi/.kube/chenmi-kube-pro-nx:/Users/chenmi/.kube/chenmi-kube-ali-prod:/Users/chenmi/.kube/chenmi-kube-ali-dev:/Users/chenmi/.kube/chenmi-kube-ali-dev-ask:/Users/chenmi/.kube/chenmi-kube-ali-dev-worker:/Users/chenmi/.kube/eks'
alias kube_dev_ro='kubectl --kubeconfig ~/.kube/chenmi-kube-pro-dev-ro --context=ningxia-dev'
alias kube_dev='kubectl --context=ningxia-dev'
alias kube_prod_ro='kubectl --kubeconfig ~/.kube/chenmi-kube-pro-dev-ro --context=prod'
alias kube_prod='kubectl --context=prod'
alias kube_prod_eks='kubectl --context=eks'
alias kube_prod_nx='kubectl --context=prod-nx'
alias kube_ali_dev='kubectl --context=ali-dev'
alias kube_ali_dev_ask='kubectl --context=ali-dev-ask'
alias kube_ali_dev_worker='kubectl --context=ali-dev-worker'
alias kube_ali_prod='kubectl --context=ali-prod'

alias create_ns_dev='python3 ./main.py nx-dev'
alias create_ns_prod='python3 ./main.py prod'
alias create_ns_prod_nx='python3 ./main.py nx-prod'
alias create_ns_ali_dev='python3 ./main.py ali-dev'
alias create_ns_ali_dev_ask='python3 ./main.py ali-dev-ask'
alias create_ns_ali_dev_worker='python3 ./main.py ali-dev-worker'
alias create_ns_ali_prod='python3 ./main.py ali-prod'

alias new-k8s-permission_dev='python3 ./main.py nx'
alias new-k8s-permission_prod='python3 ./main.py prod'
alias new-k8s-permission_ali_dev='python3 ./main.py ali-dev'
alias new-k8s-permission_ali_dev_ask='python3 ./main.py ali-dev-ask'
alias new-k8s-permission_ali_dev_worker='python3 ./main.py ali-dev-worker'
alias new-k8s-permission_ali_prod='python3 ./main.py ali-prod'

alias helm_ali_dev='helm_2_16_3 --kube-context=ali-dev'
alias helm3_ali_dev='helm3 --kube-context=ali-dev'
alias helm_ali_dev_ask='helm_2_16_12 --kube-context=ali-dev-ask'
alias helm3_ali_dev_ask='helm3 --kube-context=ali-dev-ask'
alias helm_ali_dev_worker='helm_2_16_12 --kube-context=ali-dev-worker'
alias helm_ali_prod='helm_2_16_3 --kube-context=ali-prod'
alias helm3_ali_prod='helm3 --kube-context=ali-prod'
alias helm_dev='helm_2_9_1 --kube-context=ningxia-dev'
alias helm3_dev='helm3 --kube-context=ningxia-dev'
alias helm_prod='helm_2_9_1 --kube-context=prod'
alias helm_prod_nx='helm_2_9_1 --kube-context=prod-nx'

alias velero_dev='velero --kubecontext=ningxia-dev'
alias velero_prod='velero --kubecontext=prod'
alias velero_prod_nx='velero --kubecontext=prod-nx'

alias bjdev-kops1-15='AWS_REGION=cn-north-1 KOPS_STATE_STORE=s3://alo7-kops/dev kops1.15'
alias bjdev-kops1-16='AWS_REGION=cn-north-1 KOPS_STATE_STORE=s3://alo7-kops/dev kops1.16'
alias bjprod-kops1-15='AWS_REGION=cn-north-1 KOPS_STATE_STORE=s3://alo7-kops/prod kops1.15'
alias mykops1-16='AWS_REGION=cn-northwest-1 KOPS_STATE_STORE=s3://kops-bach-test kops1.16'
alias nxdev-kops1-15='AWS_REGION=cn-northwest-1 KOPS_STATE_STORE=s3://alo7-kops-zhy/dev kops1.15'
alias nxprod-kops1-15='AWS_REGION=cn-northwest-1 KOPS_STATE_STORE=s3://alo7-kops-zhy/prod kops1.15'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

if kubectl version --client >/dev/null 2>&1; then
  source <(kubectl completion zsh)
fi
