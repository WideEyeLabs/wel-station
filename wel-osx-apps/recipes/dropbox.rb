dmg_package "Dropbox" do
  volumes_dir "Dropbox Installer"
  source "https://dl.dropboxusercontent.com/u/17/Dropbox%202.0.8.dmg"
  checksum "9c3911abbab2dd70f67f8a81ce082cbdeeeff2dc359006189785a09dadaaa654"
  action :install
  owner WS_USER
end
