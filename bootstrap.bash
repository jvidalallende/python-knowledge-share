#!/bin/bash
set -e

function install_packages {
    sudo apt-get update -y
    sudo apt-get install -y \
        git \
        vim-nox \
        tmux \
        emacs \
        pylint \
        python-minimal \
        python3
}

# Execution section
install_packages
