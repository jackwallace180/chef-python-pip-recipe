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
