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
        :version => "latest"
        }
    elsif ENV['BROWSER'] == 'ie'
      @caps = {
        :platform => "Windows 8",
        :browserName => "Internet Explorer",
        :version => "latest"
        }
    elsif ENV['BROWSER'] == 'chrome'
      @caps = {
        :platform => "Windows 7",
        :browserName => "Chrome",
        :version => "latest"
        }
    elsif ENV['BROWSER'] == 'safari'
        @caps = {
        :platform => "OS X 10.10",
        :browserName => "Safari",
        :version => "latest"
        }
    elsif ENV['BROWSER'] == 'iPhone'
        @caps = {
          :browserName => 'Safari',
          :appiumVersion => '1.5.3',
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
    
  end
end
#driver.quit()

