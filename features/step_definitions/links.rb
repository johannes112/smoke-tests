#links
When(/^I click the link to my account$/) do
  #pathes
  link_account_path = 'li.navigation--entry.entry--account'
  #click button
  element = page.find(link_account_path)
  element.click
end

Then(/^I should be on the accountpage$/) do
  #var
  url_part = 'account'
  #pathes
  link_registration_path = '#registration'
  #wait for path
  page.find(link_registration_path)
  expect(current_url).to include(url_part),
    "Expected url contains #{url_part} but i am on #{current_url}"
end

When(/^I click the link to my notes$/) do
  #pathes
  link_account_path = 'li.navigation--entry.entry--notepad'
  #click button
  element = page.find(link_account_path)
  element.click
end

Then(/^I should be on the notepage$/) do
  #var
  url_part = 'note'
  #pathes
  link_registration_path = '.note--content'
  #wait for path
  page.find(link_registration_path)
  expect(current_url).to include(url_part),
    "Expected to be at #{url_part} but i am on #{current_url}"
end

When(/^I click the link of the cart$/) do
  #pathes
  link_cart_symbol_path = 'li.navigation--entry.entry--cart'
  #click button
  element = page.find(link_cart_symbol_path)
  element.click
end

Then(/^I should see the sidebar of the product cart$/) do
  #pathes
  link_cart_sidebar_path = 'div.container--ajax-cart.off-canvas.is--right.is--active.is--open'
  #wait for path
  page.find(link_cart_sidebar_path)
end

When(/^I click the link to edit the cart$/) do
  #pathes
  link_cart_button_path = 'a.btn.button--open-basket'
  #click button
  page.find(link_cart_button_path)
  element = page.find(link_cart_button_path)
  element.click
end

Then(/^I should be on the page of the productcart$/) do
  url_part_cart = 'checkout/cart'
  expect(current_url).to include(url_part_cart),
    "Expected url contains #{url_part_cart} but i am on #{current_url}"
end


When(/^I click the link of help$/) do
  #pathes
  link_service_path = 'div.navigation--entry.entry--service'
  #click button
  element = page.find(link_service_path)
  element.click
end

Then(/^I should see a contextmenu$/) do
  #pathes
  link_service_path = 'div.navigation--entry.entry--service.has--drop-down.js--is--dropdown-active > ul'
  #wait for path
  page.find(link_service_path)
end