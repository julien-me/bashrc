source /usr/share/defaults/etc/profile

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

### AVR TOOLCHAIN TOOLS ###
#export ARDUINO_DIR=/home/julien/local/arduino/arduino-1.8.5
#export ARDMK_DIR=/home/julien/local/Arduino-Makefile
#export AVR_TOOLS_DIR=/home/julien/local/avr

### PYTHON PACKAGES PATH ###
#export PYTHONPATH=$PYTHONPATH:/usr/lib/python3.5/site-packages/

### ARM GCC TOOL CHAIN ###
#export PATH=$PATH:~/local/gcc-arm-none-eabi-6-2017-q2-update/bin

### STLINK TOOLS ###
#export PATH=$PATH:~/local/stlink/build/Release

### CPPUTEST conf ###
#export CPPUTEST_HOME=~/tools/cpputest

### RUST conf ###
export PATH="$HOME/.cargo/bin:$PATH"
#export RUSTFLAGS="-C target-cpu=native"

### FZF conf ###
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPTS='--height=70% --preview="cat {}" --preview-window=right:60%:wrap'
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'

#ZEPHYR_TOOLCHAIN_VARIANT=zephyr
#ZEPHYR_SDK_INSTALL_DIR=$HOME/workspace/zephyr-sdk-0.10.0

export PATH=$PATH:~/.local/bin

export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This doesn't load nmp and so doesn't slow down bash
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export pyenv
export PATH="/home/julien/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias ll="ls -alh"

# Unlimited history
HISTSIZE=
HISTFILESIZE=

# Add snap to PATH
export PATH=$PATH:/snap/bin

# Add todo.sh utility (a todo program) to PATH
export PATH=$PATH:/home/julien/local/todo.txt_cli-2.12.0/
alias todo="todo.sh"

# Default editor
export EDITOR=vim

#Add Dart to path
export PATH="$PATH:/usr/lib/dart/bin"

# Add android studio
export PATH="$PATH:/home/julien/local/android-studio/bin"
