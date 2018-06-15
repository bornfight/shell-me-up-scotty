from os import system

print "Generating your public/private key pair. You'll use this for github & ssh connections"

email = raw_input("First, what is your @degordian.com email? I won't use it for anything shady, I promise ;)\n")

print("Okay, generating your key....")

ssh_location = "~/.ssh/github_rsa"

system("ssh-keygen -t rsa -b 4096 -f {0} -C {1}".format(ssh_location, email))

# TODO: automail toniju izgenerirani public key

system("eval \"$(ssh-agent -s)\"")

with open("~/.ssh/config", "w+") as ssh_config:
    ssh_config.write("Host *")
    ssh_config.write("  AddKeysToAgent yes")
    ssh_config.write("  UseKeychain yes")
    ssh_config.write("  IdentityFile ~/.ssh/id_rsa")
    ssh_config.close()


system("ssh-add -K {0}".format(ssh_location))

system("chmod 600 {0}; chmod 600 {0}".format(ssh_location))

print("Finished generating your key!")
