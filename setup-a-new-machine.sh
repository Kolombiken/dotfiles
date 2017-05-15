# copy paste this file in bit by bit.
# don't run it.
  echo "do not run this script in one go. hit ctrl-c NOW"
  read -n 1


##############################################################################################################
###  backup old machine's key items

mkdir -p ~/migration/home
cd ~/migration

# what is worth reinstalling?
brew leaves      		> brew-list.txt    # all top-level brew installs
brew cask list 			> cask-list.txt
npm list -g --depth=0 	> npm-g-list.txt


# then compare brew-list to what's in `brew.sh`
#   comm <(sort brew-list.txt) <(sort brew.sh-cleaned-up)

# let's hold on to these

cp ~/.extra ~/migration/home
cp ~/.z ~/migration/home

cp -R ~/.ssh ~/migration/home
cp -R ~/.gnupg ~/migration/home

cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration  # wifi

cp -R ~/Library/Services ~/migration # automator stuff

cp -R ~/Documents ~/migration

cp ~/.gitconfig.local ~/migration

cp ~/.z ~/migration # z history file.


### end of old machine backup
##########################################################################################################



##########################################################################################################
### XCode Command Line Tools
#      thx https://github.com/alrra/dotfiles/blob/ff123ca9b9b/os/os_x/installs/install_xcode.sh

if ! xcode-select --print-path &> /dev/null; then

    # Prompt user to install the XCode Command Line Tools
    xcode-select --install &> /dev/null

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until the XCode Command Line Tools are installed
    until xcode-select --print-path &> /dev/null; do
        sleep 5
    done

    print_result $? 'Install XCode Command Line Tools'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Point the `xcode-select` developer directory to
    # the appropriate directory from within `Xcode.app`
    # https://github.com/alrra/dotfiles/issues/13

    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
    print_result $? 'Make "xcode-select" developer directory point to Xcode'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Prompt user to agree to the terms of the Xcode license
    # https://github.com/alrra/dotfiles/issues/10

    sudo xcodebuild -license
    print_result $? 'Agree with the XCode Command Line Tools licence'

fi
###
##############################################################################################################



##############################################################################################################
### homebrew!

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install all the things
sh brew.sh
sh brew-cask.sh

### end of homebrew
##############################################################################################################


##############################################################################################################
### install of common things
###

# Type `git open` to open the GitHub page or website for a repository.
npm install -g git-open

# fancy listing of recent branches
npm install -g git-recent

# better git diffs
npm install -g diff-so-fancy

# trash as the safe `rm` alternative
npm install --global trash-cli

# lint js-things
npm install -g eslint

# cli for optimizing images
npm install -g imageoptim-cli

# tiny care terminal - a little dashboard
npm install -g tiny-care-terminal
npm install -g git-standup

# install better nanorc config
# https://github.com/scopatz/nanorc
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

# github.com/rupa/z   - it's the new j (or jump-location I guess?)
git clone https://github.com/rupa/z.git ~/code/z
# consider reusing your current .z file if possible. it's painful to rebuild :)
# z is hooked up in .bash_profile

# install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# install all the IE vms
# https://github.com/xdissent/ievms/
curl -s https://raw.githubusercontent.com/xdissent/ievms/master/ievms.sh | bash

##############################################################################################################
### remaining configuration
###

# go read mathias, paulmillr, gf3, alraa's dotfiles to see what's worth stealing.

# prezto and antigen communties also have great stuff
#   github.com/sorin-ionescu/prezto/blob/master/modules/utility/init.zsh

# set up macOS defaults
#   maybe something else in here https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh
sh .macos

# setup and run Rescuetime!

###
##########################################################################################################



##########################################################################################################
### symlinks to link dotfiles into ~/
###

#   move git credentials into ~/.gitconfig.local    	http://stackoverflow.com/a/13615531/89484
#   now .gitconfig can be shared across all machines and only the .local changes

# symlink it up!

sh symlink-setup.sh

# add manual symlink for .ssh/config

###
##############################################################################################################
