Given("I am on the website {string}") do |site_of|
  #variables:path
  base_url = settings.urlHttps 
  #replace given string with url of this page
  website_url = "#{base_url}#{get_url_part_of_website(site_of)}"
  #actions
  visit_secure(website_url)
end