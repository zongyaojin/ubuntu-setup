#!/bin/bash

# ##########################################################################################
# Manually add the following to `~/.bashrc` to make them available to new bash sessions.
#     source ~/zj-portal/ubuntu-setup/zj-bashrc-setup.bash
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

# Add path to pip-installed packages to system path
export PATH=/home/zjin/.local/bin:$PATH

# Aliases
alias up-apt='sudo apt update -y && sudo apt upgrade -y'
alias up-pip='pip install --upgrade pip setuptools'
alias dl='cd ~/Downloads'
alias zp='mkdir -p ~/zj-portal && cd ~/zj-portal'
alias wp='mkdir -p ~/work-portal && cd ~/work-portal'

# ROS setup
zj_ros_distro_name=humble
zj_ros_distro_path="/opt/ros/$zj_ros_distro_name"
zj_ros_setup_file="$zj_ros_distro_path/setup.bash"

zj_ros_source_install="source ./install/setup.bash"
zj_ros_colcon_build="colcon build"
zj_ros_colcon_build_clean="colcon build --cmake-clean-cache"
zj_ros_colcon_build_symlink="colcon build --symlink-install"
zj_ros_colcon_build_clean_symlink="colcon build --cmake-clean-cache --symlink-install"

zj_ros_colcon_build_debug="colcon build --cmake-args -DCMAKE_BUILD_TYPE=Debug"
zj_ros_colcon_build_clean_debug="colcon build --cmake-clean-cache --cmake-args -DCMAKE_BUILD_TYPE=Debug"

alias sws="echo $zj_ros_source_install && $zj_ros_source_install"
alias cb="echo $zj_ros_colcon_build && $zj_ros_colcon_build"
alias cbc="echo $zj_ros_colcon_build_clean && $zj_ros_colcon_build_clean"
alias cbs="echo $zj_ros_colcon_build_symlink && $zj_ros_colcon_build_symlink"
alias cbcs="echo $zj_ros_colcon_build_clean_symlink && $zj_ros_colcon_build_clean_symlink"

alias cbd="echo $zj_ros_colcon_build_debug && $zj_ros_colcon_build_debug"
alias cbcd="echo $zj_ros_colcon_build_clean_debug && $zj_ros_colcon_build_clean_debug"

if [ -f "$zj_ros_setup_file" ]; then
  source $zj_ros_setup_file
  alias ros-path="cd $zj_ros_distro_path"
fi
