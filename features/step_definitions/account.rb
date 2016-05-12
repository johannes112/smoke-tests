#account
Given(/^I am on the registration page$/) do
  #var
  url = settings.urlHttps+'account'
  puts "go to #{url}"
  
  #got to url
  visit(url)
end

Given(/^no user account with my data exists$/) do
  
end

When(/^I create an new account with my data$/) do
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
  account_registerform_path = '#registration'
  account_registerform_prefix_path = 'div.panel.register--personal > div > div.register--salutation.field--select'
  account_registerform_firstname_path = '#firstname'
  account_registerform_lastname_path = '#lastname'
  account_registerform_department_path = '#register_billing_department'
  account_registerform_taxvat_path = '#register_billing_ustid'
  account_registerform_email_path = '#register_personal_email'
  account_registerform_password_path = '#register_personal_password'
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
  #set value for password
  element = page.find(account_registerform_password_path)
  element.set(password)
  printValue(:password, binding)
  #set value for phone
  element = page.find(account_registerform_phone_path)
  element.set(phone)
  printValue(:phone, binding)
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

Then(/^I should be on my account page$/) do
  #var
  email = user.eMail
  
  page.find('div.account--welcome.panel')
  element = page.find('div.account--info')
  infobox_txt = element.text
  
  expect(infobox_txt).to include(email),
      "expect to find the mailadress (#{email}) in the infobox but it only contains #{infobox_txt}"
  puts "The page contains #{email}"
end

When(/^I login with valid informations$/) do
  #var
  email = user.eMail
  password = user.password
  
  #path
  account_loginform_emailfield_path = '#email'
  account_loginform_passwordfield_path = '#passwort'
  account_loginform_registerbutton_path = 'div.register--login-action > button'
  #account__loginform_error_path = 'div.account--error'
  
  #search for field, so you know that we are on the right site
  page.find(account_loginform_emailfield_path)
  #set value for mail
  element = page.find(account_loginform_emailfield_path)
  element.set(email)
  #set value for password
  element = page.find(account_loginform_passwordfield_path)
  element.set(password)
  #click button
  element = page.find(account_loginform_registerbutton_path)
  element.click

end