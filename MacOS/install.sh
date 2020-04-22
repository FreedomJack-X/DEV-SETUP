# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Terminal Setup
# Download iTerm https://www.iterm2.com/downloads.html
brew cask install iterm2

# Install zsh
# https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
brew install zsh

# Change default shell to zsh
chsh -s /bin/zsh

# Install Oh My Zsh
# Follow https://gist.github.com/kevin-smets/8568070
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Then edit your ~/.zshrc and set ZSH_THEME="powerlevel10k/powerlevel10k".

# Also add the following: POWERLEVEL9K_MODE="awesome-patched"

# Powerlevel10k offers a whole lot more and is extremely configurable, best is to check its project page.

# Simply run p10k configure to discover all options, which are plentiful.
p10k configure


# Install zsh plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Java
brew tap adoptopenjdk/openjdk
brew search jdk
brew cask install adoptopenjdk8

# Install Python
brew install python

# Install VSCodium
brew cask install vscodium

# Install Ultimate Vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
