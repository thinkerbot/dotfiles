# Dotfiles

Personal config files

## Installation

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

Editors

    cat - >> "$HOME/.vimrc" <<DOC
    source $DOTFILES_HOME/files/vimrc
    DOC

    # ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
    ln -s "$DOTFILES_HOME/files/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
    ln -s "$DOTFILES_HOME/files/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings"

Git

    git config --global user.name "Simon Chiang"
    git config --global user.email "simon.a.chiang@gmail.com"
    git config --global core.excludesfile "$HOME/.gitignore_global"
    ln -s "$DOTFILES_HOME/files/gitignore_global" "$HOME/.gitignore_global"

Tools

    brew install bash-completion
    brew install jq

    brew tap goodlittlescript/homebrew-gls
    brew install ts

    # mkdir -p "$HOME/.linecook"
    # ln -s "$DOTFILES_HOME/recipes" "$HOME/.linecook/recipes"

Ruby

    brew install rbenv readline
    rbenv install -l  # pick a version

    version="2.3.0"
    RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)" rbenv install "$version"
    printf "%s\n" "$version" > ~/.rbenv/version

    # --no-rdoc --no-ri
    printf "%s\n" "gem: --no-document" > ~/.gemrc

    cat > ~/.irbrc <<DOC
    unless defined? IRBRC_LOADED
      require 'irb/completion'
      require 'irb/ext/save-history'
      IRB.conf[:SAVE_HISTORY] = 3000
      IRB.conf[:HISTORY_FILE] = "~/.irb_history"
      IRBRC_LOADED=true
    end
    DOC
