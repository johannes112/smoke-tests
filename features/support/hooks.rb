require "capybara/cucumber"
require "selenium/webdriver"
require 'sauce_whisk'

at_exit() do
  puts "\033[42mReset whole session and quit driver\033[0m\n"
  Capybara.reset_sessions!
  Capybara.current_session.driver.quit
end

After ('@prestep') do |s|
  Cucumber.wants_to_quit = true if s.failed?
end

#with this around there will be a video for each scenario but this takes too much time
# if ENV['DRIVER'] == 'saucelabs'
#   Around do |scenario, block|
#     block.call
#     #get id of job
#     sessionid = ::Capybara.current_session.driver.browser.session_id
#     ::Capybara.current_session.driver.quit
#     #get last tag-name
#     scenario_tag = scenario.source_tag_names.last
#     env_vars = "Shopware tests: #{ENV['BROWSER']} #{ENV['SYSTEM']} #{ENV['SHOP']} #{ENV['COUNTRY']} #{ENV['JOB_NAME']}__#{ENV['BUILD_NUMBER']}"
#     jobname = "#{env_vars} - #{scenario_tag}"
#     # jobname = "#{scenario.feature.name} - #{scenario.name} - #{scenario_tag}"
#     job = SauceWhisk::Jobs.fetch sessionid
#     job.name = jobname
#     job.passed = scenario.passed? ? true : false
#     job.save
#   end
# end
