# _____________________________________________________________________________________________
# NEW COMPUTER SETUP 
0. Install brew https://brew.sh     # make sure to run command to setup links
1. curl https://raw.githubusercontent.com/alex-momotov/dotfiles/master/0_pre_install.sh | bash    # installs google drive, creates all dirs
2. login to google drive desktop app and set it to mirror files to ~/_drive (look up google password in bitwarden website, not extention)
3. bash ~/_docs/_projects/dotfiles/1_install.sh
4. Create sym links for openjdk installations (commands are in output of 1_install.sh).
5. Restart computer

# apple
- login to apple account
- fingerprint
- appearence - accent colours orange
- dock - on left side, put all apps on it
- dock - Minimise windows into application icon
- dock - turn off 'show recent applications in dock'
- dock - minimise windows using 'Scale Effect'
- trackpad - tap to click
- trackpad - natural scrolling - turn off
- accessibility - "Reduce Motion"
- keyboard > keyboard shortcuts > modifier keys > set control key to be left most
- Settings > Battery > Options > turn off "Slightly dim the display on battery"
- Lock Screen > Lock Screen settings > set everything to 2 hours

# vivaldi
- set as default browser. Settings > search 'default browser'
- Bitwarden extention. Configure it to not lock on computer lock and to autofil pages
- Login to Vivaldi & enable settings sync
- set it as default browser in System Preferences
- setup shortcuts - see below in this page

# forklift
- manually install and activate Forklift 3.5.8 from https://forklift.macupdate.com/app/mac/24467/forklift/old-versions
  (licence key is in bitwarden)
- view > 'show one pane'
- save favourite dirs on the left
- set iTerm as default terminal. Preferences > General > Default Terminal

# spectacle / rectangle
- idea: have capslock as your hyper key
- disable control+arrow key shortcuts used by Spectable under Settings > Keyboard > Shortcuts > Mission control 
- change shortcuts

# vscode
- might need to rerun the 1_install.sh commands to recreate symlinks and duti associations
- activate dracula theme and material icon theme from command palette
- To switch between running commands in integrated/external terminal, search 'Open Keyboard Shortcuts (JSON)' and switch up last statement:
  - integrated          workbench.action.terminal.runSelectedText
  - external terminal   run-external.iterm

# iterm
- preferences > general tab > 'Preferences' subtab > "Load preferences from a custom folder or URL" > Browse and select .../dotfiles/settings/iterm/iterm_settings/ dir > 'Save current settings to folder' > also select 'save changes': 'automatically'
- close iterm > git checkout settings/iterm/iterm_settings/com.googlecode.iterm2.plist

# intellij
'File' > 'Manage IDE Settings' > 'Import settings' > import the saved file
'File' > 'Manage IDE Settings' > 'Export settings' > save intellij_settings.zip in this repo

# pycharm
'File' > 'Manage IDE Settings' > 'Import settings' > import the saved file
'File' > 'Manage IDE Settings' > 'Export settings' > save pycharm_settings.zip in this repo

# git
- git config --global user.name Alex-Momotov
- git config --global user.email momotovalex@gmail.com
- mkdir ~/.ssh && cd ~/.ssh && ssh-keygen -t ed25519 -C "momotovalex@gmail.com"		# generate new ssh key, don't use passphrase
- touch ~/.ssh/config # then append following to ~/.ssh/config. Make sure to use correct private key filename
  Host *
    AddKeysToAgent yes
    IdentityFile ~/.ssh/key
- ssh-add -K ~/.ssh/key		# make sure to use correct private key filename
- Add the new key (public part) to your github account via the website > configure SSO > authorise all organisations

# git - access token authentication, for hub cli commands that use github API
- touch ~/.config/hub # then append the following to ~/.config/hub. Take github access token value from password manager
  --- 
  github.com: 
  - oauth_token: <GITHUB_ACCESS_TOKEN>
    user: Alex-Momotov

# _____________________________________________________________________________________________
# INFO
bash profile files
Sym links in ~/... point to files in  ~/_projects_my/dotfiles/settings/... for all the below scripts except .company_vars which is stored in ~/... as the only copy.
.bash_profile		  Sources .bashrc
.bashrc 			    Contains main config. Sources .sshrc, .custom_commands, .bash_vars_company
.sshrc				    Tool that copies content of .sshrc to a remote server when doing ssh. Sets command line prompt colour. "brew install sshrc"
.custom_commands	My own bash functions and utils.
.company_vars	    Sensitive company specific vars, the file is never checked into VSC.

# _____________________________________________________________________________________________
# SHORTCUTS 

# VsCode cli commands
code --list-extensions	# list extensions
code -a <folder>		# add folder or file to current vscode window

# VsCode shortcuts
shift + cmd + P 	# command pallete
shift + cmd + T		# terminal at current file
cmd + E				# extensions
cmd + R				# reveal file
cmd + S				# search

cmd + J 		# prettify JSON
control + J		# flatten selected JSON
cmd + L			# align columns of CSV

# VsCode snippets (expandable with Tab)
cel

# VsCode Python plugin (ms-python.python)
Python: Select Interpreter	# Switch between Python interpreters, versions, and environments.
Python: Configure Tests		# Select a test framework and configure it to display the Test Explorer.
Format Document				# Formats code using the provided formatter in the settings.json file.

To run a debugger:	go to python file, create breakpoint, on the upper bar click down arrow and select "Debug Python File"
To run file in terminal: same as above but just click the play button

# Vivaldi 
shift + cmd + P		# 'unpin tab' pin / unpin tab
shift + cmd + B		# 'panel toggle' toggle side panel arrow (in order to close persistent side panel thing)
cmd + B 		# 'bookmark panel' 

# IntelliJ IDEA
shift + cmd + G 	# Copies git reference to a file on selected file

# Slack 
cmd + k 		  # Search channel
cmd + shift + u   # Link url to a text

# _____________________________________________________________________________________________
