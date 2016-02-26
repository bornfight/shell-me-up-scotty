echo "Grabbing the source code from github"
echo "But before we do that, you'll need to go to github.com and add your newly created ssh key to your GitHub account"
echo "The details are here: https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/"
echo "When you're done with that, press any key"
read foo
echo "OK, great! Now you need to ask Tony to add your GitHub account to the Degordian organization"
echo "Press any key when your in"
read foo

echo "Clone all the things"
git clone git@github.com:degordian/yapp-framework.git ~/work
git clone git@github.com:degordian/yapp.git ~/work
git clone git@github.com:degordian/iframework.git ~/work
git clone git@github.com:degordian/iapp.git ~/work
git clone git@github.com:degordian/dwp.git ~/work
echo "Good news, the cloning has completed!"
