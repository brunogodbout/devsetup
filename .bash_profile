export BASH_SILENCE_DEPRECATION_WARNING=1

# set environment variables depending on OS
if [ "$(uname -s)" = "Darwin" ]; then
    # macOS
    BREW_CMD="/usr/local/bin/brew"
    export SSH_AUTH_SOCK="$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
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

