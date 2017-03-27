Before do
  #@start_time = Time.now
  $start ||= false
  if !$start 
    #puts "Time: #{@start_time.hour.to_s}:#{@start_time.min.to_s}:#{@start_time.sec.to_s}"
    # if browser is for a desktop then resize dimension otherwise some windows could distrub the flow
    if ENV['BROWSER'] == 'iPad' || ENV['BROWSER'] == 'iPhone'
      puts "Test mobile"
    else
      page.driver.browser.manage.window.size = Selenium::WebDriver::Dimension.new(1920, 1200)#1280x1024
    end
    $start = true 
  end
end

at_exit() do
  #if $failed_scenarios
  #  puts "\033[35m#{$failed_scenarios.size} scenario failed: ==> #{$failed_scenarios}"
  #end
  puts "\033[42mReset whole session and quit driver\033[0m\n"
  Capybara.reset_sessions!
  Capybara.current_session.driver.quit
  Capybara.use_default_driver
  #puts_time_elapsed(Time.now)
  #Environment.debug?
end

After do |s| 
  #puts_time_elapsed
  # Tell Cucumber to quit after this scenario is done - if it failed.
  #Cucumber.wants_to_quit = true if s.failed?
  #if s.failed?
  #  $failed_scenarios = Array.new
  #  $failed_scenarios << s.name
  #end
end