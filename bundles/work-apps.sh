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

echo "You'll need a lot of browsers"
brew cask install google-chrome firefox

#ToDo I'd like more customizability with the aliases
echo "Setting some aliases for you. Check them out with 'less ~/.bash_aliases'"
cp bundles/includes/bash_aliases ~/.bash_aliases

echo "Creating work and personal folders"
mkdir ~/work
mkdir ~/personal
