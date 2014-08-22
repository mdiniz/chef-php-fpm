package "php5-fpm"

service "php5-fpm" do
  provider Chef::Provider::Service::Upstart
  action    [:enable, :start]
  supports  [:start, :restart, :reload, :stop]
end

template "/etc/php5/fpm/php.ini" do
  source "php.ini.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :restart, resources(:service => "php5-fpm"), :immediately
end

node[:php_fpm][:pools].each do |pool_name|
  template "/etc/php5/fpm/pool.d/#{pool_name}.conf" do
    source "www.conf.erb"
    owner "root"
    group "root"
    mode 0644
    notifies :restart, resources(:service => "php5-fpm"), :immediately
    variables({
      :pool_name => pool_name
    })
  end
end
