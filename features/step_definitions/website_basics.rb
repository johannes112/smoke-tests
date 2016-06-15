#website_elements
Then(/^I should be a basic elements$/) do
  #define path of header
  homepage_content_header_path = csspathes.homepage_content_header_path
  homepage_content_searchfield_path = csspathes.homepage_content_searchfield_path
  homepage_content_navi_path = csspathes.homepage_content_navi_path
  homepage_content_body_main_path = csspathes.homepage_content_body_main_path
  homepage_content_footer_path = csspathes.homepage_content_footer_path

  #check for existing css-elements
  expect(page).to have_css(homepage_content_header_path),
      "Expect to find the css-element (#{homepage_content_header_path}) but the page with the url #{current_url} has no such element"
  puts "header exists"
  expect(page).to have_css(homepage_content_searchfield_path),
      "Expect to find the css-element (#{homepage_content_searchfield_path}) but the page with the url #{current_url} has no such element"
  puts "searchfield exists"  
  expect(page).to have_css(homepage_content_navi_path),
      "Expect to find the css-element (#{homepage_content_navi_path}) but the page with the url #{current_url} has no such element"
  puts "navi exists"
  expect(page).to have_css(homepage_content_body_main_path),
      "Expect to find the css-element (#{homepage_content_body_main_path}) but the page with the url #{current_url} has no such element"
  puts "inner body exists"
  expect(page).to have_css(homepage_content_footer_path),
      "Expect to find the css-element (#{homepage_content_footer_path}) but the page with the url #{current_url} has no such element"
  puts "footer exists"
end