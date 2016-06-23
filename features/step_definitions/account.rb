#account
Given(/^I am on the registration page$/) do
  #var
  url = settings.urlHttps+'account'
  puts "--> go to #{url}"
  
  #got to url
  visit(url)
end

And(/^no user account with my email exists$/) do
  eMail = user.eMail
  key = "email"
  shopware.setDigest(ENV['SHOPWARE_USERNAME'], ENV['SHOPWARE_PASSWORD'], settings.urlHttps)
  puts shopware.deleteDataByKey("Customers", key, eMail)
end

Given(/^I already created an user account$/) do
  eMail = user.eMail
  key = "email"
  shopware.setDigest(ENV['SHOPWARE_USERNAME'], ENV['SHOPWARE_PASSWORD'], settings.urlHttps)
  customer_id_determined = shopware.getDataByKey("customers", key, eMail)
  if customer_id_determined.is_a?(String)
    puts "-> no unique account with #{key}:#{eMail} exists"
    puts "I am on the registration page"
    step("I am on the registration page")
    puts "I create a new account with my data"
    step("I create a new account with my data")
    puts "I log me out"
    step("I log me out")
    puts "I am on the registration page"
    step("I am on the registration page")
  else
    puts   "-> there exists an unique account"
  end
end

When(/^I create a new account with my data$/) do
  #var
  prefix = user.prefix
  firstname = user.firstname
  lastname = user.lastname
  department = user.department
  taxvat = user.taxvat
  email = user.eMail
  password = user.password
  phone = user.telephone
  company = user.company
  street = user.street
  postcode = user.postcode
  city = user.city
  country = user.country
  
  #path
  account_registerform_path = csspathes.account_registerform_path
  account_registerform_prefix_path = csspathes.account_registerform_prefix_path
  account_registerform_firstname_path = csspathes.account_registerform_firstname_path
  account_registerform_lastname_path = csspathes.account_registerform_lastname_path
  account_registerform_department_path = csspathes.account_registerform_department_path
  account_registerform_taxvat_path = csspathes.account_registerform_taxvat_path
  account_registerform_email_path = csspathes.account_registerform_email_path
  account_registerform_password_path = csspathes.account_registerform_password_path
  account_registerform_phone_path = csspathes.account_registerform_phone_path
  account_registerform_company_path = csspathes.account_registerform_company_path
  account_registerform_street_path = csspathes.account_registerform_street_path
  account_registerform_postcode_path = csspathes.account_registerform_postcode_path
  account_registerform_city_path = csspathes.account_registerform_city_path
  account_registerform_country_path = csspathes.account_registerform_country_path
  account_registerform_button_path = csspathes.account_registerform_button_path
  
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
  #set value for password
  element = page.find(account_registerform_password_path)
  element.set(password)
  printValue(:password, binding)
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
  puts "clicked button to continue"
end

Then(/^I should be on my account page$/) do
  #var
  email = user.eMail
  
  account_accountpage_welcome_path = csspathes.account_accountpage_welcome_path
  account_accountpage_info_path = csspathes.account_accountpage_info_path
  
  page.find(account_accountpage_welcome_path)
  element = page.find(account_accountpage_info_path)
  infobox_txt = element.text
  
  expect(infobox_txt).to include(email),
      "expect to find the mailadress (#{email}) in the infobox but it only contains #{infobox_txt}"
  puts "> the page contains #{email}"
end

When(/^I login with valid informations$/) do
  #var
  email = user.eMail
  password = user.password
  url_account = settings.urlHttps+'account'
  
  #path
  account_loginform_emailfield_path = csspathes.account_loginform_emailfield_path
  account_loginform_passwordfield_path = csspathes.account_loginform_passwordfield_path
  account_loginform_registerbutton_path = csspathes.account_loginform_registerbutton_path
  
  if (current_url == url_account) 
    puts "> ok, i am on #{current_url}"
  else
    puts "--> go to #{url_account}"
    visit(url_account)
  end
  
  #search for field, so you know that we are on the right site
  page.find(account_loginform_emailfield_path)
  #set value for mail
  element = page.find(account_loginform_emailfield_path)
  element.set(email)
  puts "-> set email"
  #set value for password
  element = page.find(account_loginform_passwordfield_path)
  element.set(password)
  puts "-> set password"
  #click button
  element = page.find(account_loginform_registerbutton_path)
  element.click
  puts "--> pushed button for registration"
end

Given(/^I am logged in$/) do
  puts "I already created an user account"
  step ("I already created an user account")
  puts "I login with valid informations"
  step ("I login with valid informations")
  puts "I should be on my account page"
  step ("I should be on my account page")
end

When(/^I modify my address$/) do
  # define css pathes
  #step("I modify my userinfo")
  # split this big step into 4 babysteps: And(I modify my userinfo), And(I change my payment), And(I change my billing address), And(I modify my deliveryadress)
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
  
  account_userinfo_emailchange_currentpassword_path = csspathEs.account_userinfo_emailchange_currentpassword_path
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
     "Expect to find an hint for success, but account_userinfo_success_hint_path is not available"
end

When(/^I delete the account with the modified mailadress$/) do
  eMail = user.eMail_sec
  key = "email"
  shopware.setDigest(ENV['SHOPWARE_USERNAME'], ENV['SHOPWARE_PASSWORD'], settings.urlHttps)
  puts shopware.deleteDataByKey("Customers", key, eMail)
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
  element = page.find(account_payment_cashOnDelivery_path)
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

When(/^I activate the newsletterbox$/) do
  account_newsletter_box_path = csspathes.account_newsletter_box_path
  
  element = page.find(account_newsletter_box_path)
  element.click
  puts "--> activate the checkbox"
end

#it is not implemented
When(/^I get all items of the sidebar$/) do
  account_sidebar_path = csspathes.account_sidebar_path
  
  #account_sidebar_menuitems = page.find(account_sidebar_path).all('li')
  account_sidebar_menuitems = page.find(account_sidebar_path).all('li a')
  #account_sidebar_menuitems.all('li').map { |li| li.find('a')['href'] }
  puts "> menuitems:#{account_sidebar_menuitems.size}"
  account_sidebar_menuitems.each { 
    |x| 
    account_sidebar_menuitems_href = /\b[a-z]*\z\b/.match(x[:href]) 
    puts "- #{account_sidebar_menuitems_href}"
  }
end

