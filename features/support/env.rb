if ENV['DRIVER'] == 'headless'
  $stdout.write "Headless\n"
  require_relative './drivers/headless_config.rb'
elsif ENV['DRIVER'] == 'saucelabs'
  $stdout.write "saucelabs - Account required!\n"
  require_relative './drivers/saucelabs_config.rb'
  puts "To use saucelabs please execute the shellscript 'run_cucumber.sh'\n\n\n"
else
  $stdout.write "Die Variable 'DRIVER' mit richtigem Parameter existiert nicht.\nMoegliche Parameter:\n\t-DRIVER=headless\n\t-DRIVER=false\n\t-DRIVER=poltergeist\n\nBeispiel für richtigen Aufruf:\n\t-DRIVER=true cucumber\n\nTo run with tags: \nHEADLESS=true cucumber -t @search"
  exit
end
