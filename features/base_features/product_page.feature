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

  @test_p
  Scenario: add an article to the product cart by clicking button 
    When I add an article to the product cart by clicking the button to pull it into the cart
	Then I should see the cart on the right of the site

  Scenario: display products with data
	Then I should see all necessary elememts for getting more informations about this article