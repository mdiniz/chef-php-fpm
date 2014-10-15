default[:php_fpm][:pid_file]                            =   "/var/run/php5-fpm.pid"
                                                        
default[:php_fpm][:pools]                               =   ['www']

#PHP FPM php.ini settings
default[:php_fpm][:php_ini][:memory_limit]              =   '128M'
default[:php_fpm][:php_ini][:max_execution_time]        =   30
default[:php_fpm][:php_ini][:upload_max_filesize]       =   '2M'
default[:php_fpm][:php_ini][:post_max_size]             =   '8M'
default[:php_fpm][:php_ini][:realpath_cache_size]       =   nil
default[:php_fpm][:php_ini][:realpath_cache_ttl]        =   nil
default[:php_fpm][:php_ini][:session][:save_handler]    =   'redis'
default[:php_fpm][:php_ini][:session][:save_path]       =   'tcp://localhost:6379?timeout=5'
default[:php_fpm][:php_ini][:session][:name]            =   'sid'
default[:php_fpm][:php_ini][:session][:gc_probability]  =   0
default[:php_fpm][:php_ini][:session][:gc_divisor]      =   1000
default[:php_fpm][:php_ini][:session][:gc_maxlifetime]  =   28800  # 8 hours
default[:php_fpm][:php_ini][:session][:entropy_length]  =   128
default[:php_fpm][:php_ini][:session][:hash_function]   =   'sha512'
default[:php_fpm][:php_ini][:session][:hash_bits_per_character] = 5


#Tunable settings for pools. This should be cloned for each pool listed in default[:php_fpm][:pools]
#Nil means default php-fpm settings will be used
default[:php_fpm][:tunable][:socket]                    =   "/var/run/php5-fpm-www.sock"
default[:php_fpm][:tunable][:port]                      =   9000
default[:php_fpm][:tunable][:listen_to]                 =   'socket'
default[:php_fpm][:tunable][:user]                      =   "www-data"
default[:php_fpm][:tunable][:group]                     =   "www-data"
default[:php_fpm][:tunable][:mode]                      =   "0660"

default[:php_fpm][:tunable][:listen_backlog]            =   nil
default[:php_fpm][:tunable][:allowed_clients]           =   nil
default[:php_fpm][:tunable][:process_manager_mode]      =   'dynamic'

default[:php_fpm][:tunable][:max_children]              =   8
default[:php_fpm][:tunable][:start_servers]             =   4
default[:php_fpm][:tunable][:min_spare_servers]         =   2
default[:php_fpm][:tunable][:max_spare_servers]         =   4

default[:php_fpm][:tunable][:process_idle_timeout]      =   nil
default[:php_fpm][:tunable][:max_requests]              =   nil

default[:php_fpm][:tunable][:status_path]               =   nil
default[:php_fpm][:tunable][:ping_path]                 =   nil
default[:php_fpm][:tunable][:ping_response]             =   nil

default[:php_fpm][:tunable][:access_log]                =   nil
default[:php_fpm][:tunable][:access_log_format]         =   nil
default[:php_fpm][:tunable][:slow_log]                  =   nil

default[:php_fpm][:tunable][:request_slow_log_timeout]  =   nil
default[:php_fpm][:tunable][:request_terminate_timeout] =   nil

default[:php_fpm][:tunable][:rlimit_files]              =   nil
default[:php_fpm][:tunable][:rlimit_core]               =   nil

default[:php_fpm][:tunable][:chroot]                    =   nil
default[:php_fpm][:tunable][:chdir]                     =   '/'

default[:php_fpm][:tunable][:catch_workers_output]      =   nil
default[:php_fpm][:tunable][:limit_extensions]          =   nil

default[:php_fpm][:tunable][:env_variables]             =   nil #If using this variable, a Hash is expected with values in the format of env variable => variable value.
default[:php_fpm][:tunable][:limit_extensions]          =   nil

default[:php_fpm]['www'] = default[:php_fpm][:tunable].dup # shallow copy