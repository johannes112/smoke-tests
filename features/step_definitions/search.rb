Given(/^I am on the website$/) do
  #variables:path
  website_url = settings.urlHttps
  puts "go to #{website_url}"
  
  #actions
  visit(website_url)
  
  #expections
  expect(current_url).to eq(website_url),
    "Expected to be at #{website_url} but i am on #{current_url}"
end

When(/^I am for an product by entering the sku in the searchfield$/) do
  #variables:values  
  sku = article.sku
  printValue(:sku, binding)
  
  #search_productsku='21782'#'93876'
  
  #variables:path
  search_searchfield_path='li.navigation--entry.entry--search > form > input'#'#search'
  search_searchbutton_path='li.navigation--entry.entry--search > form > button'#'#search_mini_form > div > button'

  #actions
  find(search_searchfield_path).set(sku)
  search_searchbutton = page.find(search_searchbutton_path)
  search_searchbutton.click()
end

Then(/^I should be on the detailsite of the related product$/) do
  #variables:value
  name = article.name
  search_product_name = name
  
  #variables:path
  search_product_name_path='body > div.page-wrap > section > div > div.content--wrapper > div > header > div > h1'#div.product-name > h1'
  
  #actions
  element=page.find(search_product_name_path)
  
  #expections
  expect(element.text).to include(search_product_name)
end
        