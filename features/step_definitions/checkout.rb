#checkout
Given(/^I am on the checkout page$/) do
  url_checkout = settings.urlHttps+'checkout'
  
  if (current_url == url_checkout) 
    puts "> ok, I am on #{current_url}"
  else
    puts "> ups, I am on #{current_url}"
    puts "--> go to #{url_checkout}"
    visit(url_checkout)
  end
  puts "And the checkoutpage contains all elements"
  step("the checkoutpage contains all elements")
end

And(/^the checkoutpage contains all elements/) do
  checkout_backbutton_path = ".block-group > a"
  checkout_steps_container_path = ".steps--container.container"
  checkout_agb_container_path = "div.tos--panel.panel"
  checkout_billing_container_path = ".billing--panel"
  checkout_shipping_container_path = ".shipping--panel"
  checkout_payment_container_path = ".payment--panel"
  checkout_product_container_path = ".product--table"
  checkout_orderbutton_path = "button"
  
  expect(page).to have_css(checkout_backbutton_path),
    "expected to find #{checkout_backbutton_path}, but the checkout_backbutton is still missing on the page"
  expect(page).to have_css(checkout_steps_container_path),
    "expected to find #{checkout_steps_container_path}, but the checkout_steps_container is still missing on the page"
  expect(page).to have_css(checkout_agb_container_path),
    "expected to find #{checkout_agb_container_path}, but the checkout_agb_container is still missing on the page"
  expect(page).to have_css(checkout_billing_container_path),
    "expected to find #{checkout_billing_container_path}, but the checkout_billing_container is still missing on the page"
  expect(page).to have_css(checkout_shipping_container_path),
    "expected to find #{checkout_shipping_container_path}, but the checkout_shipping_container is still missing on the page"
  expect(page).to have_css(checkout_payment_container_path),
    "expected to find #{checkout_payment_container_path}, but the checkout_payment_container is still missing on the page"
  expect(page).to have_css(checkout_product_container_path),
    "expected to find #{checkout_product_container_path}, but the checkout_product_container is still missing on the page"
  expect(page).to have_css(checkout_orderbutton_path),
    "expected to find #{checkout_orderbutton_path}, but the checkout_orderbutton is still missing on the page"
end

When(/^I send my order with existing account$/) do
  checkout_orderbutton_path = "button"
  
  puts "I am on the checkout page"
  step("I am on the checkout page")
  puts "I activate the box of agb"
  step("I activate the box of agb")
  
  element = page.find(checkout_orderbutton_path)
  element.click
end

And(/^I activate the box of agb$/) do
  checkout_agb_container_path = "#sAGB"
  
  step("I am on the checkout page")
  
  element = page.find(checkout_agb_container_path)
  element.click
end

Then(/^Shopware should have my order$/) do
  key = "email"
  eMail = user.eMail
  shopware.setDigest(ENV['SHOPWARE_USERNAME'], ENV['SHOPWARE_PASSWORD'], settings.urlHttps)
  shopware.updateOrderStatusFor(key, eMail)
end