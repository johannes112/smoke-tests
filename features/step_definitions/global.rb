#global
Given(/^I am on the website$/) do
  #variables:path
  website_url = settings.urlHttps #modify_url(settings.urlHttps, set_user_and_pass_string(ENV['HTACCESS_USERNAME'], ENV['HTACCESS_PASSWORD']))
  puts "go to #{settings.urlHttps}"
  
  #actions
  visit_secure(website_url)
end