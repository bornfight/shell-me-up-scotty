## SERVERS
alias truba='ssh apps@truba.interaktivni-studio.com'
alias deghq='ssh apps@deghq.com'
alias drombulja='ssh root@drombulja.interaktivni-studio.com'

## SYSTEM STUFF
alias phpini='sudo vim /usr/local/etc/php/7.0/php.ini'
alias hosts='sudo vim /private/etc/hosts'
alias httpdconf='sudo vim /usr/local/etc/apache2/2.4/httpd.conf'
alias vhosts='sudo vim /usr/local/etc/apache2/2.4/extra/httpd-vhosts.conf'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ae='vim ~/.bash_aliases' #alias edit
alias ar='. ~/.bash_aliases' #alias reload
alias b='cd -'
alias fp='ps aux | grep '

# mysql connect
alias mysql='/usr/local/bin/mysql -uroot -p'

## WORK FOLDER STUFF
alias home='cd ~/'
alias work='cd ~/work/'
alias moje='cd ~/personal/'
alias iapp='cd ~/work/iapp/'
alias yapp='cd ~/work/yapp/'
alias www='cd ~/work/public_html/'
alias dwp='cd ~/work/dwp/'
alias yfw='cd ~/work/yapp-framework/'
alias yiicore='cd ~/work/yapp-framework/vendor/yiisoft/yii2/'

## REGULARS
alias flushdns='sudo discoveryutil udnsflushcaches'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias apacherestart='sudo httpd -k restart'
alias memcached-start='memcached -I2m -d start'
alias ll='ls -al'

## OPEN FILE WITH TEXTWRANGLER
function textWranglerOpen() {
	open -a TextWrangler $1
}
alias edit=textWranglerOpen
