#homepage
Then(/^I should be a few elements$/) do
  #define path of header
  homepage_content_header = 'body > div.page-wrap > header'
  homepage_content_searchfield = 'li.navigation--entry.entry--search'
  homepage_content_navi = 'body > div.page-wrap > nav'
  homepage_content_body_main = 'body > div.page-wrap > section > div'
  homepage_content_footer = 'body > div.page-wrap > footer > div.container'

  #check for existing css-elements
  expect(page).to have_css(homepage_content_header),
      "Expect to find the css-element (#{homepage_content_header}) but the page with the url #{current_url} has no such element"
  puts "header exists"
  expect(page).to have_css(homepage_content_searchfield),
      "Expect to find the css-element (#{homepage_content_searchfield}) but the page with the url #{current_url} has no such element"
  puts "searchfield exists"  
  expect(page).to have_css(homepage_content_navi),
      "Expect to find the css-element (#{homepage_content_navi}) but the page with the url #{current_url} has no such element"
  puts "navi exists"
  expect(page).to have_css(homepage_content_body_main),
      "Expect to find the css-element (#{homepage_content_body_main}) but the page with the url #{current_url} has no such element"
  puts "inner body exists"
  expect(page).to have_css(homepage_content_footer),
      "Expect to find the css-element (#{homepage_content_footer}) but the page with the url #{current_url} has no such element"
  puts "footer exists"
end