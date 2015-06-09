desc "Install DRBD"
task :drbd do |t|
  info t.name + ": started"
  deb_install 'drbd8-utils'
  info t.name + ": finished"
end
