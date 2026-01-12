# sym links for _learning and personal _projects
ln -s ~/_docs/_learning/ ~/_learning
ln -s ~/_docs/_projects/ ~/_my_projects

# mac settings
defaults write -g InitialKeyRepeat -int 15 # Delay before key repeat, default min is 15
defaults write -g KeyRepeat -int 1 # Key repeat speed
defaults write -g com.apple.trackpad.scaling -float 20.0 # Trackpad speed
defaults write com.apple.finder QuitMenuItem -bool true # Able to quit Finder

# install software
brew install --cask visual-studio-code
brew install --cask vivaldi
brew install --cask iterm2
brew install --cask intellij-idea-ce
brew install --cask pycharm-ce
brew install --cask postman
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

# vscode recreate links
rm ~/Library/Application\ Support/Code/User/settings.json
rm ~/Library/Application\ Support/Code/User/keybindings.json
rm -rf ~/Library/Application\ Support/Code/User/snippets
ln ~/_docs/_projects/dotfiles/settings/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln ~/_docs/_projects/dotfiles/settings/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/_docs/_projects/dotfiles/settings/vscode/snippets/ ~/Library/Application\ Support/Code/User/

# vscode extentions
code --install-extension tomoki1207.pdf
code --install-extension mohsen1.prettify-json
code --install-extension PKief.material-icon-theme
code --install-extension rokoroku.vscode-theme-darcula
code --install-extension mechatroner.rainbow-csv
code --install-extension nachocab.run-external

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
