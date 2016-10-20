#global
Given(/^I am on the website$/) do
  #variables:path
  website_url = settings.urlHttps
  puts "go to #{website_url}"
  
  block_css('.navigation-main')  
  #actions
  visit(website_url)
  
  #expections
  expect(current_url).to eq(website_url),
    "Expected to be at #{website_url} but i am on #{current_url}"
end