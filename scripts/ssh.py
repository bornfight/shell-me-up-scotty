from os import system

print "Generating your public/private key pair. You'll use this for github & ssh connections"

email = raw_input("First, what is your @degordian.com email? I won't use it for anything shady, I promise ;)\n")

system("ssh-keygen -t rsa -b 4096 -C {0}".format(email))

# TODO: automail toniju izgenerirani public key

system("eval \"$(ssh-agent -s)\"")

with open("~/.ssh/config", "a") as ssh_config:
    ssh_config.write("Host *")
    ssh_config.write("  AddKeysToAgent yes")
    ssh_config.write("  UseKeychain yes")
    ssh_config.write("  IdentityFile ~/.ssh/id_rsa")

ssh_location = raw_input("Where did you save ssh key?\n")

system("ssh-add -K {0}".format(ssh_location))
