#!/bin/sh
echo "Calibrating tachion emmiter polarity, sit back..."

######################
#The package managers#
######################
echo "Homebrew is a package manager that will help you keep all your apps neat and tidy"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap phinze/cask
brew install brew-cask

echo "The coolest new kid around, Composer. You'll be using this one for installing php plugins"
php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

#brew install npm #stavi da user moze izabrat zeli li ovo

################
#Work work work#
################
brew tap homebrew/dupes
brew tap homebrew/homebrew-php

echo "Getting your database stuff"
brew install mysql phpmyadmin

echo "The coolest terminal out there. Get yourself a cool theme."
brew cask install iterm2

echo "The only way to work in a team is by using version control"
brew install git

echo "Java 4-Ever"
brew cask install java

echo "Everyones favorite (S)FTP client"
brew cask install filezilla

echo "Mac text editor sucks big time, and there's no notepad++"
brew cask install textwrangler

echo "Vim is better than emacs. Deal with it"
brew install vim

echo "You'll need a lot of browsers"
brew cask install google-chrome firefox

echo "Htop for monitoring your mac resources"
brew install htop

echo "Setting some aliases for you. Check them out with 'less ~/.bash_aliases'"
cp .bash_aliases ~/.bash_aliases

#ToDo
#apache
#php7
#phpstorm
#add optional stuff that requres user input (with yes as default answer)
#izgeneriraj key za github
#izgeneriraj key za produkcijske servere
#clone all the things

echo "Calibration complete. Have a nice day."
