#!/bin/bash

from_repo(){
    local PREFIX="https://raw.githubusercontent.com"
    local ORG="$1"
    local REPO="$2"
    local BRANCH="$3"
    local FPATH="$4"
    local URL="${PREFIX}/${ORG}/${REPO}/${BRANCH}/${FPATH}"
    sh -c "$(curl -LsSf ${URL})"
}
from_repo "raccl" "sudoers" "main" "tools/install.sh" || true
from_repo "raccl" "packages" "ubuntu" "install.sh"
from_repo "raccl" "agnoster-zsh-theme" "master" "tools/install.sh"