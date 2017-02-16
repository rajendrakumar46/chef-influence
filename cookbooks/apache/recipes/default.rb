#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#installing apache package


package 'apache2' do
	pqckage_name 'httpd'
	action:install
end


service 'apache2' do
	service_name 'httpd'
	action [:start,:enable]

end
