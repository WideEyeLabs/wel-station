dmg_package "BitTorrent Sync" do
  volumes_dir "BTSync"
  source "http://btsync.s3-website-us-east-1.amazonaws.com/BTSync.dmg"
  checksum "98a8a7a6aed21d173bf0e8b06d0ff30dcd807550837e41e72670affa8bdd71b6"
  owner WS_USER
  action :install
end
