#product_page
Given(/^I am on the product page of an article$/) do
  step("I am on the website")
  step("I am for an product by entering the sku in the searchfield")
  step("I should be on the detailsite of the related product")
end

When(/^I add an article to the product cart by clicking the button to push it into the cart$/) do
  #var
  product_page_buybutton_path = csspathes.product_page_buybutton_path
  
  page.find(product_page_buybutton_path)
  element = page.find(product_page_buybutton_path)
  element.click
  puts "-> clicked buy button"
end

Then(/^I should see the cart on the right of the site$/) do
  product_page_infobox_path = csspathes.product_page_infobox_path
  
  page.find(product_page_infobox_path)
end

Then(/^I should see this article in the product cart$/) do
  #define sku for product
  #define path for product
  #visit url for cart
  #find block of productinfo
  #find text of sku in text of productinfo
  #expect
  sku = article.sku
  url_website = settings.urlHttps
  url_productcart = 'checkout/cart'
  url_cart = url_website+url_productcart
  product_cart_productinfo_path = csspathes.product_cart_productinfo_path
  
  vistit(url_cart)
  page.find(product_cart_productinfo_path)
  element = page.find(product_cart_productinfo_path)
  productinfo_txt = element.text 
  
  #check for success
  expect(current_url).to eq(url_cart),
     "Expect url of the cart (#{url_cart}) but it was still #{current_url}"
  expect(productinfo_txt).to include(sku),
     "Expect to find the sku (#{sku}) in the block of the productinfo_txt but only found (#{productinfo_txt})"
  
end

Then(/^I should see all necessary elememts for getting more informations about this article$/) do
  # define name
  name = article.name 
  
  # define path of name
  product_page_productname_path = csspathes.product_page_productname_path
  # define path of product_picture
  product_page_productpicture_path = csspathes.product_page_productpicture_path
  # define path of product_configuration
  product_page_productconfig_path = csspathes.product_page_productconfig_path
  # define path of product_information
  product_page_productinfo_path = csspathes.product_page_productinfo_path
  # define path of product_recommodations
  product_page_productrecommodations_path = csspathes.product_page_productrecommodations_path
  # define path of product_information
  product_page_productlast_path = csspathes.product_page_productlast_path
  
  # expect name_path include name
  productname_element = page.find(product_page_productname_path)
  productname_txt = productname_element.text 
  expect(productname_txt).to include(name),
      "Expect to find the name (#{name}) on the productsite but only found (#{productname_txt})"
  # expect page has css for productpicture
  expect(page).to have_css(product_page_productpicture_path),
      "Expect to find the css-element (#{product_page_productpicture_path}) but the page with the url #{current_url} has no such element"
  # expect page has css of productconfiguration
  expect(page).to have_css(product_page_productconfig_path),
      "Expect to find the css-element (#{product_page_productconfig_path}) but the page with the url #{current_url} has no such element"
  # expect page has css of productinformation
  expect(page).to have_css(product_page_productinfo_path),
      "Expect to find the css-element (#{product_page_productinfo_path}) but the page with the url #{current_url} has no such element"
  # expect page has css of productrecommodations
  expect(page).to have_css(product_page_productrecommodations_path),
      "Expect to find the css-element (#{product_page_productrecommodations_path}) but the page with the url #{current_url} has no such element"  
  # expect page has css of product_configuration
  expect(page).to have_css(product_page_productlast_path),
      "Expect to find the css-element (#{product_page_productlast_path}) but the page with the url #{current_url} has no such element"
end

When(/^I press the remember\-button$/) do
  #define path of button
  product_page_rememberbutton_path = csspathes.product_page_rememberbutton_path #pulsiva: .cart--add-to-list
  #find button
  element = page.find(product_page_rememberbutton_path)
  #click button
  element.click
end

Then(/^there should see a hint on the note\-button$/) do
  #define path of symbol
  product_page_heart_badge_path = csspathes.product_page_heart_badge_path
  #expect csspath of symbol
  expect(page).to have_css(product_page_heart_badge_path),
      "Expect to find the css-element (#{product_page_heart_badge_path}) but the page with the url #{current_url} has no such element"
end

When(/^I press the compare\-button$/) do
  #define path of button
  product_page_comparebutton_path = csspathes.product_page_comparebutton_path
  #find button
  element = page.find(product_page_comparebutton_path)
  #click button
  element.click
end

Then(/^there should see the link to compare$/) do
  #define path of symbol
  product_page_compareicon_path = csspathes.product_page_compareicon_path
  #expect csspath of symbol
  expect(page).to have_css(product_page_compareicon_path),
      "Expect to find the css-element (#{product_page_compareicon_path}) but the page with the url #{current_url} has no such element"
end

When(/^I click the button to rate for the article$/) do
  #define path of symbol
  product_page_rate_ratebutton_path = csspathes.product_page_rate_ratebutton_path
  #expect csspath of symbol
  element = page.find(product_page_rate_ratebutton_path)
  element.click
end

When(/^I change in the tab to the rating$/) do
  #define path of tab
  product_page_rate_tab_menu = 'div.tab-menu--product.js--tab-menu > div.tab--navigation > a'
  product_page_rate_tab_rateflag = ':nth-child(2)'
  #click tab for rate
  element = page.find(product_page_rate_tab_menu+product_page_rate_tab_rateflag)
  element.click
end

Then(/^there should be a form for rating the article$/) do
  #define path of form
  product_page_rate_form = '#detail--product-reviews > div.review--form-container > form'
  #find path
  page.find(product_page_rate_form)
  puts "found form to rate"
end

When(/^I change in the tab to the customer viewed articles$/) do
  #define path of tab
  product_page_viewed_tab_menu = case
    when ENV['SHOP'].match(/export/) && ENV['COUNTRY'].match(/[a-z]{2}/) then 'div.tab-menu--cross-selling.js--tab-menu > ul > a:nth-child(3)'
    else                                                                      'div.tab-menu--cross-selling.js--tab-menu > div.tab--navigation > a'
  end
  
  product_page_viewed_tab_otherCustomer = ':nth-child(3)'
  #click tab for rate
  element = page.find(product_page_viewed_tab_menu+product_page_viewed_tab_otherCustomer)
  element.click
end

Then(/^there should be a box of some articles$/) do
  product_page_rate_form = 'div.tab-menu--cross-selling.js--tab-menu > div.tab--container-list > div.tab--container.has--content.is--active > div.tab--content.content--also-viewed'
  #find path
  page.find(product_page_rate_form)
  puts "found container list"
end