module Headless_config
  if ENV['DRIVER'] == 'headless'
    require 'headless'
    require 'capybara/cucumber'
    require 'rspec'
    Capybara.default_driver = :selenium
    #Capybara.default_max_wait_time = 5
    headless = Headless.new
    headless.start
    at_exit do
      headless.destroy
    end
  end
end