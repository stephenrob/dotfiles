#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install Ruby and Rails
rbenv init
rbenv install 2.7.0
rbenv global 2.7.0
rbenv rehash
gem install rails -v 6.0.2.1
rbenv rehash

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
nvm install node

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set OS X preferences
# We will run this last because this will reload the shell
# source .macos
