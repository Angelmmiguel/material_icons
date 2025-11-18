#!/usr/bin/env bash

# Set the gem configuration
echo "gem: --no-document --user-install" > ~/.gemrc
echo 'export PATH="$(ruby -e "puts Gem.user_dir")/bin:$PATH"' >> ~/.profile

# Reload
source ~/.profile

# Install Bundler
gem install bundler
bundle config set --global path $HOME/.bundle