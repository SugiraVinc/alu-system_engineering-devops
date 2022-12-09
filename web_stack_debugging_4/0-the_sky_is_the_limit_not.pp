# testing how well the server runs
service { 'nginx':
  ensure => running,
}

exec { 'increase ULIMIT':
  # changing user limit
  command => 'sed -i "s/ULIMIT=\"-n 15\"-n 4000\"/g" /etc/default/nginx',
  provider => 'shell',
  # nginx restart
  notify => Service['nginx']
}
