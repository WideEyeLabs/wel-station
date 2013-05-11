unless File.exists?("/Applications/Spotify.app")

  remote_file "#{Chef::Config[:file_cache_path]}/spotify.zip" do
    source "http://download.spotify.com/SpotifyInstaller.zip"
    owner WS_USER
    checksum "5771c5300c2e8ca808c61a5a29505637d872e8d546b758361a6ca50cf2500bbb"
  end

  execute "unzip spotify" do
    command "unzip -o #{Chef::Config[:file_cache_path]}/spotify.zip -d #{Chef::Config[:file_cache_path]}/"
    user WS_USER
  end

  execute "copy spotify to /Applications" do
    command "#{Chef::Config[:file_cache_path]}/Install\ Spotify.app/Contents/MacOS/Install\ Spotify"
    user WS_USER
    group "admin"
  end

  ruby_block "test to see if Spotify.app was installed" do
    block do
      raise "Spotify.app was not installed" unless File.exists?("/Applications/Spotify.app")
    end
  end

end
