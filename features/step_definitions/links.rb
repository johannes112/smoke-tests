#links
When(/^I click the link to my account$/) do
  #var
  start_url = current_url
  #pathes
  links_account_path = csspathes.links_account_path  
  #click button
  element = page.find(links_account_path)
  element.click
  #success?
  check_for_url_change(start_url)
end

When(/^I touch the link to my account$/) do
  #pathes
  links_account_icon_path = csspathes.links_account_icon_path  
  #click button
  element = page.find(links_account_icon_path)
  element.click

end


Then(/^I should be on the accountpage$/) do
  #var
  url_part = 'account'
  #pathes
  links_registration_path = csspathes.links_registration_path  
  #wait for path
  page.find(links_registration_path)
  expect(current_url).to include(url_part),
    "Expected url contains #{url_part} but i am on #{current_url}"
end

Then(/^I should be on the accountpage for mobile$/) do
  #var
  url_part = 'account'
  #pathes
  links_accordion_path = csspathes.links_registration_path  
  #wait for path
  page.find(links_accordion_path)
  expect(current_url).to include(url_part),
    "Expected url contains #{url_part} but i am on #{current_url}"
end

When(/^I click the link to my notes$/) do
  #var
  start_url = current_url
  #pathes
  links_notes_path = csspathes.links_notes_path  
  #click button
  element = page.find(links_notes_path)
  element.click
  #check for success
  check_for_url_change(start_url)
end

When(/^I touch the link to my notes$/) do
  #pathes
  links_notes_path = csspathes.links_notes_path  
  #click button
  element = page.find(links_notes_path)
  element.click
end

Then(/^I should be on the notepage$/) do
  #var
  url_part = 'note'
  #pathes
  links_notes_path = csspathes.links_notes_path
  #wait for path
  page.find(links_notes_path)
  expect(current_url).to include(url_part),
    "Expected to be at #{url_part} but i am on #{current_url}"
end

Then(/^I should be on the notepage of mobile$/) do
  #pathes
  account_accountpage_welcome_path = csspathes.account_accountpage_welcome_path
  #wait for path
  page.find(account_accountpage_welcome_path)
end

When(/^I click the link of the cart$/) do
  #var
  start_url = current_url
  #pathes
  links_cart_symbol_path = csspathes.links_cart_symbol_path  
  #click button
  element = page.find(links_cart_symbol_path)
  element.click
end

Then(/^I should see the sidebar of the product cart$/) do
  #pathes
  links_cart_sidebar_path = csspathes.links_cart_sidebar_path  
  #wait for path
  page.find(links_cart_sidebar_path)
  puts "> found sidebar"
end

When(/^I click the link to edit the cart$/) do
  #pathes
  links_cart_button_path = csspathes.links_cart_button_path  
  #click button
  element = page.find(links_cart_button_path, match: :first)
  element.click
end

Then(/^I should be on the page of the productcart$/) do
  url_part_cart = 'checkout/cart'
  expect(current_url).to include(url_part_cart),
    "Expected url contains #{url_part_cart} but i am on #{current_url}"
end


When(/^I click the link of help$/) do
  #var
  start_url = current_url
  #pathes
  links_service_path = csspathes.links_service_path  
  #click button
  element = page.find(links_service_path)
  link_text = element.text
  element.click
  puts "--> clicked on #{link_text}"
  #check for success
  #check_for_url_change(start_url)
end

Then(/^I should see a contextmenu$/) do
  #pathes
  links_context_path = csspathes.links_context_path
  #wait for path
  page.find(links_context_path)
end

When(/^I touch the link for infos of the company$/) do
  links_about_path = csspathes.links_about_path
  links_imprint_path = csspathes.links_imprint_path
  #click about
  page.find(links_about_path)
  about = page.find(links_about_path)
  about.click
  #click imprint
  page.find(links_imprint_path)
  element = page.find(links_imprint_path)
  element.click
end

Then(/^I should see the infosite$/) do
  links_info_headline = csspathes.links_info_headline
  
  page.find(links_info_headline)
end