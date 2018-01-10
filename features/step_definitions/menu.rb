#navigation_menu
When(/^I navigate to an category by the hovermenu$/) do
  #var
  start_url = current_url
  
  #set pathes
  navigation_menu_path = websitebasics[:pathes].navigation_menu_path
  navigation_hovermenu_path = websitebasics[:pathes].navigation_hovermenu_path
  
  #main-topmenu
  find_secure(navigation_menu_path)
  navigationmenu = find_secure(navigation_menu_path, match: :first)
  navigationmenu.hover
  puts "-> hovered menu"
  #hovermenu
  element = find_secure(navigation_hovermenu_path, match: :first)
  element.click
  puts "-> clicked on hovermenu"
  #check for success
  check_for_url_change(start_url)
end

When(/^I navigate to a subcategory by the menu$/) do
  #var
  start_url = current_url
  
  #set pathes
  navigation_path = websitebasics[:pathes].navigation_path
  navigation_menu_path = websitebasics[:pathes].navigation_menu_path
  navigation_menu_title_path = websitebasics[:pathes].navigation_menu_title_path
  navigation_hover_breadcrumb_path = websitebasics[:pathes].navigation_hover_breadcrumb_path
  navigation_sidebar_sub_path = websitebasics[:pathes].navigation_sidebar_sub_path
  
  #main-menu
  find_secure(navigation_path)
  element = find_secure(navigation_menu_path)
  element.hover
  puts "hovered navi"
  #click headline of category
  find_secure(navigation_menu_title_path)
  element = find_secure(navigation_menu_title_path)
  element.click
  puts "-> clicked category on menu"
  #sidebar-menu
  find_secure(navigation_hover_breadcrumb_path)
  element = find_secure(navigation_sidebar_sub_path)
  puts "> found sidebar"
  
  #check for success
  check_for_url_change(start_url)
end

When(/^I navigate to a subcategory by touching the burgermenu$/) do
  #var
  start_url = current_url
  
  #set pathes
  homepage_content_navi_burger_path = websitebasics[:pathes].homepage_content_navi_burger_path
  homepage_content_navi_burger_category_path = websitebasics[:pathes].homepage_content_navi_burger_category_path
  homepage_content_navi_burger_category_title_path = websitebasics[:pathes].homepage_content_navi_burger_category_title_path

  #main-menu
  element = find_secure(homepage_content_navi_burger_path)
  element.click
  puts "-> clicked on burgermenu"
  #click category
  find_secure(homepage_content_navi_burger_category_path)
  element = find_secure(homepage_content_navi_burger_category_path)
  element.click
  puts "-> clicked category on menu"
  #click headline of category
  find_secure(homepage_content_navi_burger_category_title_path)
  element = find_secure(homepage_content_navi_burger_category_title_path)
  element.click
  puts "-> clicked title of category on menu"
  
  #check for success
  check_for_url_change(start_url)
end

Then(/^I should be on a subcategorysite$/) do
  #1 - pathe
  navigation_sidebar_sub_path = websitebasics[:pathes].navigation_sidebar_sub_path
  
  #css-pathes
  navigation_hover_breadcrumb_path = websitebasics[:pathes].navigation_hover_breadcrumb_path
  
  #2 - looking for sidebar of categories
  find_secure(navigation_hover_breadcrumb_path)
  breadcrumb = find_secure(navigation_hover_breadcrumb_path)
  expect(page.has_css?(navigation_sidebar_sub_path))
      "expect to find a sidebar with subcategories but it isn't here"
end