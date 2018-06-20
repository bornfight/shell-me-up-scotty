from os import system
import time

print "Starting..."
time.sleep(3)
print "Calibrating tachion emmiter polarity, sit back..."
time.sleep(3)

print "First we need to install homebrew"
print "Homebrew is a package manager that will help you keep all your apps neat and tidy"

system("/usr/bin/ruby -e \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)\"")
system("brew tap phinze/cask")
system("brew install brew-cask")

print "Creating ~/work folder"
system("mkdir -p ~/work")
print "Copying pull_repos shell script inside ~/work"
system("cp files/pull_repos.sh ~/work/pull_repos.sh")
print "Make it executable"
system("chmod +x ~/work/pull_repos.sh")
