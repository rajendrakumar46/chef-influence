#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#installing apache package
if node['platform_family'] =="rhel"
	package ='httpd'
elsif node['platform_family'] =='debian'
	package="apache2"
end

package 'apache2' do
	pqckage_name package
	action:install
end


service 'apache2' do
	service_name 'httpd'
	action [:start,:enable]

end



