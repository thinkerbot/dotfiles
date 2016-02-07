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

    # ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
    ln -s "$DOTFILES_HOME/files/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
    ln -s "$DOTFILES_HOME/files/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings"

    mkdir -p "$HOME/.linecook"
    ln -s "$DOTFILES_HOME/recipes" "$HOME/.linecook/recipes"

    brew install bash-completion
    