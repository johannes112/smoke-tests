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

When(/^I go to the checkout$/) do
  product_cart_panel_path = "div.panel"
  product_cart_checkout_button_path = ".btn--checkout-proceed"
  
  page.find(product_cart_panel_path)
  
  element = page.find(product_cart_checkout_button_path, match: :first)
  element.click
end

When(/^I fill out a register form and send it without creating an account$/) do
  #var
  prefix = user.prefix
  firstname = user.firstname
  lastname = user.lastname
  department = user.department
  taxvat = user.taxvat
  email = user.eMail
  phone = user.telephone
  company = user.company
  street = user.street
  postcode = user.postcode
  city = user.city
  country = user.country
  
  #path
  account_registerform_path = '#registration'
  account_registerform_prefix_path = 'div.panel.register--personal > div > div.register--salutation.field--select'
  account_registerform_firstname_path = '#firstname'
  account_registerform_lastname_path = '#lastname'
  account_registerform_department_path = '#register_billing_department'
  account_registerform_taxvat_path = '#register_billing_ustid'
  account_registerform_email_path = '#register_personal_email'
  account_registerform_skip_path = '#register_personal_skipLogin'
  account_registerform_phone_path = '#phone'
  account_registerform_company_path = '#register_billing_company'
  account_registerform_street_path = '#street'
  account_registerform_postcode_path = '#zipcode'
  account_registerform_city_path = '#city'
  account_registerform_country_path = 'div.panel.register--address > div > div.register--country.field--select'
  account_registerform_button_path = 'div.register--action > button'
  
  #search for field, so you know that we are on the right site
  page.find(account_registerform_path)
  #set value for prefix
  element = page.find(account_registerform_prefix_path)
  element.select(prefix)
  #output
  printValue(:prefix, binding)
  #set value for firstname
  element = page.find(account_registerform_firstname_path)
  element.set(firstname)
  printValue(:firstname, binding)
  #set value for lastname
  element = page.find(account_registerform_lastname_path)
  element.set(lastname)
  printValue(:lastname, binding)
  #set value for email
  element = page.find(account_registerform_email_path)
  element.set(email)
  printValue(:email, binding)
  #skip creation of an account
  element = page.find(account_registerform_skip_path)
  element.click
  #set value for phone
  begin
    element = page.find(account_registerform_phone_path)
    element.set(phone)
    printValue(:phone, binding)
  rescue Exception => e
    puts e.message
  end
  #set value for company
  element = page.find(account_registerform_company_path)
  element.set(company)
  printValue(:company, binding)
  #set value for department
  element = page.find(account_registerform_department_path)
  element.set(department)
  printValue(:department, binding)
  #set value for lastname
  element = page.find(account_registerform_taxvat_path)
  element.set(taxvat)
  printValue(:taxvat, binding)
  #set value for password
  element = page.find(account_registerform_street_path)
  element.set(street)
  printValue(:street, binding)
  #set value for postcode
  element = page.find(account_registerform_postcode_path)
  element.set(postcode)
  printValue(:postcode, binding)
  #set value for city
  element = page.find(account_registerform_city_path)
  element.set(city)
  printValue(:city, binding)
  #set value for country
  element = page.find(account_registerform_country_path)
  element.select(country)
  #click button
  element = page.find(account_registerform_button_path)
  element.click
end

Then(/^Shopware should have my order$/) do
  key = "email"
  eMail = user.eMail
  shopware.setDigest(ENV['SHOPWARE_USERNAME'], ENV['SHOPWARE_PASSWORD'], settings.urlHttps)
  puts "cancel orders of customer with #{key}:#{eMail}"
  shopware.updateOrderStatusFor(key, eMail)
end

