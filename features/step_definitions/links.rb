#links
When(/^I click the link to my account$/) do
  #pathes
  links_account_path = csspathes.links_account_path  
  #click button
  element = page.find(links_account_path)
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

When(/^I click the link to my notes$/) do
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

When(/^I click the link of the cart$/) do
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
end

When(/^I click the link to edit the cart$/) do
  #pathes
  links_cart_button_path = csspathes.links_cart_button_path  
  #click button
  page.find(links_cart_button_path)
  element = page.find(links_cart_button_path)
  element.click
end

Then(/^I should be on the page of the productcart$/) do
  url_part_cart = 'checkout/cart'
  expect(current_url).to include(url_part_cart),
    "Expected url contains #{url_part_cart} but i am on #{current_url}"
end


When(/^I click the link of help$/) do
  #pathes
  links_service_path = csspathes.links_service_path  
  #click button
  element = page.find(links_service_path)
  element.click
end

Then(/^I should see a contextmenu$/) do
  #pathes
  links_context_path = csspathes.links_context_path
  #wait for path
  page.find(links_context_path)
end