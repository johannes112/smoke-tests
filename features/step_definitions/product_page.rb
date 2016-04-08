#product_page
Given(/^I am on the product page of an article$/) do
  step("I am on the website")
  step("I am for an product by entering the sku in the searchfield")
  step("I should be on the detailsite of the related product")
end

When(/^I add an article to the product cart by clicking the button to pull it into the cart$/) do
  #var
  product_page_buybutton_path = 'div.product--buybox.block > div > form > div > button'
  
  page.find(product_page_buybutton_path)
  element = page.find(product_page_buybutton_path)
  element.click
end

Then(/^I should see the cart on the right of the site$/) do
  product_page_infobox_path = '.is--active.is--open'
  
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
  product_cart_productinfo_path = 'div.panel--td.table--content'
  
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
  product_page_productname_path = 'header > div > h1'
  # define path of product_picture
  product_page_productpicture_path = 'div.product--image-container.image-slider.product--image-zoom'
  # define path of product_configuration
  product_page_productconfig_path = 'div.product--buybox.block'
  # define path of product_information
  product_page_productinfo_path = 'div.tab-menu--product.js--tab-menu'
  # define path of product_recommodations
  product_page_productrecommodations_path = 'div.tab-menu--cross-selling.js--tab-menu'
  # define path of product_information
  product_page_productlast_path = 'div.last-seen-products'
  
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
  product_page_rememberbutton_path = 'div.product--buybox.block > div > nav > a.action--link.link--notepad'
  #find button
  element = page.find(product_page_rememberbutton_path)
  #click button
  element.click
end

Then(/^there should see a hint on the note\-button$/) do
  #define path of symbol
  product_page_heart_badge_path = 'li.navigation--entry.entry--notepad > a > span'
  #expect csspath of symbol
  expect(page).to have_css(product_page_heart_badge_path),
      "Expect to find the css-element (#{product_page_heart_badge_path}) but the page with the url #{current_url} has no such element"
end

When(/^I press the compare\-button$/) do
  #define path of button
  product_page_comparebutton_path = 'div.product--buybox.block > div > nav > a.action--link.action--compare'
  #find button
  element = page.find(product_page_comparebutton_path)
  #click button
  element.click
end

Then(/^there should see the link to compare$/) do
  #define path of symbol
  product_page_compareicon_path = 'div.navigation--entry.entry--compare > i'
  #expect csspath of symbol
  expect(page).to have_css(product_page_compareicon_path),
      "Expect to find the css-element (#{product_page_compareicon_path}) but the page with the url #{current_url} has no such element"
end
