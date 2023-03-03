#!/usr/bin/env bash
if test ! $(which brew)
then
    echo "Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
# echo $(which brew)
brew update

brew upgrade

brew tap caskroom/cask
brew tap caskroom/versions

brew install --cask google-chrome
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask obsidian
brew install --cask java
brew install --cask alfred
brew install --cask intellij-idea
brew install --cask webstorm
brew install --cask postman


if test ! $(which zsh)
then
  brew install zsh
  # Set zsh as your default shell
  chsh -s /bin/zsh
fi

brew install zsh-syntax-highlighting
brew install fzf
brew install bash-completion
brew install nginx
brew install nvm

mkdir ~/.nvm

