from os import system

system("brew tap homebrew/dupes")
system("brew tap homebrew/homebrew-php")

print "The coolest terminal out there. Get yourself a cool theme."
system("brew cask install iterm2")

print "The only way to work in a team is by using version control"
system("brew install git")
print "[Git] Ignoring filemode changes"
system("git config --global core.filemode false")
system("git config --add --global core.filemode false")

print "Java 4-Ever"
system("brew cask install java")

print "Mac text editor sucks big time, and there's no notepad++"
system("brew cask install textwrangler")

print "When were at ediots, you could use IDE for development, PHPStorm is a good choice"
system("brew cask install phpstorm")

print "You'll need a lot of browsers (meaning just two of them)"
system("brew cask install google-chrome firefox")

# TODO: I'd like more customizability with the aliases
# TODO: I think everyone wants more customizability with aliases
# TODO: Idea is to make bunch of "Do you want {type of alias} aliases (?)"

print "Setting some aliases for you. Check them out with 'less ~/bash_aliases'"
system("cp ./files/bash_aliases ~/bash_aliases")

print "Creating work and personal folders"
system("mkdir ~/work")
system("mkdir ~/personal")
