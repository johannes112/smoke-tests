#product_cart
Given(/^the product cart contains an article$/) do
  product_cart_article_path = 'div.panel.has--border'
  
  step("I add an article to my cart by ajax")
  step("I am on the product cart page")
  
  #chech if cart contains an article
  expect(page).to have_css(product_cart_article_path),
    "Expected find an article in my cart but there is no csspath of #{product_cart_article_path}"
end


And(/^I add an article to my cart manually$/) do
  step("I am on the product page of an article")
  step("I add an article to the product cart by clicking the button to push it into the cart")
end

And(/^I add an article to my cart by ajax$/) do
  website_url = settings.urlHttps
  sku = article.sku
  amount = article.amount
  #assembling url:
  ajax_params_function = "checkout/ajaxAddArticleCart?callback=jQuery"
  ajax_params_sku = "&sAdd=#{sku}"
  ajax_params_amount = "&sQuantity=#{amount}"
  ajax_url = "#{website_url}#{ajax_params_function}#{ajax_params_sku}#{ajax_params_amount}"
  puts "add article: #{ajax_url}"
  visit(ajax_url)
end

When(/^I click on the button to continue shopping$/) do
  product_cart_button_continue_path = "a.btn.btn--checkout-continue.is--secondary.left.continue-shopping--action.is--icon-left.is--large"
  
  element = page.find(product_cart_button_continue_path)
  element.click
  puts "clicked button for continue"
end

Then(/^I will see the back on the productsite$/) do
  step("I should be on the detailsite of the related product")
end


Given(/^I am on the product cart page$/) do
  website_url = settings.urlHttps
  url_part_product_cart = 'checkout/cart'
  url = "#{website_url}#{url_part_product_cart}"
  
  visit(url)
  puts "went to #{url}"
  expect(current_url).to include(url_part_product_cart),
    "Expected url contains #{url_part_product_cart} but i am on #{current_url}"
end

When(/^I remove this article from the product cart$/) do
  product_cart_remove_article_path = "div.panel--td.column--actions > a"
  
  element = page.find(product_cart_remove_article_path)
  element.click
  puts "clicked icon"
end

Then(/^the cart should not contain this article$/) do
  product_cart_article_path = 'div.panel.has--border'
  
  expect(page).to have_no_css(product_cart_article_path)
     "expected not to find css (#{product_cart_article_path}), but it is still not available"
end

Then(/^I should see all necessary informations about this article within the product list of the product cart$/) do
  product_cart_article_details_path = "div.table--tr.block-group.row--product.is--last-row"
  product_cart_article_price_path = "div.basket--footer > ul"
  product_cart_article_voucher_path = "div.panel--td.column--quantity.is--align-right"
  
  expect(page).to have_css(product_cart_article_details_path),
     "expected to see here details to the article in my cart in the css (#{product_cart_article_details_path}), but it does not appear!"
  puts "found product details"
  expect(page).to have_css(product_cart_article_price_path),
     "expected to see here about each costt of the price for the article on my cart in the css (#{product_cart_article_price_path}), but it does not appear!"
  puts "found product prices"
  expect(page).to have_css(product_cart_article_voucher_path),
     "expected to have here the possibility to enter my code into a field on my cart in the css (#{product_cart_article_voucher_path}), but it does not appear!"
  puts "found field for voucher"
end

When(/^I navigate to the checkout by clicking the button which navigates to the checkout$/) do
  product_cart_button_checkout_path = "a.btn.btn--checkout-proceed.is--primary.right.is--icon-right.is--large"#there are 2 buttons
  
  #check for first button
  element = page.find(product_cart_button_checkout_path, match: :first)
  element.click
  puts "clicked button"
end

Then(/^I should be on the checkout\-page$/) do
  url_checkout_confirm = "checkout/confirm"
  product_cart_checkout_steps_path = "div.steps--container.container"
  
  expect(page).to have_css(product_cart_checkout_steps_path),
     "expected to find here the icons of each step for checkout (#{product_cart_checkout_steps_path}), but they do not appear!"
  expect(current_url).to include(url_checkout_confirm),
     "expected that the current_url contains #{url_checkout_confirm} but it is only #{current_url}"
end

When(/^I activate the function for voucher$/) do
  product_cart_voucher_checkbox_path = "#add-voucher--trigger"
  
  element = page.find(product_cart_voucher_checkbox_path)
  element.click
  puts "clicked checkbox"
end

When(/^I enter some code into the optional field$/) do
  code_voucher = '266233'
  product_cart_voucher_input_path = "form.table--add-voucher.add-voucher--form > div > input"
  product_cart_voucher_button_path = "form.table--add-voucher.add-voucher--form > div > button"
  
  element = page.find(product_cart_voucher_input_path)
  element.set(code_voucher)
  puts "entered #{code_voucher}"
  element = page.find(product_cart_voucher_button_path)
  element.click
  puts "clicked add-button"
end

Then(/^there should be the voucher-action in the url$/) do
  url_voucher = 'addVoucher/sTargetAction'
  
  expect(current_url).to include(url_voucher),
     "expected that the current url (current_url includes #{url_voucher}, but it isn't so"
end

When(/^I enter a sku into the integrated field on the cart$/) do
  sku = article.sku
  product_cart_order_sku_path = "div.panel.has--border > div > form > input"
  product_cart_order_button_path = "div.panel.has--border > div > form > button"
  
  element = page.find(product_cart_order_sku_path)
  element.set(sku)
  element = page.find(product_cart_order_button_path)
  element.click
end

Then(/^I will see the add-action in the url$/) do
  url_add = 'addArticle/sTargetAction'
  
  expect(current_url).to include(url_add),
     "expected that the current_url contains #{url_add} but it is only #{current_url}"
end