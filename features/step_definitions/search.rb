#search
When(/^I am searching for a product by entering the sku in the searchfield$/) do
  #variables:values  
  sku = article.sku
  printValue(:sku, binding)
  
  #variables:path
  search_searchfield_path = csspathes.search_searchfield_path
  search_searchbutton_path = csspathes.search_searchbutton_path
  #actions
  find(search_searchfield_path).set(sku)
  search_searchbutton = find_secure(search_searchbutton_path)
  search_searchbutton.click()
  puts "clicked button of search"
end

Then(/^I should be on the detailsite of the related product$/) do
  #variables:value
  name = article.name
  search_product_name = name.upcase
  
  #variables:path
  search_product_name_path = csspathes.search_product_name_path
  
  #actions
  element=page.find(search_product_name_path)
  
  #convert string into downcase for comparing
  element_text = element.text
  element_text_up = element_text.upcase
  
  #expections
  expect(element_text_up).to include(search_product_name),
      "expected to find #{search_product_name} but just #{element_text_up} appears"
  puts "found '#{search_product_name}'"
end

When(/^I am searching for a product by entering the productnumber in the searchfield$/) do
  #variables:values  
  productnumber = article.productnumber
  printValue(:productnumber, binding)
  
  #variables:path
  search_searchfield_path = csspathes.search_searchfield_path
  search_searchbutton_path = csspathes.search_searchbutton_path
  #actions
  find(search_searchfield_path).set(productnumber)
  search_searchbutton = page.find(search_searchbutton_path)
  search_searchbutton.click()
  puts "clicked button of search"
end

Then(/^I should see my product on the results of my search$/) do
  #variables:value
  name = article.name
  search_name = name.upcase
  
  #variables:path
  search_results_path = csspathes.search_results_path
  
  #actions
  page.find(search_results_path)
  element = page.find(search_results_path)
  element_text = element.text.upcase
  
  #expections
  expect(element_text).to include(search_name),
      "expected to find #{name} in my results but just #{element_text} appears"
  puts "found '#{name}'"
end

When(/^I am searching for products by entering the productname in the searchfield$/) do
  name = article.name
  printValue(:name, binding)
  
  #variables:path
  search_searchfield_path = csspathes.search_searchfield_path
  search_searchbutton_path = csspathes.search_searchbutton_path
  #actions
  find(search_searchfield_path).set(name)
  search_searchbutton = page.find(search_searchbutton_path)
  search_searchbutton.click()
  puts "clicked button of search"
end


When(/^I click on the button of searching$/) do
  search_searchbutton_mobile_path = ".entry--search > a > i"
  
  page.find(search_searchbutton_mobile_path)
  element = page.find(search_searchbutton_mobile_path)
  element.click
end
