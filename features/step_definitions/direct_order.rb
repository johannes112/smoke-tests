#direct_ordering
#only for pulsiva
When(/^I click the button for direct ordering$/) do
  direct_ordering_button_path = csspathes.direct_ordering_button_path 
  
  page.find(direct_ordering_button_path)
  element = page.find(direct_ordering_button_path)
  element.click
  puts "-> clicked button"
end

When(/^I send my inserted data with the form$/) do
  sku = article.sku

  direct_ordering_form_sku_path = csspathes.direct_ordering_form_sku_path 
  direct_ordering_form_button_path = csspathes.direct_ordering_form_button_path 
  
  page.find(direct_ordering_form_sku_path)
  element = page.find(direct_ordering_form_sku_path)
  element.set("#{sku}\t")
  puts "-> inserted #{sku}"
  
  page.find(direct_ordering_form_button_path)
  element = page.find(direct_ordering_form_button_path)
  element.click
  puts "-> clicked button"
end

Then(/^I should find the article in the sidebar$/) do
  direct_ordering_sidebar_item_path = csspathes.direct_ordering_sidebar_item_path 
  
  expect(page).to have_css(direct_ordering_sidebar_item_path),
     "expected that i can see the product on the cart of my sidebar, but i can not find #{direct_ordering_sidebar_item_path}"
  puts "> found item"
end

###to do: test to renew form, looking for sku in cart 
