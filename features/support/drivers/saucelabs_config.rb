module Sauclabs_custom
    if ENV['DRIVER'] == 'saucelabs'
      require 'capybara/cucumber'
      require "sauce"
      require "sauce/capybara"
      require "sauce/cucumber"
    
      Capybara.default_driver = :sauce
      # Set up configuration
      Sauce.config do |c|
        c[:browsers] = [ 
         ["Windows 8", "Internet Explorer", "10"],             
         ["Windows 7", "Firefox", "20"],
         ["OS X 10.8", "Safari", "6"],                         
         ["Linux", "Chrome", nil]          
         ]
        end
      at_exit do
          Capybara.default_driver = :selenium
      end
    end
end