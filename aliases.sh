
export ANDROID_HOME=$HOME/Dev/SDKs/android-sdk-macosx
export ANDROID_NDK=$HOME/Dev/SDKs/android-sdk-macosx/ndk-r15c
export LOCAL_ANDROID_NDK_HOME=$ANDROID_NDK
export LOCAL_ANDROID_NDK_HOST_PLATFORM=darwin-x86_64
export MY_SCRIPTS=$HOME/.bin
export FUCHSIA_HOME=$HOME/dev/misc/fuchsia/.jiri_root/bin
export GOPATH=$HOME/.go
export GOBIN=$GOPATH/bin
export FLUTTER_HOME=$HOME/Dev/SDKs/flutter/bin
export CONDA_HOME=$HOME/anaconda3
export CONDA_BIN=$CONDA_HOME/bin

export PATH=$PATH:$ANDROID_HOME/build-tools/28.0.0:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_NDK:$FUCHSIA_HOME:$MY_SCRIPTS:$GOBIN:$FLUTTER_HOME:$CONDA_HOME:$CONDA_BIN

# aliases
alias rm='rm -i'
alias gw='./gradlew'
alias gw-refresh='gw --refresh dependencies'
alias jadx='/Users/afzal_najam/Scripts/jadx-0.7.1/bin/jadx-gui'
alias code="code-insiders"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rbenv/bin"

# export NVM_DIR="$HOME/.nvm"
# . "$NVM_DIR"/nvm.sh

# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(type __init_nvm)" = function ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
  function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    . "$NVM_DIR"/nvm.sh
    unset __node_commands
    unset -f __init_nvm
  }
  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi

# For building Fuchsia OS and AOSP
export USE_CCACHE=1

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/afzal_najam/.sdkman"
[[ -s "/Users/afzal_najam/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/afzal_najam/.sdkman/bin/sdkman-init.sh"

# Load rbenv automatically by appending
# the following to ~/.zshrc:

export RBENV_VERSION='2.5.1'

eval "$(rbenv init -)"
