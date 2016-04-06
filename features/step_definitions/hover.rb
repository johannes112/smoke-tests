#hover
When(/^I navigate to the category on the menu$/) do
  #var
  url_start = current_url
  category = article.category
  
  #set pathes
  filter_navigation_path = 'div.page-wrap > nav'
  filter_navigation_hovermenu_path = 'div.advanced-menu'
  
  #main-topmenu
  page.find(filter_navigation_path)
  navigationmenu = page.find(filter_navigation_path)
  element = navigationmenu.find_link(category)
  element.click

  #check for success
  expect(current_url).not_to eq(url_start),
     "Expect url of filters but it was still #{current_url}"
end

Then(/^I should be on the categorysite$/) do
  #1 - var
  category = article.category
  
  #css-pathes
  hover_breadcrumb_path = 'section > nav > ul'
  
  #2 - looking for category in breadcrumb
  page.find(hover_breadcrumb_path)
  breadcrumb = page.find(hover_breadcrumb_path)
  #check for correct category
  expect(breadcrumb.text).to include(category),
     "expect to find in breadcrumb #{category}, but the breadcrumb was #{breadcrumb.text}"
end