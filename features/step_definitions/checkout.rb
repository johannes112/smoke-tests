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
  checkout_backbutton_path = csspathes.checkout_backbutton_path 
  checkout_steps_container_path = csspathes.checkout_steps_container_path 
  checkout_agb_container_path = csspathes.checkout_agb_container_path 
  checkout_billing_container_path = csspathes.checkout_billing_container_path 
  checkout_shipping_container_path = csspathes.checkout_shipping_container_path 
  checkout_payment_container_path = csspathes.checkout_payment_container_path 
  checkout_product_container_path = csspathes.checkout_product_container_path 
  checkout_orderbutton_path = csspathes.checkout_orderbutton_path 
  
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

When(/^I send my order$/) do
  checkout_orderbutton_path = csspathes.checkout_orderbutton_path 
  
  puts "I am on the checkout page"
  step("I am on the checkout page")
  puts "I activate the box of agb"
  step("I activate the box of agb")
  
  element = page.find(checkout_orderbutton_path)
  element.click
  puts "--> click orderbutton"
end

And(/^I activate the box of agb$/) do
  checkout_agb_box_path = csspathes.checkout_agb_box_path 
  
  #step("I am on the checkout page")
  
  element = page.find(checkout_agb_box_path)
  element.click
  puts "-> activate agb"
end

When(/^I go to the checkout$/) do
  
  checkout_panel_path = csspathes.checkout_panel_path 
  checkout_checkout_proceed_button_path = csspathes.checkout_checkout_proceed_button_path 
  
  page.find(checkout_panel_path)
  
  element = page.find(checkout_checkout_proceed_button_path, match: :first)
  element.click
  puts "--> click button to continue"
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
  company_kind = "true"
  #path
  checkout_registerform_path = csspathes.checkout_registerform_path 
  checkout_registerform_prefix_path = csspathes.checkout_registerform_prefix_path
  checkout_registerform_firstname_path = csspathes.checkout_registerform_firstname_path
  checkout_registerform_lastname_path = csspathes.checkout_registerform_lastname_path 
  checkout_registerform_email_path = csspathes.checkout_registerform_email_path 
  checkout_registerform_skip_path = csspathes.checkout_registerform_skip_path 
  checkout_registerform_phone_path = csspathes.checkout_registerform_phone_path 
  checkout_registerform_company_path = csspathes.checkout_registerform_company_path 
  checkout_registerform_checkbox_company_path = csspathes.account_registerform_checkbox_company_path
  checkout_registerform_department_path = csspathes.checkout_registerform_department_path 
  checkout_registerform_taxvat_path = csspathes.checkout_registerform_taxvat_path 
  checkout_registerform_street_path = csspathes.checkout_registerform_street_path 
  checkout_registerform_postcode_path = csspathes.checkout_registerform_postcode_path 
  checkout_registerform_city_path = csspathes.checkout_registerform_city_path 
  checkout_registerform_country_path = csspathes.checkout_registerform_country_path 
  checkout_registerform_button_path = csspathes.checkout_registerform_button_path 

  #search for field, so you know that we are on the right site
  page.find(checkout_registerform_path)
  #set value for prefix
  element = page.find(checkout_registerform_prefix_path)
  element.select(prefix)
  #output
  printValue(:prefix, binding)
  #set value for firstname
  element = page.find(checkout_registerform_firstname_path)
  element.set(firstname)
  printValue(:firstname, binding)
  #set value for lastname
  element = page.find(checkout_registerform_lastname_path)
  element.set(lastname)
  printValue(:lastname, binding)
  #set value for email
  element = page.find(checkout_registerform_email_path)
  element.set(email)
  printValue(:email, binding)
  #skip creation of an account
  page.find(checkout_registerform_skip_path)
  element = page.find(checkout_registerform_skip_path)
  element.click
  #set value for phone
  begin
    element = page.find(checkout_registerform_phone_path)
    element.set(phone)
    printValue(:phone, binding)
  rescue Exception => e
    puts e.message
  end
  #set value for company
  element = page.find(checkout_registerform_company_path)
  element.set(company)
  printValue(:company, binding)
  #company kind
  if company_kind
    element = page.find(checkout_registerform_checkbox_company_path)
    element.click
    puts 'chose company'
  end
  #set value for department
  element = page.find(checkout_registerform_department_path)
  element.set(department)
  printValue(:department, binding)
  #set value for lastname
  element = page.find(checkout_registerform_taxvat_path)
  element.set(taxvat)
  printValue(:taxvat, binding)
  #set value for password
  element = page.find(checkout_registerform_street_path)
  element.set(street)
  printValue(:street, binding)
  #set value for postcode
  element = page.find(checkout_registerform_postcode_path)
  element.set(postcode)
  printValue(:postcode, binding)
  #set value for city
  element = page.find(checkout_registerform_city_path)
  element.set(city)
  printValue(:city, binding)
  #set value for country
  element = page.find(checkout_registerform_country_path)
  element.select(country)
  #click button
  element = page.find(checkout_registerform_button_path)
  element.click
  puts "--> click button to continue"
end

When(/^I set payment and shipping$/) do
  #css pathes
  checkout_payment_form_path = csspathes.checkout_payment_form_path 
  checkout_paymentInAdvance_radio_path = csspathes.checkout_paymentInAdvance_radio_path 
  checkout_payment_continue_path = csspathes.checkout_payment_continue_path 
  checkout_payment_delivery_standard_radio_path = csspathes.checkout_payment_delivery_standard_radio_path

  page.find(checkout_payment_form_path)
  #set payment
  element = page.find(checkout_paymentInAdvance_radio_path)
  element.click
  puts "-> choose payment"
  #set delivery
  element = page.find(checkout_payment_delivery_standard_radio_path)
  element.click
  puts "-> choose delivery"
  element = find(checkout_payment_continue_path, match: :first)
  element.click
  puts "--> click button to continue"
end

Then(/^Shopware should have my order$/) do
  key = "email"
  eMail = user.eMail
  url_part = 'finish'
  
  checkout_order_success_teaser = csspathes.checkout_order_success_teaser_path
  page.find(checkout_order_success_teaser)
  puts "> found teaser for success"
  
  expect(current_url).to include(url_part),
    "Expected to be at #{url_part} but i am on #{current_url}"
    
  shopware.setDigest(ENV['SHOPWARE_USERNAME'], ENV['SHOPWARE_PASSWORD'], settings.urlHttps)
  puts ">> cancel orders of customer with #{key}:#{eMail}"
  shopware.updateOrderStatusForMail(eMail)
  #shopware.updateOrderStatusFor(key, eMail)
end

