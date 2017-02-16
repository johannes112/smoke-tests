#checkout
Given(/^I am on the checkout page$/) do
  checkout_checkout_proceed_button_path = csspathes.checkout_checkout_proceed_button_path
  checkout_step_confirm_path = csspathes.checkout_step_confirm_path
  
  if (page.has_css?(checkout_step_confirm_path)) 
    puts "I am already on the final checkout page"
  else
    puts "--> click continue"
    element = page.find(checkout_checkout_proceed_button_path, match: :first)
    element.click
    puts "-> set payment and shipping"
    step("I set payment and shipping")
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
  if ENV['SYSTEM'] == 'live'
    puts "> found orderbutton but not press"
    next
  else
    element.click
    puts "--> click orderbutton"
  end
end

And(/^I activate the box of agb$/) do
  checkout_agb_box_path = csspathes.checkout_agb_box_path 
  
  element = page.find(checkout_agb_box_path)
  element.click
  puts "-> activate agb"
end

When(/^I go to the checkout$/) do
  checkout_panel_path = csspathes.checkout_panel_path 
  checkout_checkout_proceed_button_path = csspathes.checkout_checkout_proceed_button_path 
  navigation_path = csspathes.navigation_path
  
  block_css(navigation_path)
  
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
  taxid = user.taxid
  taxvat = user.taxvat
  customer_number = user.customer_number
  email = user.eMail
  skip = "skip only export and chefworks because this field has different meaning on all other templates of our shops"
  phone = user.telephone
  company = user.company
  company_kind = user.company_kind
  street = user.street
  streetnumber = user.streetnumber
  postcode = user.postcode
  city = user.city
  country = user.country

  #path
  checkout_registerform_path = csspathes.account_registerform_path
  checkout_registerform_prefix_path = csspathes.account_registerform_prefix_path
  checkout_registerform_firstname_path = csspathes.account_registerform_firstname_path
  checkout_registerform_lastname_path = csspathes.account_registerform_lastname_path
  checkout_registerform_department_path = csspathes.account_registerform_department_path
  checkout_registerform_taxid_path = csspathes.account_registerform_taxid_path
  checkout_registerform_taxvat_path = csspathes.account_registerform_taxvat_path
  checkout_registerform_customernumber_path = csspathes.account_registerform_customernumber_path
  checkout_registerform_email_path = csspathes.account_registerform_email_path
  checkout_registerform_skip_path = csspathes.checkout_registerform_skip_path ####################################################
  checkout_registerform_phone_path = csspathes.account_registerform_phone_path
  checkout_registerform_company_path = csspathes.account_registerform_company_path
  checkout_registerform_checkbox_company_path = csspathes.account_registerform_checkbox_company_path
  checkout_registerform_street_path = csspathes.account_registerform_street_path
  checkout_registerform_streetnumber_path = csspathes.account_registerform_streetnumber_path
  checkout_registerform_postcode_path = csspathes.account_registerform_postcode_path
  checkout_registerform_city_path = csspathes.account_registerform_city_path
  checkout_registerform_country_path = csspathes.account_registerform_country_path
  checkout_registerform_button_path = csspathes.account_registerform_button_path
  
  #search for field, so you know that we are on the right site
  page.find(checkout_registerform_path)
  #set value for prefix
  
  element = page.find(checkout_registerform_prefix_path)
  element.select(prefix)
  printValue(:prefix, binding)
  #set value for firstname
  setAtrributOfArticle("firstname", firstname, checkout_registerform_firstname_path)
  #set value for lastname
  setAtrributOfArticle("lastname", lastname, checkout_registerform_lastname_path)
  #set value for customernumber
  setAtrributOfArticle("customernumber", customer_number, checkout_registerform_customernumber_path)
  #set value for email
  setAtrributOfArticle("email", email, checkout_registerform_email_path)
  #set value to skip registering
  if (ENV['SHOP'] == 'export' || ENV['SHOP'] == 'chefworks')
    element = page.find(checkout_registerform_skip_path)
    element.click
  end
  #set value for phone
  begin #rescuse in cause of the difference of live and int in chefworks
    setAtrributOfArticle("phone", phone, checkout_registerform_phone_path)
  rescue Exception => e
    puts e.message
  end
  #set value for company
  setAtrributOfArticle("company", company, checkout_registerform_company_path)
  #click on kind of company if the box should be visible
  if company_kind
    element = page.find(checkout_registerform_checkbox_company_path)
    element.click
    puts 'chose company'
  end
  #set value for department
  setAtrributOfArticle("department", department, checkout_registerform_department_path) #############################################################
  #set value for id
  setAtrributOfArticle("taxid", taxid, checkout_registerform_taxid_path)
  #set value for vat
  setAtrributOfArticle("taxvat", taxvat, checkout_registerform_taxvat_path)
  #set value for street
  setAtrributOfArticle("street", street, checkout_registerform_street_path)
  #set streetnumber 
  setAtrributOfArticle("streetnumber", streetnumber, checkout_registerform_streetnumber_path)
  #set value for postcode
  setAtrributOfArticle("postcode", postcode, checkout_registerform_postcode_path)
  #set value for city
  setAtrributOfArticle("city", city, checkout_registerform_city_path)
  #set value for country
  element = page.find(checkout_registerform_country_path)
  element.select(country)
  #click button
  element = page.find(checkout_registerform_button_path)
  element.click
  puts "clicked button to continue"
end

When(/^I set payment and shipping$/) do
  #css pathes
  checkout_step_payment_path = csspathes.checkout_step_payment_path
  checkout_payment_form_path = csspathes.checkout_payment_form_path 
  checkout_payment_options_path = csspathes.checkout_payment_options_path
  checkout_delivery_options_path = csspathes.checkout_delivery_options_path
  checkout_paymentInAdvance_radio_path = csspathes.checkout_paymentInAdvance_radio_path 
  checkout_payment_continue_path = csspathes.checkout_payment_continue_path 
  checkout_payment_delivery_standard_radio_path = csspathes.checkout_payment_delivery_standard_radio_path
  checkout_orderbutton_path = csspathes.checkout_orderbutton_path
  checkout_step_confirm_path = csspathes.checkout_step_confirm_path

  if (page.has_css?(checkout_step_payment_path)) 
    puts "I am here: #{current_url}"
    page.find(checkout_payment_form_path)
    
    #set payment
    if (page.has_css?(checkout_payment_options_path))
      element = page.find(checkout_paymentInAdvance_radio_path)
      element.click
      puts "-> choose payment"
    else
      puts "----> there are no options to choose for payment"
    end
    
    #set delivery
    if (page.has_css?(checkout_delivery_options_path))
      element = find_secure(checkout_payment_delivery_standard_radio_path, page.html)
      #element = find(checkout_payment_delivery_standard_radio_path)
      element.click
      puts "-> choose delivery"
    else
      puts "----> there are no options to choose for delivery"
    end
    
    element = find(checkout_payment_continue_path, match: :first)
    element.click
    puts "--> click button to continue"
  elsif (page.has_css?(checkout_step_confirm_path))
    puts "I am already on the final checkoutpage"
  else
    puts "current_url:#{current_url}"
  end
end

Then(/^Shopware should have my order$/) do
  if ENV['SYSTEM'] == 'live'
    puts "> Shopware can not have my order because i have not pressed the orderbutton"
    next
  else
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
end

