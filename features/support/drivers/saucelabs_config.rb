if ENV['DRIVER'] == 'saucelabs'
  require 'capybara/cucumber'
  module Saucelabs_config
    Capybara.default_selector = :css
    Capybara.ignore_hidden_elements = true

    #all posibility combinations: https://saucelabs.com/platforms
    # Windows7:    browser max. -> firefox: 52, 51,           chrome: latest, latest-1,    ie: latest, latest-1
    # Windows8:    browser max. -> firefox: 52, 51,           chrome: latest, latest-1,    ie: latest,
    # Windows10:   browser max. -> firefox: 52, 51,           chrome: latest, latest-1,    MicrosoftEdge: latest, latest-1, latest-2
    # Linux:       browser max. -> firefox: latest, latest-1, chrome: latest, latest-1
    # MacOS10.13:  browser max. -> firefox: 52, 51,           chrome: latest, latest-1     safari: latest
    # MacOS10.12:  browser max. -> firefox: 52, 51,           chrome: latest, latest-1
    # osx10.11:    browser max. -> firefox: latest, latest-1  chrome: latest, latest-1     safari: latest
    # osx10.10:    browser max. -> firefox: latest, latest-1  chrome: latest, latest-1     safari: latest

    #os =
    if (ENV['PLATFORM'].length > 1)
      #check for missing whitespace in os
      os = ENV['PLATFORM']
      if(!"#{os}"!~/\d/)
        # separate os into letter and numbers
        os_letters = os.slice(/([a-z]|[A-Z])*/)
        # macos to os x : with whitespace
        if(os_letters == "osx")
          os_letters = "os x"
        end
        os_numbers = os.slice(/\d+.\d*/)
        os = "#{os_letters} #{os_numbers}"
      end
      platform_name = os
      puts "platform: #{platform_name}"
    else
      platform_name = "Windows 7"
    end

    if (ENV['BROWSER'].length > 1)
      browsername = ENV['BROWSER']
      if(browsername == "internet_explorer" || browsername == "ie")
        browser_name = "internet explorer"
      else
        browser_name = ENV['BROWSER']
      end
    else
      browser_name = "firefox"
    end

    if (ENV['VERSION'].length > 1)
      browser_version = ENV['VERSION']
    else
      browser_version = "52"
    end

    #environment
    if (ENV['PLATFORM'] == 'iOS_iPhone')
      @mobile_device = true
      @caps = {
        :appiumVersion => '1.9.1',
        :deviceName => 'iPhone Simulator',
        :deviceOrientation => 'portrait',
        :platformVersion => '12.0',
        :platformName => 'iOS',
        :browserName => 'Safari'
        }
    elsif (ENV['PLATFORM'] == 'iOS_iPad')
      @mobile_device = true
      @caps = {
        :appiumVersion => '1.9.1',
        :deviceName => 'iPad Simulator',
        :deviceOrientation => 'portrait',
        :platformVersion => '12.0',
        :platformName => 'iOS',
        :browserName => 'Safari'
        }
    elsif (ENV['PLATFORM'] == 'android')
      @mobile_device = true
      @caps = {
        :appiumVersion => '1.9.1',
        :deviceName => 'Samsung Galaxy S9 HD GoogleAPI Emulator',
        :deviceOrientation => 'portrait',
        :browserName => 'Chrome',
        :platformVersion => '7.1',
        :platformName => 'Android'
        }
    else
      @caps = {
        :platform => "#{platform_name}",
        :browserName => "#{browser_name}",
        :version => "#{browser_version}"#,
        #:screenResolution => "1920x1200"
        }
    end

      @caps[:name] = "#{ENV['JOB_NAME']} -> build: #{ENV['BUILD_NUMBER']} #{ENV['SYSTEM']} #{ENV['SHOP']} #{ENV['COUNTRY']} #{ENV['BROWSER']} #{ENV['PLATFORM']} #{ENV['VERSION']}"
      @caps[:build] = "#{ENV['JOB_NAME']}__#{ENV['BUILD_NUMBER']}"
      @caps[:autoAcceptAlerts] = true
      #@caps[:unexpectedAlertBehaviour] = "dismiss"

    #Timeouts
    if (ENV['SYSTEM'] == 'int')
      puts "Timeout is set to 65"
      @caps[:maxDuration] = '7200' #max Duration of Tests is set to 120 min
      @caps[:commandTimeout] = '300' #max Duration of seleniumcommand is set to 0:51min
      @caps[:idleTimeout] = '100' #120max Duration between any command
    else
      @caps[:maxDuration] = '7200' #max Duration of Tests is set to 120 min
      @caps[:commandTimeout] = '600' #max Duration of seleniumcommand is set to 10:00min (Default: 300)
      @caps[:idleTimeout] = '90' #max Duration between any command (Default: 90)
    end

    if(@mobile_device)
      puts "it is tested by a mobile device"
      puts "Enviroment:#{@caps}"
    else
      puts "Enviroment:#{@caps}"
      puts "platform:#{@caps[:platform]}"
      puts "browser:#{@caps[:browserName]}"
      puts "version:#{@caps[:Version]}"
    end

    @url_path = "https://#{ENV['SAUCE_USERNAME']}:#{ENV['SAUCE_ACCESS_KEY']}@ondemand.saucelabs.com:443/wd/hub"
    Capybara.register_driver :saucelabs_driver do |app|
      Capybara::Selenium::Driver.new(app, :browser => :remote, :url => @url_path, :desired_capabilities => @caps)
    end
    Capybara.default_driver = :saucelabs_driver
    if (ENV['SYSTEM'] == 'int') || (ENV['BROWSER'] == 'iPhone') || (ENV['BROWSER'] == 'iPad')
      puts "Timeout of capybara is set to 81"
      Capybara.default_max_wait_time = 81
    else
      Capybara.default_max_wait_time = 30
    end
  end
end
