package 'tree' do

	action :install
end

package 'ntp' do
	action :install
end

package 'vim-enhanced'
package 'nano'

package 'git' do
	action :install
end

file 'etc/motd' do
	content 'Property of....Rob\n'
	owner 'root'
	group 'root'
end

service 'ntpd' do
	action [ :enable, :start ]
end
