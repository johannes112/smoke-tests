if ENV['DRIVER'] == 'saucelabs'
  require 'capybara/cucumber'
  require 'sauce/capybara'
  module Saucelabs_config
    Capybara.default_selector = :css
    Capybara.default_driver = :sauce
    Capybara.ignore_hidden_elements = true
    Capybara.default_max_wait_time= 30
    
    Sauce.config do |config|
      config[:name] = "Cucumber tests:"
      config['screen-resolution'] = "1280x960"
      config[:start_tunnel] = false
      config[:browsers] = [
        ["Windows 7", "Firefox", "40"],
        #["Windows 8", "Internet Explorer", "10"]
        ]
    end
  end
end