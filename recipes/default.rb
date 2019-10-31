#
# Cookbook:: python_recipe
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package 'python-pip' do
  options '--allow-unauthenticated'
  action :install
end

package 'python' do
  options '--allow-unauthenticated'
  action :install
end

execute 'install requests==2.3.0' do
  command 'pip install requests==2.3.0'
end
