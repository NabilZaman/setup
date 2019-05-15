# Does some macOS developer toolsy things
xcode-select --install

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew cask
brew install caskroom/cask/brew-cask

brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk # latest java
brew cask install adoptopenjdk8 # java8
brew cask install adoptopenjdk9 # java9

brew install scala
brew install sbt

# Install python 2 AND 3 and setup symlinks so you can differentiate them with python2/3 and pip2/3
brew install python@2 python

# Update pip(s)
pip2 install --upgrade pip setuptools
pip3 install --upgrade pip setuptools

# Install some gnu utilities that don't ship with macOS
brew install coreutils

brew install git
brew install terraform
brew install wget

# git configuration
git config --global user.name Nabil Zaman
git config --global user.email nabilzaman1@gmail.com
git config --global push.default current
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.prune "fetch --prune"

# Download the bash completion script for git, this must be sourced in .bashrc
wget -O .git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
