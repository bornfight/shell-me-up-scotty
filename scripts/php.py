from os import system

print "Try being php developer without php"
system("brew tap homebrew/php")
system("brew install php71 --with-httpd --with-webp3")
system("""
    brew install php71-ds php71-gmagick php71-igbinary
    php71-imagick php71-intl php71-libsodium php71-mcrypt php71-mongodb
    php71-opcache php71-pdo-dblib php71-pdo-pgsql php71-redis php71-xdebug
""")

print "Everybody knows apache follows php everywhere"
system("brew install httpd --with-http2 --with-privileged-ports")
system("brew services start httpd")

print "The coolest new kid around, Composer. You'll be using this one for installing php plugins"
system("php -r \"readfile('https://getcomposer.org/installer');\" > composer-setup.php")
system("php composer-setup.php")
system("php -r \"unlink('composer-setup.php');\"")
system("mv composer.phar /usr/local/bin/composer")

print "Vim is better than emacs. Deal with it"
system("brew install vim")

print "Htop for resource monitoring"
system("brew install htop")

print "Getting your database stuff"
system("brew install mariadb phpmyadmin")
system("brew services start mariadb")
