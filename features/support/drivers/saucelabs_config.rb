if ENV['DRIVER'] == 'saucelabs'
  require 'sauce/capybara'
  require 'capybara/cucumber'
  module Saucelabs_config
    Capybara.default_selector = :css
    Capybara.default_driver = :sauce
    Capybara.ignore_hidden_elements = true
    Capybara.default_max_wait_time = 30
    
    Sauce.config do |config|
      config[:name] = "Shopware tests: #{ENV['BROWSER']} #{ENV['SYSTEM']} #{ENV['SHOP']} #{ENV['COUNTRY']}"
      config[:start_tunnel] = false

      if ENV['BROWSER'] == 'firefox'
        config['screen-resolution'] = "1280x960"
        config[:browsers] = [
          ["Windows 7", "Firefox", "40"]
          ]
      end
      if ENV['BROWSER'] == 'ie'
        config['screen-resolution'] = "1280x960"
        config[:browsers] = [
        ["Windows 7", "Internet Explorer", "10"]
        ]
      end
      if ENV['BROWSER'] == 'chrome'
        config['screen-resolution'] = "1280x960"
        config[:browsers] = [
        ["Windows 7", "Chrome", "40"]
        ]
      end
      if ENV['BROWSER'] == 'safari'
        config[:browsers] = [
        ["OS X 10.10", "Safari", "8.0"]
        ]
      end
    end
  end
end