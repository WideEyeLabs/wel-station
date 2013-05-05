unless File.exists?("/Applications/Cloud.app")
 
  remote_file "#{Chef::Config[:file_cache_path]}/cloud.zip" do
    source "http://f.cl.ly.s3.amazonaws.com/builds/CloudApp1.5.4.zip"
    owner WS_USER
    checksum "e889fb4c6991584edacbf8dc56e3a24b135f33c3298fb1d0f6e60ab6a8a42705" # optional
  end
 
  execute "unzip cloud" do
    command "unzip -o #{Chef::Config[:file_cache_path]}/cloud.zip -d #{Chef::Config[:file_cache_path]}/"
    user WS_USER
  end
 
  execute "copy cloud to /Applications" do
    command "mv #{Chef::Config[:file_cache_path]}/Cloud.app #{Regexp.escape("/Applications/Cloud.app")}"
    user WS_USER
    group "admin"
  end
 
  ruby_block "test to see if Cloud.app was installed" do
    block do
      raise "Cloud.app was not installed" unless File.exists?("/Applications/Cloud.app")
    end
  end
 
end
