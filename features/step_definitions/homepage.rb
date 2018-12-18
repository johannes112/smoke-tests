#homepage
Given("I am on the website {string}") do |site_of|
  #variables:path
  base_url = settings.urlHttps
  #replace given string with url of this page
  website_url = "#{base_url}#{get_url_part_of_website(site_of)}"
  #actions
  visit_secure(website_url)
end

When("I am looking for the current url") do
  website_url = settings.urlHttps
  VARS_ENV.url_base = current_url
end

Then("the defined url and the current_url should be equal") do
  website_url = settings.urlHttps
  url = VARS_ENV.url_base
  compare_urls(website_url, url)
end

Then("css elements should be modified by stylesheet") do
  node_element = page.find(".page-wrap") #=node element
  webdriver_element = node_element.native
  #get style of webdriver element
  margin_right = webdriver_element.style('margin-right')
  puts ("> margin_right:#{margin_right}")
  expect(margin_right).to eq(('0px')),
     ".page-wrap: Expect to get margin of 0px, but i get #{margin_right}"
end

Then(/^I should see all basic elements$/) do
  #define path of header
  homepage_content_header_path = homepage[:pathes].homepage_content_header_path
  homepage_content_searchfield_path = homepage[:pathes].homepage_content_searchfield_path
  homepage_content_navi_path = homepage[:pathes].homepage_content_navi_path
  homepage_content_body_main_path = homepage[:pathes].homepage_content_body_main_path
  homepage_content_footer_path = homepage[:pathes].homepage_content_footer_path

  find_secure(homepage_content_searchfield_path)
  #check for existing css-elements
  find_secure(homepage_content_header_path)
  expect(page).to have_css(homepage_content_header_path),
      "Expect to find the css-element (#{homepage_content_header_path}) but the page with the url #{current_url} has no such element"
  puts "header exists"
  expect(page).to have_css(homepage_content_searchfield_path),
      "Expect to find the css-element (#{homepage_content_searchfield_path}) but the page with the url #{current_url} has no such element"
  puts "searchfield exists"
  find_secure(homepage_content_navi_path)
  expect(page).to have_css(homepage_content_navi_path),
      "Expect to find the css-element (#{homepage_content_navi_path}) but the page with the url #{current_url} has no such element"
  puts "navi exists"
  find_secure(homepage_content_body_main_path)
  expect(page).to have_css(homepage_content_body_main_path),
      "Expect to find the css-element (#{homepage_content_body_main_path}) but the page with the url #{current_url} has no such element"
  puts "inner body exists"
  find_secure(homepage_content_footer_path)
  expect(page).to have_css(homepage_content_footer_path),
      "Expect to find the css-element (#{homepage_content_footer_path}) but the page with the url #{current_url} has no such element"
  puts "footer exists"
end
