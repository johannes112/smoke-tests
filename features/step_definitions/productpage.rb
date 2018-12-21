#productpage
Then("I should see elements of pdp") do
  productpage_productbox_path = ".ProductSelectionBox"
  productpage_productbox_productname_path = ".MainProductArtikleNumber"
  productpage_productbox_dropdown_path = ".Dropdown"

  find_element_with_scrolling(productpage_productbox_path)
  find_element_with_scrolling(productpage_productbox_productname_path)
  element = find(productpage_productbox_productname_path)
  productname = element.text
  puts "> found: #{productname}"
  expect(productname.size).to be>(1)
  expect(page).to have_css(productpage_productbox_dropdown_path),
      "Expect to find the css-element (#{productpage_productbox_dropdown_path}) but the page with the url #{current_url} has no such element"
  puts "> dropdown menu exists"
end
