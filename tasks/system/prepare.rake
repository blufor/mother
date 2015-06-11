desc "Install needed utils"
task :prepare => [ "system:upgrade" ]
task :prepare do |t|
  task_begin t.name
  info t.name + ": installing needed packages"
  deb_install "wget", "bridge-utils", "ifenslave"
  deb_install "python-software-properties", "python-dev", "python-yaml"
  info t.name + ": enabling directory based interfaces config"
  runcmd 'mkdir -p /etc/network/interfaces.d'
  runcmd 'grep source-directory /etc/network/interfaces || echo -e "\nsource-directory /etc/network/interfaces.d" >> /etc/network/interfaces'
  task_end t.name
end