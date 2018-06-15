from os import system

print """
    Grabbing the source code from github\n
    But before we do that, you'll need to go to github.com and add your newly created ssh key to your GitHub account\n
    The details are here: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/\n
    When you're done with that, press any key...\n"""
raw_input()

print "OK, great! Now you need to ask Tony to add your GitHub account to the Degordian organization"
print "Press any key when you're in."
raw_input()

print "Clone all the things"

# change working directory to work for cloning into respective folders

system("cd ~/work")
system("git clone git@github.com:degordian/yapp-framework.git")
system("git clone git@github.com:degordian/yapp.git")
system("git clone git@github.com:degordian/dwp.git")

print "Good news, the cloning has completed!"

# revert to original directory
system("cd -")
