if ENV['DRIVER'] == 'saucelabs'
  require 'capybara/cucumber'
  module Saucelabs_config
    Capybara.default_selector = :css
    Capybara.default_driver = :sauce
    Capybara.ignore_hidden_elements = true
    Capybara.default_max_wait_time = 30

    if ENV['BROWSER'] == 'firefox'
      @caps = {
        :platform => "Windows 7",
        :browserName => "Firefox",
        :version => "40"
        }
    elsif ENV['BROWSER'] == 'ie'
      @caps = {
        :platform => "Windows 8",
        :browserName => "Internet Explorer",
        :version => "10"
        }
    elsif ENV['BROWSER'] == 'chrome'
      @caps = {
        :platform => "Windows 7",
        :browserName => "Chrome",
        :version => "40"
        }
    elsif ENV['BROWSER'] == 'safari'
        @caps = {
        :platform => "OS X 10.10",
        :browserName => "Safari",
        :version => "8.0"
        }
    elsif ENV['BROWSER'] == 'safari'
        @caps = {
        :platform => "OS X 10.10",
        :browserName => "Safari",
        :version => "8.0"
        }        
    elsif ENV[BROWSER == 'ios']
        @caps = {
          :browserName => 'Safari',
          :appiumVersion => '1.5.2',
          :deviceName => "iPhone 6",
          :deviceOrientation => "portrait",
          :platformName => 'iOS',
          :platformVersion => '9.2',
          :name => "iPhone 6"
        }
    end
    
    @url_path = "http://#{ENV['SAUCE_USERNAME']}:#{ENV['SAUCE_ACCESS_KEY']}@ondemand.saucelabs.com:80/wd/hub"
   
    Capybara.register_driver :saucelabs do |app|
      Capybara::Selenium::Driver.new(app, :browser => :remote, :url => @url_path, :desired_capabilities => @caps)
    end
    
    Capybara.default_driver = :saucelabs
    
=begin    Capybara.register_driver(:appium) do |app|
      Appium::Capybara::Driver.new(app, :browser => :remote, :url => @url_path, :desired_capabilities => @caps)
    end
    
    Capybara.default_driver = :appium
=end
  end
end
#driver.quit()

=begin
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
      if ENV['BROWSER'] == 'ios'
        config[:browsers] = [
        ['OS X 10.10', 'iphone', '9.1', {device_orientation: 'portrait'}],
        ]
      end
    end
  end
end
=end