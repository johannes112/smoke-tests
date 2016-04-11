@product_page
Feature: product page

	As a customer,
	I want to have the opportunity to use the feaatures of the product page

  Background: 
    Given I am on the product page of an article


  Scenario: notice an article
	  When I press the remember-button
	  Then there should see a hint on the note-button
		
  Scenario: compare an article
	  When I press the compare-button
	  Then there should see the link to compare

  Scenario: add an article to the product cart by clicking button 
    When I add an article to the product cart by clicking the button to pull it into the cart
	  Then I should see the cart on the right of the site

  Scenario: display products with data
	  Then I should see all necessary elememts for getting more informations about this article

  Scenario: rate an article with tab
	  When I change in the tab to the rating
	  Then there should be a form for rating the article
	  
	@pp_test	  
  Scenario: rate an article with button
	  When I click the button to rate for the article
	  Then there should be a form for rating the article
	  
  Scenario: customer seen article
	  When I change in the tab to the customer viewed articles
	  Then there should be a box of some articles