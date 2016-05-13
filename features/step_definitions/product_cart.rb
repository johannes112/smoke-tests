#product_cart
Given(/^the product cart contains an article$/) do
  step("I am on the product page of an article")
  step("I add an article to the product cart by clicking the button to push it into the cart")
end

Given(/^I am on the product cart page$/) do
  website_url = settings.urlHttps
  url_part_product_cart = 'checkout/cart'
  url = "#{website_url}#{url_part_product_cart}"
  p "URL: #{url}"
  visit(url)
  
  expect(current_url).to include(url_part_product_cart),
    "Expected url contains #{url_part_product_cart} but i am on #{current_url}"
  
end