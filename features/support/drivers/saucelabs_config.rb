if ENV['DRIVER'] == 'saucelabs'
  require 'sauce/capybara'
  require 'capybara/cucumber'
  module Saucelabs_config
    Capybara.default_selector = :css
    Capybara.default_driver = :sauce
    Capybara.ignore_hidden_elements = true
    Capybara.default_max_wait_time = 30
    
<<<<<<< HEAD
    if ENV['BROWSER'] == 'firefox'
      @caps = {
        :platform => "Windows 7",
        :browserName => "Firefox",
        :version => "40", 
        :screenResolution => "1440x900"
        }
    elsif ENV['BROWSER'] == 'ie'
      @caps = {
        :platform => "Windows 8",
        :browserName => "Internet Explorer",
        :version => "latest",
        :screenResolution => "1440x900"
        }
    elsif ENV['BROWSER'] == 'chrome'
      @caps = {
        :platform => "Windows 7",
        :browserName => "Chrome",
        :version => "latest-1",
        :screenResolution => "1440x900"
        }
    elsif ENV['BROWSER'] == 'safari'
      @caps = {
        :platform => "OS X 10.10",
        :browserName => "Safari",
        :version => "latest",
        :screenResolution => "1440x900"
        }
    elsif ENV['BROWSER'] == 'iPhone'
        @caps = {
          :browserName => 'Safari',
          :appiumVersion => '1.5.3',
          :deviceName => "iPhone Simulator",
          :deviceOrientation => "portrait",
          :platformName => 'iOS',
          :platformVersion => '9.2',
          :name => "iPhone Simulator"
        }
    elsif ENV['BROWSER'] == 'iPad'
        @caps = {
          :browserName => 'Safari',
          :appiumVersion => '1.5.3',
          :deviceName => "iPad Simulator",
          :deviceOrientation => "portrait",
          :platformName => 'iOS',
          :platformVersion => '9.2',
          :name => "iPad Simulator"
        }
    end
    @caps[:name] = "Shopware tests: #{ENV['BROWSER']} #{ENV['SYSTEM']} #{ENV['SHOP']} #{ENV['COUNTRY']}"
    puts "Enviroment:#{@caps}"
    
    @url_path = "http://#{ENV['SAUCE_USERNAME']}:#{ENV['SAUCE_ACCESS_KEY']}@ondemand.saucelabs.com:80/wd/hub"
   
    Capybara.register_driver :saucelabs_driver do |app|
      Capybara::Selenium::Driver.new(app, :browser => :remote, :url => @url_path, :desired_capabilities => @caps)
    end
    Capybara.default_driver = :saucelabs_driver
=======
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
>>>>>>> parent of 65ac91f... fix: use ruby logic for saucelabs_config.rb, problem was the newest version of firefox use a webdriver that not supports all actions
  end
end
