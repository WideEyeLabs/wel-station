Chef::Log.warn "Please use wel-osx-apps::#{File.basename(__FILE__, '.rb')}"
include_recipe "wel-osx-apps::#{File.basename(__FILE__, '.rb')}"

# include_recipe "wel_station::ack"
# include_recipe "wel_station::tmux"
# include_recipe "wel_station::xquartz"

# brew "watch"
# brew "ssh-copy-id"
# brew "pstree"
# brew "tree"
# brew "wget"
