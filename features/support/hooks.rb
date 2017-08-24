Before('@ignore') do | s |
  # This will only run before scenarios tagged
  @skipped_scenarios = Array.new
  @skipped_scenarios << s.name
  output_string = "skipped_scenarios Tests: #{ENV['SHOP']} #{ENV['COUNTRY']} --> #{@skipped_scenarios}"
  puts "status: pending"
  write_to_existing_file("skipped_scenarios", output_string)
  s.skip_invoke!
  
end

Before do
  @start_time = Time.now
  $start ||= false
  if !$start 
    #puts "Time: #{@start_time.hour.to_s}:#{@start_time.min.to_s}:#{@start_time.sec.to_s}"
    # if browser is for a desktop then resize dimension otherwise some windows could distrub the flow
    if ENV['BROWSER'] == 'iPad' || ENV['BROWSER'] == 'iPhone'
      puts "Test mobile. So i can not set any size of browser"
    else
      page.driver.browser.manage.window.size = Selenium::WebDriver::Dimension.new(1920, 1200)#1280x1024
    end
    $start = true 
  end
end

at_exit() do
  puts "\033[42mReset whole session and quit driver\033[0m\n"
  Capybara.reset_sessions!
  Capybara.current_session.driver.quit
  Capybara.use_default_driver
  #Environment.debug?
end

# After do |s| 
  #puts_time_elapsed
  # Tell Cucumber to quit after this scenario is done - if it failed.
  #Cucumber.wants_to_quit = true if s.failed?
  # if s.failed?
  #   error_execution_counter = 0
  #   @failed_scenarios = Array.new
  #   @failed_scenarios_tags = Array.new
  #   @failed_scenarios << s.name
  #   @failed_scenarios_tags << s.source_tag_names.last
  #   output_string = "Failed Tests: #{ENV['SHOP']} #{ENV['COUNTRY']} --> #{@failed_scenarios} -> #{@failed_scenarios_tags} "
  #   write_to_existing_file("failed_scenarios", output_string)
    #run each failed scenarios again with command rerun this is useless / dreprecated
#   end
# end