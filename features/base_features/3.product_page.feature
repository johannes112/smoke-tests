# language: en
@pulsiva
@chefworks
@product_page
Feature: product page

	As a customer,
	I want to have the opportunity to use the feaatures of the product page

  Background: 
    Given I am on the product page of an article
  
  @vega
  @hotelwaesche
  @export
  @product_page_note
  Scenario: notice an article
	  When I press the remember-button
	  Then there should see a hint
	
	@vega
	@hotelwaesche
  @export
  @product_page_compare	
  Scenario: compare an article
	  When I press the compare-button
	  Then there should see the icon to compare

  @vega
  @hotelwaesche
  @export
  @product_page_add
  Scenario: add an article to the product cart by clicking button 
    When I add an article to the product cart by clicking the button to push it into the cart
    Then I should see the cart on the right of the site

  @vega
  @hotelwaesche
  @export
  @product_page_data
  Scenario: display products with data
	  Then I should see all necessary elememts for getting more informations about this article

  @export
  @product_page_rate
  Scenario: rate an article with tab
	  When I change in the tab to the rating
	  Then there should be a form for rating the article
	  
	@export
	@product_page_rate
  Scenario: rate an article with button
	  When I click the button to rate for the article
	  Then there should be a form for rating the article
	
	@vega 
	@product_page_suggest
  Scenario: customer seen article
	  When I change to the tab of the customer viewed articles
	  Then there should be a box of some articles