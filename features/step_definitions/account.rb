#account

Given(/^I am on the registration page$/) do
  #var
  url = "#{settings.urlHttps}account"
  puts "--> go to #{url}"
  
  #got to url
  visit(url)
  block_css('.navigation-main')  
end

And(/^no user account with my email exists$/) do
  eMail = user.eMail
  puts "UrlBackend:#{settings.urlBackend}"
  puts "user eMail:#{eMail}"
  #key = "email"
  shopware.setDigest(ENV['SHOPWARE_USERNAME'], ENV['SHOPWARE_PASSWORD'], settings.urlBackend)
  #puts shopware.deleteDataByKey("Customers", key, eMail)
  shopware.deleteCustomerByMail(eMail)
end

Given(/^I already created an user account$/) do
  #puts Time.now
  eMail = user.eMail
  shopware.setDigest(ENV['SHOPWARE_USERNAME'], ENV['SHOPWARE_PASSWORD'], settings.urlBackend)
  customer_id_determined = shopware.getCustomerIdByMail(eMail)
  if customer_id_determined.is_a?(String)
    puts "-> no unique account with customer:#{eMail} exists"
   # puts Time.now
    puts "I am on the registration page"
    step("I am on the registration page")
    #puts Time.now
    puts "I create a new account with my data"
    step("I create a new account with my data")
    #puts Time.now
    puts "I log me out"
    step("I log me out")
    #puts Time.now
    puts "I am on the registration page"
    #step("I am on the registration page")
    puts Time.now
  else
    puts   "-> there exists an unique account"
    #puts Time.now
  end
end

When(/^I create a new account with my data$/) do
  #var
  prefix = user.prefix
  firstname = user.firstname
  lastname = user.lastname
  department = user.department
  taxid = user.taxid
  taxvat = user.taxvat
  email = user.eMail
  customer_number = user.customer_number
  password = user.password
  phone = user.telephone
  company = user.company
  company_kind = user.company_kind
  street = user.street
  streetnumber = user.streetnumber
  postcode = user.postcode
  city = user.city
  country = user.country
  
  #path
  account_registerform_path = csspathes.account_registerform_path
  account_registerform_prefix_path = csspathes.account_registerform_prefix_path
  account_registerform_firstname_path = csspathes.account_registerform_firstname_path
  account_registerform_lastname_path = csspathes.account_registerform_lastname_path
  account_registerform_department_path = csspathes.account_registerform_department_path
  account_registerform_taxid_path = csspathes.account_registerform_taxid_path
  account_registerform_taxvat_path = csspathes.account_registerform_taxvat_path
  account_registerform_customernumber_path = csspathes.account_registerform_customernumber_path
  account_registerform_email_path = csspathes.account_registerform_email_path
  account_registerform_password_path = csspathes.account_registerform_password_path
  account_registerform_phone_path = csspathes.account_registerform_phone_path
  account_registerform_company_path = csspathes.account_registerform_company_path
  account_registerform_checkbox_company_path = csspathes.account_registerform_checkbox_company_path
  account_registerform_street_path = csspathes.account_registerform_street_path
  account_registerform_streetnumber_path = csspathes.account_registerform_streetnumber_path
  account_registerform_postcode_path = csspathes.account_registerform_postcode_path
  account_registerform_city_path = csspathes.account_registerform_city_path
  account_registerform_country_path = csspathes.account_registerform_country_path
  account_registerform_button_path = csspathes.account_registerform_button_path
  
  #search for field, so you know that we are on the right site
  page.find(account_registerform_path)
  registerform = page.find(account_registerform_path)
  
  #set value for prefix
  #page.find(account_registerform_prefix_path).select(prefix)
  registerform.find(account_registerform_prefix_path).select(prefix)
  #printValue(:prefix, binding)
  #set value for firstname
  #registerform.find(account_registerform_firstname_path).set(firstname)
  form_set_value(registerform, "firstname", firstname, account_registerform_firstname_path)
  #set value for lastname
  #registerform.find(account_registerform_lastname_path).set(lastname)
  form_set_value(registerform, "lastname", lastname, account_registerform_lastname_path)
  #set value for customernumber
  form_set_value(registerform, "customernumber", customer_number, account_registerform_customernumber_path)
  #set value for email
  form_set_value(registerform, "email", email, account_registerform_email_path)
  #set value for password
  form_set_value(registerform, "password", password, account_registerform_password_path)
  #set value for phone
  form_set_value(registerform, "phone", phone, account_registerform_phone_path)
  #set value for company
  form_set_value(registerform, "company", company, account_registerform_company_path)
  #click on kind of company if the box should be visible
  if company_kind
    element = page.find(account_registerform_checkbox_company_path)
    element.click
    puts 'chose company'
  end
  #set value for department
  form_set_value(registerform, "department", department, account_registerform_department_path)
  #set value of taxid
  form_set_value(registerform, "taxid", taxid, account_registerform_taxid_path)
  #set value for vat
  form_set_value(registerform, "taxvat", taxvat, account_registerform_taxvat_path)
  #set value for street
  form_set_value(registerform, "street", street, account_registerform_street_path)
  #set streetnumber 
  form_set_value(registerform, "streetnumber", streetnumber, account_registerform_streetnumber_path)
  #set value for postcode
  form_set_value(registerform, "postcode", postcode, account_registerform_postcode_path)
  #set value for city
  form_set_value(registerform, "city", city, account_registerform_city_path)
  #set value for country
  element = page.find(account_registerform_country_path)
  element.select(country)
  #click button
  element = page.find(account_registerform_button_path)
  element.click
  puts "clicked button to continue"
  
end

Then(/^I should be on my account page$/) do
  #var
  email = user.eMail
  
  account_accountpage_welcome_path = csspathes.account_accountpage_welcome_path
  account_accountpage_info_path = csspathes.account_accountpage_info_path
  account_registerform_vallidation_modal_path = '.replyGoogleMapsAddressValidation'
  account_registerform_vallidation_ignore_path = '.modal-ignore'
  
  
  if (page.has_css?(account_registerform_vallidation_modal_path))
    element = page.find(account_registerform_vallidation_ignore_path)
    element.click
  end
  puts "current_url:#{current_url}"
  
  expect(page).to have_css(account_accountpage_welcome_path),
     "expected to see a welcome message but there is no #{account_accountpage_welcome_path} I am not logged in"
  page.find(account_accountpage_info_path)
  element = page.find(account_accountpage_info_path)
  infobox_txt = element.text
  
  expect(infobox_txt).to include(email),
      "expect to find the mailadress (#{email}) in the infobox but it only contains #{infobox_txt}"
  puts "> the page contains #{email}"
end

When(/^I login with valid informations$/) do
  puts "I LOGIN WITH VALID IMFO"
  #var1
  email = user.eMail
  password = user.password
  url_account = settings.urlHttps+'account'
  puts Time.now

  
  #path
  account_loginform_emailfield_path = csspathes.account_loginform_emailfield_path
  account_loginform_passwordfield_path = csspathes.account_loginform_passwordfield_path
  account_loginform_registerbutton_path = csspathes.account_loginform_registerbutton_path
  account_accountpage_welcome_path = csspathes.account_accountpage_welcome_path
  
  puts "WHICH URL"
  puts Time.now
  if (current_url == url_account) 
    puts "> ok, I am on #{current_url}"
    puts Time.now
  else
    puts "--> go to #{url_account}"
    puts Time.now
    visit(url_account)
      
    #hide
    block_css('.navigation-main')
  end
  puts "HAS CSS?"
  puts Time.now
  if (page.has_css?(account_accountpage_welcome_path))
    puts "> and I am already be in my account"
    puts Time.now
  else
    puts "NO CSS"
    puts Time.now
    #search for field, so you know that we are on the right site
    page.find('.register--existing-customer')
    puts "FOUND FORM"
    puts Time.now
    login_form = page.find('.register--existing-customer')
    puts "DEFINED FORM"
    puts Time.now
    #set value for mail
    form_set_value(login_form, "email", email, account_loginform_emailfield_path)
    #element = page.find(account_loginform_emailfield_path)
    #element.set(email)
    puts "-> set email"
    puts Time.now
    #set value for password
    form_set_value(login_form, "password", password, account_loginform_passwordfield_path)
    #element = page.find(account_loginform_passwordfield_path)
    #element.set(password)
    puts "-> set password"
    puts Time.now
    #click button
    page.find(account_loginform_registerbutton_path).click
    puts "--> pushed button for registration"
    puts Time.now
  end
end

Given(/^I am logged in$/) do
  #puts "I already created an user account"
  #step ("I already created an user account")
  puts "I login with valid informations"
  step ("I login with valid informations")
  puts "I should be on my account page"
  step ("I should be on my account page")
end

When("I modify my userinfo") do
  puts "I change my password"
  step("I change my password")
  puts "I change my emailaddress"
  step("I change my emailaddress")
  puts "I delete the account with the modified mailadress"
  step("I delete the account with the modified mailadress")
end

When(/^I change my password$/) do
  password = user.password
  password_sec = user.password_sec
  # define css pathes
  account_userinfo_passwordchange_button_appear_path = csspathes.account_userinfo_passwordchange_button_appear_path
  account_userinfo_passwordchange_currentpassword_path = csspathes.account_userinfo_passwordchange_currentpassword_path
  account_userinfo_passwordchange_newpassword_path = csspathes.account_userinfo_passwordchange_newpassword_path
  account_userinfo_passwordchange_repeatnewpassword_path = csspathes.account_userinfo_passwordchange_repeatnewpassword_path
  account_userinfo_passwordchange_button_path = csspathes.account_userinfo_passwordchange_button_path
  
  element = page.find(account_userinfo_passwordchange_button_appear_path)
  element.click
  page.find(account_userinfo_passwordchange_currentpassword_path)
  element = page.find(account_userinfo_passwordchange_currentpassword_path)
  element.set(password)
  element = page.find(account_userinfo_passwordchange_newpassword_path)
  element.set(password_sec)
  element = page.find(account_userinfo_passwordchange_repeatnewpassword_path)
  element.set(password_sec)
  element = page.find(account_userinfo_passwordchange_button_path)
  element.click
  
  puts "--> changed password"
end

When(/^I change my emailaddress$/) do
  eMail_sec = user.eMail_sec
  password_sec = user.password_sec
  # define css pathes
  account_userinfo_emailchange_button_appear_path = csspathes.account_userinfo_emailchange_button_appear_path
  
  account_userinfo_emailchange_currentpassword_path = csspathes.account_userinfo_emailchange_currentpassword_path
  account_userinfo_emailchange_newmail_path = csspathes.account_userinfo_emailchange_newmail_path
  account_userinfo_emailchange_repeatnewmail_path = csspathes.account_userinfo_emailchange_repeatnewmail_path
  account_userinfo_emailchange_button_path = csspathes.account_userinfo_emailchange_button_path
  
  element = page.find(account_userinfo_emailchange_button_appear_path)
  element.click
  page.find(account_userinfo_emailchange_currentpassword_path)
  element = page.find(account_userinfo_emailchange_currentpassword_path)
  element.set(password_sec)
  element = page.find(account_userinfo_emailchange_newmail_path)
  element.set(eMail_sec)
  element = page.find(account_userinfo_emailchange_repeatnewmail_path)
  element.set(eMail_sec)
  element = page.find(account_userinfo_emailchange_button_path)
  element.click
  
  puts "--> changed emailaddress"
end

Then(/^I should see a confirmation hint$/) do
  account_userinfo_success_hint_path = csspathes.account_userinfo_success_hint_path
  
  page.find(account_userinfo_success_hint_path)
  puts "> found info for success"
  
  expect(page).to have_css(account_userinfo_success_hint_path), 
     "Expect to find a hint for success, but account_userinfo_success_hint_path is not available"
end

Then(/^I should see an alert for creating a new address$/) do
  account_userinfo_success_hint_path = ".alert--content"
  
  page.find(account_userinfo_success_hint_path)
  puts "> found info for success"
  
  expect(page).to have_css(account_userinfo_success_hint_path), 
     "Expect to find an hint for success, but account_userinfo_success_hint_path is not available"
end

When(/^I delete the account with the modified mailadress$/) do
  eMail = user.eMail_sec
  #key = "email"
  shopware.setDigest(ENV['SHOPWARE_USERNAME'], ENV['SHOPWARE_PASSWORD'], settings.urlBackend)
  #puts shopware.deleteDataByKey("Customers", key, eMail)
  shopware.deleteCustomerByMail(eMail)
end

When(/^I log me out$/) do
  #css pathes
  account_accountinfo_menucontainer_logout_link_path = csspathes.account_accountinfo_menucontainer_logout_link_path
  
  element = page.find(account_accountinfo_menucontainer_logout_link_path)
  element.click
  puts "--> logged me out"
end

When(/^I modify my paymentinfo$/) do
  #css pathes
  account_accountinfo_payment_box_path = csspathes.account_accountinfo_payment_box_path
  account_accountinfo_paymentchange_button_appear_path = csspathes.account_accountinfo_paymentchange_button_appear_path
  
  account_accountinfo_payment_box = page.find(account_accountinfo_payment_box_path)
  element = account_accountinfo_payment_box.find(account_accountinfo_paymentchange_button_appear_path)
  element.click
  puts "--> clicked button for change of payment"
  
  puts "I change option of payment"
  step("I change option of payment")
end

When(/^I change option of payment$/) do
  account_payment_paymentoptions_path = csspathes.account_payment_paymentoptions_path
  account_payment_cashOnDelivery_path = csspathes.account_payment_cashOnDelivery_path
  
  account_payment_change_button_path = csspathes.account_payment_change_button_path
  
  page.find(account_payment_paymentoptions_path)
  element = find_secure(account_payment_cashOnDelivery_path, page.html)
  element.click
  puts "--> chose checkbox for cash on delivery"
  
  element = page.find(account_payment_change_button_path)
  element.click
end

When(/^I modify my address for my bill$/) do
  #css pathes
  account_accountinfo_billaddress_box_path = csspathes.account_accountinfo_billaddress_box_path
  account_accountinfo_billaddresschange_button_appear_path = csspathes.account_accountinfo_billaddresschange_button_appear_path
  
  account_accountinfo_billaddresschange_box = page.find(account_accountinfo_billaddress_box_path)
  element = account_accountinfo_billaddresschange_box.find(account_accountinfo_billaddresschange_button_appear_path)
  element.click
  puts "--> clicked button for change the adress of billing"
  
  puts "I change prefix of my address for invoice"
  step("I change prefix of my address for invoice")
end

When(/^I change prefix of my address for invoice$/) do
  prefix = user.prefix_sec
  
  account_invoiceadresschange_form_prefix_path = csspathes.account_invoiceadresschange_form_prefix_path
  
  account_invoiceadresschange_button_path = csspathes.account_invoiceadresschange_button_path
  
  #set value for prefix
  page.find(account_invoiceadresschange_form_prefix_path)
  element = page.find(account_invoiceadresschange_form_prefix_path)
  element.select(prefix)
  puts "--> select prefix:#{prefix}"
  
  element = page.find(account_invoiceadresschange_button_path)
  element.click
  puts "--> click change-button"
end

When(/^I add a new address$/) do
  # define variables
  prefix = user.prefix_sec
  firstname = user.firstname
  lastname = user.lastname
  phone = user.telephone
  company = user.company
  street = user.street
  streetnumber = user.streetnumber
  postcode = user.postcode
  city = user.city
  country = user.country
  
  # define css pathes
  account_address_create_path = csspathes.account_address_create_path
  account_address_prefix_path = csspathes.account_address_prefix_path
  account_address_firstname_path = csspathes.account_address_firstname_path
  account_address_lastname_path = csspathes.account_address_lastname_path
  account_address_phone_path = csspathes.account_address_phone_path
  account_address_company_path = csspathes.account_address_company_path
  account_address_street_path = csspathes.account_address_street_path
  account_address_streetnumber_path = csspathes.account_address_streetnumber_path
  account_address_postcode_path = csspathes.account_address_postcode_path
  account_address_city_path = csspathes.account_address_city_path
  account_address_country_path = csspathes.account_address_country_path
  account_address_savebutton_path = csspathes.account_address_savebutton_path
  
  page.find(account_address_create_path)
  puts "> found formular to add a new address"
  account_addressform = page.find(account_address_create_path)
  #select prefix
  puts "prefix:#{prefix}"
  element = page.find(account_address_prefix_path)
  element.select(prefix)
  #set value for firstname
  form_set_value(account_addressform, "firstname", firstname, account_address_firstname_path)
  #set value for lastname
  form_set_value(account_addressform, "lastname", lastname, account_address_lastname_path)
  #set value for phone
  form_set_value(account_addressform, "phone", phone, account_address_phone_path)
  #set value for company
  form_set_value(account_addressform, "company", company, account_address_company_path)
    #set value for street
  form_set_value(account_addressform, "street", street, account_address_street_path)
  #set streetnumber 
  form_set_value(account_addressform, "streetnumber", streetnumber, account_address_streetnumber_path)
  #set value for postcode
  form_set_value(account_addressform, "postcode", postcode, account_address_postcode_path)
  #set value for city
  form_set_value(account_addressform, "city", city, account_address_city_path)
  #set value for country
  form_set_dropdown(account_addressform, "country", country, account_address_country_path)
  #click button for taking action
  element = account_addressform.find(account_address_savebutton_path)
  element.click
  puts "> clicked button to save address"
end

When(/^I modify my address for my delivery/) do
  #css pathes
  account_accountinfo_deliveraddress_box_path = csspathes.account_accountinfo_deliveraddress_box_path
  account_accountinfo_deliveraddresschange_button_appear_path = csspathes.account_accountinfo_deliveraddresschange_button_appear_path
  
  account_accountinfo_deliveraddresschange_box = page.find(account_accountinfo_deliveraddress_box_path)
  element = account_accountinfo_deliveraddresschange_box.find(account_accountinfo_deliveraddresschange_button_appear_path)
  element.click
  puts "--> clicked button for change the adress for delivery"
  puts "I change prefix of my address for delivery"
  step("I change prefix of my address for delivery")
end

When(/^I change prefix of my address for delivery$/) do
  prefix = user.prefix_sec
  
  account_deliveradresschange_form_prefix_path = csspathes.account_deliveradresschange_form_prefix_path
  account_deliveradresschange_button_path = csspathes.account_deliveradresschange_button_path

  #set value for prefix
  page.find(account_deliveradresschange_form_prefix_path)
  element = page.find(account_deliveradresschange_form_prefix_path)
  element.select(prefix)
  puts "--> select prefix:#{prefix}"
  
  element = page.find(account_deliveradresschange_button_path)
  element.click
  puts "--> click change-button"
end

#it is not working on pulsiva
When(/^I activate the newsletterbox$/) do
  account_newsletter_box_path = csspathes.account_newsletter_box_path
  
  page.find(account_newsletter_box_path)
  element = page.find(account_newsletter_box_path)
  element.click
  puts "--> activate the checkbox"
end

#it is not implemented
When(/^I get all items of the sidebar$/) do
  account_sidebar_path = csspathes.account_sidebar_path
  
  account_sidebar_menuitems = page.find(account_sidebar_path).all('li a')
  puts "> menuitems:#{account_sidebar_menuitems.size}"
  account_sidebar_menuitems.each { 
    |x| 
    account_sidebar_menuitems_href = /\b[a-z]*\z\b/.match(x[:href]) 
    puts "- #{account_sidebar_menuitems_href}"
  }
end

