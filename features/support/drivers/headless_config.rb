if ENV['DRIVER'] == 'headless'
  require 'headless'
  require 'capybara/cucumber'
  require 'rspec'
  module Headless_config
    Capybara.default_driver = :selenium
    #Capybara.default_max_wait_time = 5
    #headless = Headless.new
    @headless = Headless.new(display: 100, reuse: true, destroy_at_exit: false)
    @headless.start
    #driver = Selenium::WebDriver.for :firefox
    
    at_exit do
      @headless.destroy
    end
  end
end