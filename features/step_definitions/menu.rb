#navigation_menu
When(/^I navigate to the category with the hovermenu$/) do
  #var
  url_start = current_url
  category = article.category
  
  #set pathes
  navigation_path = 'div.page-wrap > nav'
  navigation_hovermenu_path = 'div.advanced-menu'
  
  #main-topmenu
  page.find(navigation_path)
  navigationmenu = page.find(navigation_path)
  element = navigationmenu.find_link(category)
  element.hover
  #hovermenu
  #page.find(filter_navigation_hovermenu_path)#.hover
  hovermenu = page.find(navigation_hovermenu_path)
  element = hovermenu.find_link(category, match: :first)
  element.click
  #check for success
  expect(current_url).not_to eq(url_start),
     "Expect url of category but it was still #{current_url}"
end

When(/^I navigate to the category with the menu$/) do
  #var
  url_start = current_url
  category = article.category
  
  #set pathes
  navigation_path = 'div.page-wrap > nav'
  navigation_sidebar_path = 'div.sidebar--categories-navigation'
  
  #main-menu
  page.find(navigation_path)
  navigationmenu = page.find(navigation_path)
  element = navigationmenu.find_link(category)
  element.click
  #sidebar-menu
  page.find(navigation_sidebar_path)
  sidebar = page.find(navigation_sidebar_path)
  element = sidebar.find_link(category, match: :first)
  element.click
  #check for success
  expect(current_url).not_to eq(url_start),
     "Expect url of category but it was still #{current_url}"
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

