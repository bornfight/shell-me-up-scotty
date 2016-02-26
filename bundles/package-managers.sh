######################
#The package managers#
######################
echo "Homebrew is a package manager that will help you keep all your apps neat and tidy"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap phinze/cask
brew install brew-cask
