= Dotfiles

Personal config files

= Installation

Clone the repo and run the setup script.

    git clone git@github.com:thinkerbot/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ./setup

By default the setup script expects dotfiles to exist at `~/.dotfiles` and will
checkout linked repos into `.dotfiles/repos`.  To change these locations,
provide them as arguments:

    # setup DOTFILES_DIR REPOS_DIR
    ./setup ~/.dotfiles ~/Documents/Repos
