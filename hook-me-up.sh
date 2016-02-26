#!/bin/sh

function choice {
  echo $1
  select yn in "Yes" "No"; do
    case $yn in
      Yes ) return 0;; #0 is true in bash
      No ) return 1;;
    esac
  done
}

echo "Calibrating tachion emmiter polarity, sit back..."

######################
#The package managers#
######################
echo "Homebrew is a package manager that will help you keep all your apps neat and tidy"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap phinze/cask
brew install brew-cask

################
#Work work work#
################
if choice "Are you a PHP developer?"; then
  sh ./includes/php-dev.sh
fi;

if choice "Are you a frontend developer?"; then
  sh ./includes/frontned-dev.sh
fi;

#ToDo includes for other departments

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

echo "You'll need a lot of browsers"
brew cask install google-chrome firefox

#ToDo I'd like more customizability with the aliases
echo "Setting some aliases for you. Check them out with 'less ~/.bash_aliases'"
cp .bash_aliases ~/.bash_aliases

echo "Creating work and personal folders"
mkdir ~/work
mkdir ~/personal

#ToDo
#apache (hosts + vhosts)
#php7
#phpstorm
#izgeneriraj key za github
#izgeneriraj key za produkcijske servere
#clone all the things

echo "Calibration complete. Have a nice day."
