#navigation_menu
When(/^I navigate to an category by the hovermenu$/) do
  #var
  start_url = current_url
  
  #set pathes
  navigation_menu_path = csspathes.navigation_menu_path
  navigation_hovermenu_path = csspathes.navigation_hovermenu_path
  
  #main-topmenu
  page.find(navigation_menu_path)
  navigationmenu = page.find(navigation_menu_path, match: :first)
  navigationmenu.hover
  puts "-> hovered menu"
  #hovermenu
  element = page.find(navigation_hovermenu_path, match: :first)
  element.click
  puts "-> clicked on hovermenu"
  #check for success
  check_for_url_change(start_url)
end

When(/^I navigate to a subcategory by the menu$/) do
  #var
  start_url = current_url
  
  #set pathes
  navigation_path = csspathes.navigation_path
  navigation_menu_path = csspathes.navigation_menu_path
  navigation_menu_title_path = csspathes.navigation_menu_title_path
  navigation_hover_breadcrumb_path = csspathes.navigation_hover_breadcrumb_path
  navigation_sidebar_sub_path = csspathes.navigation_sidebar_sub_path
  
  #main-menu
  page.find(navigation_path)
  element = page.find(navigation_menu_path)
  element.hover
  puts "hovered navi"
  #click headline of category
  page.find(navigation_menu_title_path)
  element = page.find(navigation_menu_title_path)
  element.click
  puts "-> clicked category on menu"
  #sidebar-menu
  page.find(navigation_hover_breadcrumb_path)
  element = page.find(navigation_sidebar_sub_path)
  puts "> found sidebar"
  
  #check for success
  check_for_url_change(start_url)
end

When(/^I navigate to a subcategory by touching the burgermenu$/) do
  #var
  start_url = current_url
  
  #set pathes
  homepage_content_navi_burger_path = csspathes.homepage_content_navi_burger_path
  homepage_content_navi_burger_category_path = csspathes.homepage_content_navi_burger_category_path
  homepage_content_navi_burger_category_title_path = csspathes.homepage_content_navi_burger_category_title_path

  #main-menu
  element = page.find(homepage_content_navi_burger_path)
  element.click
  puts "-> clicked on burgermenu"
  #click category
  page.find(homepage_content_navi_burger_category_path)
  element = page.find(homepage_content_navi_burger_category_path)
  element.click
  puts "-> clicked category on menu"
  #click headline of category
  page.find(homepage_content_navi_burger_category_title_path)
  element = page.find(homepage_content_navi_burger_category_title_path)
  element.click
  puts "-> clicked title of category on menu"
  
  #check for success
  check_for_url_change(start_url)
end

Then(/^I should be on a subcategorysite$/) do
  #1 - pathe
  navigation_sidebar_sub_path = csspathes.navigation_sidebar_sub_path
  
  #css-pathes
  navigation_hover_breadcrumb_path = csspathes.navigation_hover_breadcrumb_path
  
  #2 - looking for sidebar of categories
  page.find(navigation_hover_breadcrumb_path)
  breadcrumb = page.find(navigation_hover_breadcrumb_path)
  expect(page.has_css?(navigation_sidebar_sub_path))
      "expect to find a sidebar with subcategories but it isn't here"
end