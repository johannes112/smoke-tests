#search
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
  puts "clicked button of search"
end

Then(/^I should be on the detailsite of the related product$/) do
  #variables:value
  name = article.name
  search_product_name = name
  
  #variables:path
  search_product_name_path = "header > div > h1"
  
  #actions
  element=page.find(search_product_name_path)
  
  #expections
  expect(element.text).to include(search_product_name),
      "expected to find #{search_product_name} but it does not appears"
  puts "found '#{search_product_name}'"
end
        