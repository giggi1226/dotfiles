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

brew cask install google-chrome
brew cask install iterm2
brew cask install visual-studio-code
brew cask install boostnote
brew cask install java
brew cask install dropbox
brew cask install alfred
brew cask install intellij-idea


if test ! $(which zsh)
then
  brew install zsh
  # Set zsh as your default shell
  chsh -s /bin/zsh
fi

brew install zsh-syntax-highlighting
brew install fzf
brew install bash-completion

