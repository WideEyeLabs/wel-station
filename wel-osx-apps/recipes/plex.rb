unless File.exists?("/Applications/Plex.app")
 
  remote_file "#{Chef::Config[:file_cache_path]}/plex.zip" do
    source "http://plex.r.worldssl.net/plex-laika/0.9.5.4/Plex-0.9.5.4-973998f.zip"
    owner WS_USER
    checksum "2d8265a2922d48445beecc7953a3490cf6b5f874943311251bd91faaeb3036d4" # optional
  end
 
  execute "unzip plex" do
    command "unzip -o #{Chef::Config[:file_cache_path]}/plex.zip -d #{Chef::Config[:file_cache_path]}/"
    user WS_USER
  end
 
  execute "copy plex to /Applications" do
    command "mv #{Chef::Config[:file_cache_path]}/Plex.app #{Regexp.escape("/Applications/Plex.app")}"
    user WS_USER
    group "admin"
  end
 
  ruby_block "test to see if Plex.app was installed" do
    block do
      raise "Plex.app was not installed" unless File.exists?("/Applications/Plex.app")
    end
  end
 
end
