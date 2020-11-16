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

#parse_git_branch() {
#	     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#     }
#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export PATH=$PATH:~/.local/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export pyenv
export PATH="/home/julien/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias ll="ls -alh"
