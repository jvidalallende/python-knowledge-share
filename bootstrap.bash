#!/bin/bash
set -e

function setup_locale {
    sudo locale-gen en_US.UTF-8
    sudo update-locale LC_ALL=en_US.UTF-8
}

function install_packages {
    sudo apt-get update -y
    sudo apt-get install -y \
        git \
        vim-nox \
        tmux \
        emacs \
        pylint \
        python3 \
        python3-pip \
        firefox \
        ipython \
        ipython-notebook
}

function upgrade_pip {
    sudo pip3 install --upgrade pip
}

function install_jupyter {
    sudo pip3 install jupyter
}

# Execution section
setup_locale
install_packages
upgrade_pip
install_jupyter
