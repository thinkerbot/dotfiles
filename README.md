= Dotfiles

Personal config files

= Installation

Clone the repo

    export DOTFILES_HOME="$HOME/.dotfiles"
    git clone git@github.com:thinkerbot/dotfiles.git "$DOTFILES_HOME"
    cd ~/.dotfiles

Installation:

    cat - >> "$HOME/.bash_profile" <<DOC
    # dotfiles
    export DOTFILES_HOME="$DOTFILES_HOME"
    source "\$DOTFILES_HOME/files/bash_profile"
    DOC

    cat - >> "$HOME/.vimrc" <<DOC
    source $DOTFILES_HOME/files/vimrc
    DOC
