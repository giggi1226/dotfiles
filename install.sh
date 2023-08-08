source ./brew.sh

# Oh My ZSH/Users/gigi/dotfiles/install.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# NVM
nvm install node
nvm use node
npm install --global pure-prompt

source ./symlink.sh

chsh -s $(which zsh)
