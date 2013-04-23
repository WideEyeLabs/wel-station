include_recipe "wel-station::git"
brew "tmux"

remote_file "#{WS_HOME}/.tmux.conf" do
  source node["tmux_conf_file_url"]
  mode "0644"
end
