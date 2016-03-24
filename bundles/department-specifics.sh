source bundles/includes/main.sh
if choice "Are you a PHP developer?"; then
  sh bundles/includes/php-dev.sh
fi;

if choice "Are you a frontend developer?"; then
  sh bundles/includes/frontend-dev.sh
fi;
