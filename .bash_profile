export BASH_SILENCE_DEPRECATION_WARNING=1

# set BREW_CMD depending on OS
if [ "$(uname -s)" = "Darwin" ]; then
    # macOS
    BREW_CMD="/usr/local/bin/brew"
else
    # assume Linux
    BREW_CMD="/home/linuxbrew/.linuxbrew/bin/brew"
fi

eval "$($BREW_CMD shellenv bash)"

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

