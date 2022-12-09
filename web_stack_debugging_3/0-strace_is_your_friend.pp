# Puppet fixing
exec { 'config filename fix':
  command => 'sed -i "s/class-wp-locale.phpp/class-wp-locale.php/g" /var/www/html/wp-settings.php',
  provide => 'shell'
}
