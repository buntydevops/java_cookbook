#
# Cookbook:: dev_jdk_install
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# Create a Directory
directory '/opt/wagapp' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
  end
  
#Download the Java Installer Package From Source
  remote_file '/opt/wagapp/jdk-8u144-linux-x64.tar.gz' do
     source 'https://s3.amazonaws.com/asianitt.com/jdk-8u144-linux-x64.tar.gz'
     
  end
  #Extract The Java Package
  execute 'tar' do
  cwd '/opt/wagapp'
  command 'tar -xvzf jdk-8u144-linux-x64.tar.gz'
  end
#Remote the Installer Package
remote_file '/opt/wagapp/jdk-8u144-linux-x64.tar.gz' do
   action :delete
end

   


