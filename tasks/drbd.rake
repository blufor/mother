desc "Install DRBD"
task :drbd do
  deb_install 'drbd8-utils'
end
