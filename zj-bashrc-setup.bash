#!/bin/bash

# ##########################################################################################
# Manually add the following to `~/.bashrc` to make these commands are available to new bash
# source ~/zj-portal/ubuntu-setup/zj-bash-setup.bash
# ##########################################################################################

# Activate [bash-git-prompt] or report missing then configure it
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
else
    echo -e "========== zj-bashrc-setup =========="
    echo -e "[bash-git-prompt] package missing, https://github.com/magicmonty/bash-git-prompt "
    echo -e "[bash-git-prompt] cloning and configuring package"
    echo -e ">>>"
    
    # See [Installation, via Git clone] on https://github.com/magicmonty/bash-git-prompt
    git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
    
    echo -e "<<<"
    echo -e "[bash-git-prompt] package clone and configuration completed"
    echo -e "========== zj-bahsrc-setup =========="
fi

# Add path to pip-installed package to system path
export PATH=/home/zjin/.local/bin:$PATH

# Aliases
alias update-ubuntu='sudo apt update -y && sudo apt upgrade -y'
alias update-pip='pip install -upgrade pip setuptools'
alias bashrc='gedit ~/.bashrc'
alias downloads='cd ~/Downloads'
alias zj='mkdir -p ~/zj-portal && cd ~/zj-portal'


