maintainer       "Sebastian Johnsson"
maintainer_email "sebastian@agiley.se"
license          "MIT"
description      "Installs and configures PHP-FPM."
version          "0.1"

attribute 'php_fpm/pid_file', 
  :description  =>  'The location of the php-fpm pid-file.',
  :required     =>  "recommended"

attribute 'php_fpm/socket',
  :description  =>  'The location of the php-fpm socket-file.',
  :required     =>  "recommended"

attribute 'php_fpm/port',
  :description  =>  'The port php-fpm should run on.',
  :required     =>  "recommended"

attribute 'php_fpm/listen_to',
  :description  =>  'What php-fpm should listen to - either the specified socket or the specified port.',
  :required     =>  "recommended"

attribute 'php_fpm/user',
  :description  =>  'Which user php-fpm should be run under (as well as the owner of the socket-file).',
  :required     =>  "recommended"

attribute 'php_fpm/group',
  :description  =>  'Which group php-fpm should be run under (as well as the group owning the socket-file).',
  :required     =>  "recommended"

attribute 'php_fpm/mode',
  :description  =>  'Which file permissions the socket-file should have.',
  :required     =>  "recommended"

attribute 'php_fpm/pools',
  :description  =>  'A list of PHP FPM pool names.',
  :required     =>  "recommended"

attribute 'php_fpm/php_ini',
  :description  =>  'Various options to tune PHP FPMs php.ini-file.',
  :required     =>  "recommended"

attribute 'php_fpm/tunable',
  :description  =>  'Various tunable options to customize and optimize PHP FPM.',
  :required     =>  "recommended"

