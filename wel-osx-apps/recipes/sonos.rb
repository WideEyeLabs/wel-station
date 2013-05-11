dmg_package "Sonos" do
  volumes_dir "Sonos"
  owner WS_USER
  source "http://update.sonos.com/software/mac/mdcr/SonosDesktopController40.dmg"
  checksum "d9b722d9287e01338e5e291f22ec0ff5c5203e011dd4fb56cba8e5f8e4849402"
  action :install
end
