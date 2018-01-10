#direct_ordering
#only for pulsiva
When(/^I click the button for direct ordering$/) do
  start_url = current_url
  direct_ordering_button_path = directorder[:pathes].direct_ordering_button_path 
  
  find_secure(direct_ordering_button_path)
  element = find_secure(direct_ordering_button_path)
  element.click
  puts "-> clicked button"
  #check for success
  check_for_url_change(start_url)
end

When(/^I send my inserted data with the form$/) do
  sku = directorder[:data].sku

  direct_ordering_form_sku_path = directorder[:pathes].direct_ordering_form_sku_path 
  direct_ordering_form_quantity_path = directorder[:pathes].direct_ordering_form_quantity_path
  direct_ordering_form_button_path = directorder[:pathes].direct_ordering_form_button_path 
  
  #find_secure(direct_ordering_form_sku_path)
  element = find_secure(direct_ordering_form_sku_path, match: :first)
  element.set("#{sku}\t")#\t to tab 
  puts "-> inserted #{sku}"
  
  #wait for ajax
  find_secure(direct_ordering_form_quantity_path)
  element = find_secure(direct_ordering_form_button_path)
  element.click
  puts "-> clicked button"
end

Then(/^I should find the article in the sidebar$/) do
  direct_ordering_sidebar_item_path = directorder[:pathes].direct_ordering_sidebar_item_path 
  
  find_secure(direct_ordering_sidebar_item_path)
  
  expect(page).to have_css(direct_ordering_sidebar_item_path),
     "expected that i can see the product on the cart of my sidebar, but i can not find #{direct_ordering_sidebar_item_path}"
  puts "> found item"
end

###to do: test to renew form, looking for sku in cart 
