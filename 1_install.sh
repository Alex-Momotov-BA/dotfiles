# sym links for _learning and personal _projects
ln -s ~/_docs/_learning/ ~/_learning
ln -s ~/_docs/_projects/ ~/_my_projects

# mac settings
defaults write -g InitialKeyRepeat -int 15 # Delay before key repeat, default min is 15
defaults write -g KeyRepeat -int 1 # Key repeat speed
defaults write -g com.apple.trackpad.scaling -float 20.0 # Trackpad speed
defaults write com.apple.finder QuitMenuItem -bool true # Able to quit Finder

# install software
brew install --cask zed
brew install --cask vivaldi
brew install --cask iterm2
brew install --cask intellij-idea-ce
brew install --cask pycharm-ce
brew install --cask postman
brew install --cask rectangle
brew install nano
brew install highlight		# highlighting for nano
brew install git
brew install hub
brew install duti

brew install gradle
brew install maven
brew install openjdk@11

brew install helm
brew install helmfile
brew install htop
brew install jq
brew install yq

brew install kafka
brew install kafkacat
brew install mysql
brew install tfenv
brew install docker

brew install nmap

brew install pyenv
brew install pipenv

brew install gsed
brew install wget
brew install ranger
brew install sshrc
brew install tree
brew install watch

# nano highlighting 	(if doesn't work follow instructions at https://github.com/scopatz/nanorc)
wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh

# sshrc
wget https://raw.githubusercontent.com/cdown/sshrc/master/sshrc
chmod +x sshrc
sudo mv sshrc /usr/local/bin/

# Duti file associations
bash ~/_docs/_projects/dotfiles/settings/duti_associations.sh

# zed recreate links (registry extensions auto-install via auto_install_extensions in settings.json;
# the txtcustom dev extension needs the one-time manual install step — see README)
mkdir -p ~/.config/zed
rm ~/.config/zed/settings.json
rm ~/.config/zed/keymap.json
rm ~/.config/zed/tasks.json
rm -rf ~/.config/zed/snippets
rm -rf ~/.config/zed/dev-extensions
ln -s ~/_docs/_projects/dotfiles/settings/zed/settings.json ~/.config/zed/settings.json
ln -s ~/_docs/_projects/dotfiles/settings/zed/keymap.json ~/.config/zed/keymap.json
ln -s ~/_docs/_projects/dotfiles/settings/zed/tasks.json ~/.config/zed/tasks.json
ln -s ~/_docs/_projects/dotfiles/settings/zed/snippets ~/.config/zed/snippets
ln -s ~/_docs/_projects/dotfiles/settings/zed/dev-extensions ~/.config/zed/dev-extensions

# bashrc recreate sym links
rm -rf ~/.bashrc
rm -rf ~/.bash_profile
rm -rf ~/.custom_commands
rm -rf ~/.sshrc
rm -rf ~/.vimrc
ln -s ~/_docs/_projects/dotfiles/settings/.bashrc ~/.bashrc
ln -s ~/_docs/_projects/dotfiles/settings/.bash_profile ~/.bash_profile
ln -s ~/_docs/_projects/dotfiles/settings/.custom_commands ~/.custom_commands
ln -s ~/_docs/_projects/dotfiles/settings/.sshrc ~/.sshrc
ln -s ~/_docs/_projects/dotfiles/settings/.vimrc ~/.vimrc
