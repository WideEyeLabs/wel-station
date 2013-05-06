Chef::Log.warn "Please use wel-osx-apps::#{File.basename(__FILE__, '.rb')}"
include_recipe "wel-osx-apps::#{File.basename(__FILE__, '.rb')}"
