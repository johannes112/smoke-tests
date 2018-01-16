#links
When(/^I click the link to my account$/) do
  #pathes
  links_account_path = websitebasics[:pathes].links_account_path  
  #click button
  element = find_secure(links_account_path)
  element.click
end

When(/^I touch the link to my account$/) do
  #pathes
  links_account_icon_path = websitebasics[:pathes].links_account_icon_path  
  #click button
  find_secure(links_account_icon_path)
  element = find_secure(links_account_icon_path)
  element.click
end


Then(/^I should be on the accountpage$/) do
  #var
  url_part = 'account'
  #pathes
  links_registration_path = websitebasics[:pathes].links_registration_path  
  #wait for path
  find_secure(links_registration_path)
  expect(current_url).to include(url_part),
    "Expected url contains #{url_part} but i am on #{current_url}"
end

Then(/^I should be on the accountpage for mobile$/) do
  #var
  url_part = 'account'
  #pathes
  links_accordion_path = websitebasics[:pathes].links_registration_path  
  #wait for path
  find_secure(links_accordion_path)
  expect(current_url).to include(url_part),
    "Expected url contains #{url_part} but i am on #{current_url}"
end

When(/^I click the link to my notes$/) do
  #pathes
  links_notes_path = websitebasics[:pathes].links_notes_path  
  #click button
  element = find_secure(links_notes_path)
  element.click
end

When(/^I touch the link to my notes$/) do
  #pathes
  links_notes_path = websitebasics[:pathes].links_notes_path  
  #click button
  find_secure(links_notes_path)
  element = find_secure(links_notes_path)
  element.click
end

Then(/^I should be on the notepage$/) do
  #var
  url_part = 'note'
  #pathes
  links_notes_path = websitebasics[:pathes].links_notes_path
  #wait for path
  find_secure(links_notes_path)
  expect(current_url).to include(url_part),
    "Expected to be at #{url_part} but i am on #{current_url}"
end

Then(/^I should be on the notepage of mobile$/) do
  #pathes
  account_accountpage_welcome_path = websitebasics[:pathes].account_accountpage_welcome_path
  #wait for path
  find_secure(account_accountpage_welcome_path)
  #expect(page).not_to have_selector(account_accountpage_welcome_path, visible: true)
end

When(/^I click the link of the cart$/) do
  #pathes
  links_cart_symbol_path = websitebasics[:pathes].links_cart_symbol_path  
  #click button
  element = find_secure(links_cart_symbol_path)
  element.click
end

Then(/^I should see the sidebar of the product cart$/) do
  #pathes
  links_cart_sidebar_path = websitebasics[:pathes].links_cart_sidebar_path  
  #wait for path
  find_secure(links_cart_sidebar_path)
  puts "> found sidebar"
end

When(/^I click the link to edit the cart$/) do
  #pathes
  links_cart_button_path = websitebasics[:pathes].links_cart_button_path  
  #click button
  element = find_secure(links_cart_button_path, match: :first)
  element.click
end

Then(/^I should be on the page of the productcart$/) do
  homepage_product_cart_hint_content_path = websitebasics[:pathes].homepage_product_cart_hint_content_path
  find_secure(homepage_product_cart_hint_content_path)
end


When(/^I click the link of help$/) do
  #pathes
  links_service_path = websitebasics[:pathes].links_service_path  
  #click button
  element = find_secure(links_service_path)
  link_text = element.text
  element.click
  puts "--> clicked on #{link_text}"
end

Then(/^I should see a contextmenu$/) do
  #pathes
  links_context_path = websitebasics[:pathes].links_context_path
  puts "links_context_path:#{links_context_path}"
  #wait for path
  find(links_context_path)
end

When(/^I touch the link for infos of the company$/) do
  links_about_path = websitebasics[:pathes].links_about_path
  links_imprint_path = websitebasics[:pathes].links_imprint_path
  #click about
  find_secure(links_about_path)
  about = find_secure(links_about_path)
  about.click
  #click imprint
  find_secure(links_imprint_path)
  element = find_secure(links_imprint_path)
  element.click
end

Then(/^I should see the infosite$/) do
  links_info_headline = websitebasics[:pathes].links_info_headline
  
  find_secure(links_info_headline)
end