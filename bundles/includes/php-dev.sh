echo "The coolest new kid around, Composer. You'll be using this one for installing php plugins"
php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

echo "Vim is better than emacs. Deal with it"
brew install vim

echo "Htop for resource monitoring"
brew install htop
