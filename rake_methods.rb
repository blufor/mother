def runcmd *args
  cmd = args.join(' ')
  puts 'Running: ' + cmd
  begin
    exec cmd
    puts 'Finished: ' + cmd
  rescue Exception => e
    puts 'Failed: ' + cmd
    puts e.message
  end
end

def install *args
  pkgs = args.join(' ')
  puts 'Installing: ' + pkgs
  begin
    exec 'DEBIAN_FRONTEND=noninteractive apt-get -qqy install ' + pkgs
    puts 'Installed: ' + pkgs
  rescue
    puts 'Not installed: ' + pkgs
  end
end

def am_i_root?
  Process.uid == 0 ? true : false
end