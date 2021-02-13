set -e

# install homebrew
which brew || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install zsh theme
git clone https://github.com/geometry-zsh/geometry.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/geometry

# install neovim
brew install neovim

# install diff-so-fancy
brew install diff-so-fancy

# release the kraken
(
  cd dotfiles
  for dotfile in .*; do
    cp -r $dotfile ~/
  done
)
