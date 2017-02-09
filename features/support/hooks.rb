Before do
  $start ||= false
  if !$start
    Capybara.reset_sessions!
    puts "\033[44mReset sessions\033[0m\n\n"
    #page.driver.browser.manage.window.size = Selenium::WebDriver::Dimension.new(1920, 1200)#1280x1024
    @driver = Capybara.current_driver
    #puts "current_driver:#{@driver}"
    $start = true
  end
end

at_exit() do
  #Capybara.current_session.driver.quit
  puts "\033[44mReset whole session and config of saucelabs\033[0m\n"
  Capybara.reset_sessions!
  puts "capybara.default_driver:#{Capybara.default_driver}"
end

After do |s| 
  # Tell Cucumber to quit after this scenario is done - if it failed.
  #Cucumber.wants_to_quit = true if s.failed?
  #if s.failed 
  #  step s
  #end
end